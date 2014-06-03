/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package vibrointerpreter;

import java.io.File;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sound.midi.*;
/**
 *
 * @author imdc
 */
public class MidiHelper{
    static float[] keyHertz = new float[127];
    static File file; 
    static int tempo, currThread, numOutputs, MAX=17;
    static Sequence sequence;
    static boolean isPlaying =false;
    static VibroGUI GUI;
    static int[] outputValues = new int[MAX], volumes = new int[MAX];
    
    public MidiHelper(VibroGUI gui){
        GUI=gui;        
    }
    
    //This thread reads a MIDI file and plays each note using a java synthesizer
    //The note information is then displayed on the vibroGUI
    static Runnable midiReader = new Runnable(){
        public void run(){
            try{  
            //initialize variables 
            Synthesizer synth = MidiSystem.getSynthesizer();
            synth.open();
            MidiChannel[] channels = synth.getChannels();
            int thisThread = currThread;
            isPlaying = true;
            Thread thread = new Thread(slideAdjuster);
            thread.start();
            long curTick = 0, prevTick=0;
            int NOTE_ON_START = 0x90;
            int NOTE_ON_END = 0x9F;
            int NOTE_OFF_START = 0x80;
            int NOTE_OFF_END = 0x8F;
            String[] NOTE_NAMES = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"};
            sequence = MidiSystem.getSequence(file);
            
            //create key to hertz conversions.
            int a = 440; // a is 440 hz...
            for (int x = 0; x < 127; ++x){
               keyHertz[x] = (a / 32) * (2 ^ ((x - 9) / 12));
            }
            
            //Get each note, play the note, then set the respective output values 
            int trackNumber = 0;
            for (Track track :  sequence.getTracks()) {
                trackNumber++;
                System.out.println("Track " + trackNumber + ": size = " + track.size());
                System.out.println();
                for (int i=0; i < track.size(); i++) { 
                    MidiEvent event = track.get(i);
                    System.out.print("@" + event.getTick() + " ");
                    curTick = event.getTick();
                    MidiMessage message = event.getMessage();
                    if (message instanceof ShortMessage && (thisThread == currThread)) {
                        ShortMessage sm = (ShortMessage) message;                       
                        System.out.print("Channel: " + sm.getChannel() + " ");
                        //get the volume for each output channel from the GUI sliders
                        double newVolumeAll = GUI.volumeSlider.getValue();
                        double [] newVolume = new double[numOutputs+1];
                        for (int k=0; k < numOutputs; k++) {
                            newVolume[k+1]= GUI.sliders.get(k).getValue();
                        }
                        //When a key is on
                        if (sm.getCommand() >= NOTE_ON_START && sm.getCommand() <= NOTE_ON_END) {
                            //compute coresponding values
                            int key = sm.getData1();
                            int outputNum =key/(127/numOutputs)+1;
                            int octave = (key / 12)-1;
                            int note = key % 12;
                            String noteName = NOTE_NAMES[note];
                            int velocity = sm.getData2();
                            System.out.println("Note on, " + noteName + octave + " key=" + key + " velocity: " + velocity + "  Hz:"+keyHertz[key]);
                            GUI.outText.setText("Note:"+noteName+" \tKey:"+key+" \tHertz:"+keyHertz[key]);
                            velocity*=(newVolumeAll/100)*(newVolume[outputNum]/100);
                            outputValues[0]=velocity;
                            outputValues[outputNum]=velocity;
                            //play note
                            channels[sm.getChannel()].noteOn( key, velocity );    
                        } 
                        //when the key if off
                        else if (sm.getCommand() >= NOTE_OFF_START && sm.getCommand() <= NOTE_OFF_END) {
                            //compute coresponding values
                            int key = sm.getData1();
                            int outputNum =key/(127/numOutputs)+1;
                            int octave = (key / 12)-1;
                            int note = key % 12;
                            String noteName = NOTE_NAMES[note];
                            int velocity = sm.getData2();
                            System.out.println("Note off, " + noteName + octave + " key=" + key + " velocity: " + velocity);
                            velocity*=(newVolumeAll/100)*(newVolume[outputNum]/100);
                            outputValues[0]=velocity;
                            outputValues[outputNum]=0;
                            //stop playing note
                            channels[sm.getChannel()].noteOff( key);
                        } else {
                            System.out.println("Command:" + sm.getCommand());
                        }
                        //sleep for the duration of the note
                        TimeUnit.MILLISECONDS.sleep((curTick-prevTick)*tempo);
                        prevTick = curTick;
                    } else {
                        System.out.println("Other message: " + message.getClass());
                    }
                }

                System.out.println();
            } 
            isPlaying = false;
            }catch(Exception e){
                System.out.println("error: "+e.toString());
                isPlaying = false;
            }
        }
    };
    
    // initialize GUI volume bars then call midi reader to read the MIDI file
    public void translate(File file, int tempo){
        GUI.visualBar_volume.setMaximum(127);
        GUI.visualBar_volume.setMinimum(0);
        numOutputs = GUI.bars.size();
        for(int i=1; i<numOutputs; i++){
            GUI.bars.get(i).setMaximum(127);
            GUI.bars.get(i).setMinimum(0);
        }
        MidiHelper.file = file; 
        MidiHelper.tempo = tempo;
        currThread++;
        Thread thread = new Thread(midiReader);
        thread.start();      
    }   
    
    //Controller for GUI graphics
    static Runnable slideAdjuster = new Runnable(){
        public void run(){
            int thisThread = currThread;
            while(thisThread == currThread){                               
                for(int i=0; i<numOutputs; i++){
                    int curVal = GUI.bars.get(i).getValue();
                    if(outputValues[i] >= curVal){
                        GUI.bars.get(i).setValue(outputValues[i+1]);
                    }else{
                        GUI.bars.get(i).setValue(curVal-1);
                        outputValues[0]-=.1;
                    }
                }
                
                int curVal = GUI.visualBar_volume.getValue();
                if(outputValues[0] >= curVal){
                    GUI.visualBar_volume.setValue(outputValues[0]);
                }else{
                    GUI.visualBar_volume.setValue(curVal-1);
                    outputValues[0]-=.1;
                }
                if (!isPlaying) GUI.visualBar_volume.setValue(0);
                try {
                    Thread.sleep(10);
                } catch (InterruptedException ex) {
                    Logger.getLogger(MidiHelper.class.getName()).log(Level.SEVERE, null, ex);
                }
            }           
        }
    };
    
    //Method to initiate midi device transmition     
    public void midiKeyboard(){
        MidiDevice device;
        MidiDevice.Info[] infos = MidiSystem.getMidiDeviceInfo();
        for (int i = 0; i < infos.length; i++) {
            try {
                device = MidiSystem.getMidiDevice(infos[i]);
                System.out.println(infos[i]);
                //get all transmitters
                List<Transmitter> transmitters = device.getTransmitters();
                for(int j = 0; j<transmitters.size();j++) {
                    //create a new receiver
                    transmitters.get(j).setReceiver(
                            //using my own MidiInputReceiver
                            new MidiInputReceiver(device.getDeviceInfo().toString())
                    );
                }
                Transmitter trans = device.getTransmitter();
                trans.setReceiver(new MidiInputReceiver(device.getDeviceInfo().toString()));
                //open each device
                device.open();
                System.out.println(device.getDeviceInfo()+" Was Opened  READY!");
                //initialize volume bars and sliders
                GUI.visualBar_volume.setMaximum(127);
                GUI.visualBar_volume.setMinimum(0);
                numOutputs = GUI.bars.size();
                for(int j=1; j<numOutputs; j++){
                    GUI.bars.get(j).setMaximum(127);
                    GUI.bars.get(j).setMinimum(0);
                }
                Thread thread2 = new Thread(slideAdjuster);
                thread2.start();
            } catch (MidiUnavailableException e) {}
        }
    }
    
    //This class handles all messages received from the MIDI device
    class MidiInputReceiver implements Receiver {
        public String name;
        public MidiInputReceiver(String name) {
            this.name = name;
        }
        public void send(MidiMessage msg, long timeStamp) {    
            try {
                //create synthesizer for audio playback and initialize variables
                Synthesizer synth = MidiSystem.getSynthesizer();
                synth.open();
                MidiChannel[] channels = synth.getChannels();
                int NOTE_ON_START = 0x90;
                int NOTE_ON_END = 0x9F;
                int NOTE_OFF_START = 0x80;
                int NOTE_OFF_END = 0x8F;
                String[] NOTE_NAMES = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"};
                int a = 440; // a is 440 hz...
                for (int x = 0; x < 127; ++x){
                    keyHertz[x] = (a / 32) * (2 ^ ((x - 9) / 12));
                }
                
                if (msg instanceof ShortMessage){
                    ShortMessage sm = (ShortMessage) msg;
                    double newVolumeAll = GUI.volumeSlider.getValue();
                    double [] newVolume = new double[numOutputs+1];
                    for (int k=0; k < numOutputs; k++) {
                        newVolume[k+1]= GUI.sliders.get(k).getValue();
                    }
                    //When a key is pressed
                    if (sm.getCommand() >= NOTE_ON_START && sm.getCommand() <= NOTE_ON_END) {
                        int key = sm.getData1();
                        int outputNum =key/(127/numOutputs)+1;
                        int octave = (key / 12)-1;
                        int note = key % 12;
                        String noteName = NOTE_NAMES[note];
                        int velocity = sm.getData2();
                        System.out.println("Note on, " + noteName + octave + " key=" + key + " velocity: " + velocity + "  Hz:"+keyHertz[key]);
                        GUI.outText.setText("Note:"+noteName+" \tKey:"+key+" \tHertz:"+keyHertz[key]);
                        velocity*=(newVolumeAll/100)*(newVolume[outputNum]/100);
                        outputValues[0]=velocity;
                        outputValues[outputNum]=velocity;
                        
                        //generates a sin wave
                        float[] sampleWave = new float[52];
                        for ( int k = 0; k < 52; k++ ) {
                            sampleWave[k] = (float) Math.sin ( velocity * Math.PI * k * 440.0 / GUI.listener.getSampleRate() );
                        }
                        
                        //set the channel
                        int channel = -1;
                        
                        if ( key >= 36 && key < 44 ) {
                            channel = 0;
                        }
                        else if ( key >= 44 && key < 52 ) {
                            channel = 1;
                        }
                        else if ( key >= 52 && key < 60 ) {
                            channel = 2;
                        }
                        else if ( key >= 60 && key < 68 ) {
                            channel = 3;
                        }
                        else if ( key >= 68 && key < 76 ) {
                            channel = 4;
                        }
                        else if ( key >= 76 && key < 83 ) {
                            channel = 5;
                        }
                        else if ( key >= 83 && key < 90 ) {
                            channel = 6;
                        }
                        else if ( key >= 90 && key < 97 ) {
                            channel = 7;
                        }
                        
                        //outputs the sound
                        GUI.listener.output ( channel, sampleWave );
                        
                        
                        channels[sm.getChannel()].noteOn( key, velocity );
                    } 
                    //when a key is released
                    else if (sm.getCommand() >= NOTE_OFF_START && sm.getCommand() <= NOTE_OFF_END) {
                        int key = sm.getData1();
                        int outputNum =key/(127/numOutputs)+1;
                        int octave = (key / 12)-1;
                        int note = key % 12;
                        String noteName = NOTE_NAMES[note];
                        int velocity = sm.getData2();
                        System.out.println("Note off, " + noteName + octave + " key=" + key + " velocity: " + velocity);
                        velocity*=(newVolumeAll/100)*(newVolume[outputNum]/100);
                        outputValues[0]=velocity;
                        outputValues[outputNum]=0;
                        channels[sm.getChannel()].noteOff( key);
                    } 
                }
            } catch (MidiUnavailableException ex) {
                Logger.getLogger(MidiHelper.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        public void close() {}       
    }
}
