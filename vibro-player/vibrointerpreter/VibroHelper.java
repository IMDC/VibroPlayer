/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package vibrointerpreter;

import java.io.File;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sound.midi.*;
import javax.sound.sampled.AudioFormat;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.DataLine;
import javax.sound.sampled.LineUnavailableException;
import javax.sound.sampled.SourceDataLine;
/**
 *
 * @author imdc
 */
public class VibroHelper{
    static float[] keyHertz = new float[127];
    static File file; 
    static int tempo, currThread, numOutputs=8, MAX=17, minKey=36, maxKey=96;
    static Sequence sequence;
    static boolean isPlaying =false;
    static VibroGUI GUI;
    static int[] outputValues = new int[MAX], volumes = new int[MAX];
    static int arrangement = 0;//0=All 8, 2=Top 4, 1=Bottom 4
    
    public VibroHelper(VibroGUI gui){
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
            if(GUI.outToDevice.isSelected() && GUI.driverLoaded ){
                //activate output manager
                Thread thread3 = new Thread(outputManager);                   
                thread3.start();                                       
            }
            long curTick = 0, prevTick=0;
            int NOTE_ON_START = 0x90;
            int NOTE_ON_END = 0x9F;
            int NOTE_OFF_START = 0x80;
            int NOTE_OFF_END = 0x8F;
            String[] NOTE_NAMES = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"};
            sequence = MidiSystem.getSequence(file);
            
            //create key to hertz conversions.
            for (int x = 0; x < 127; ++x){
                keyHertz[x] = (float) (440*(Math.pow(2,(x-69)/12.0)));
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
                            int outputNum = getOutputNum(key);
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
                            int outputNum = getOutputNum(key);
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
        VibroHelper.file = file; 
        VibroHelper.tempo = tempo;
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
                    Logger.getLogger(VibroHelper.class.getName()).log(Level.SEVERE, null, ex);
                }
            }           
        }
    };
    
    //Manage output to output device
    static Runnable outputManager = new Runnable(){
        public void run(){
            int thisThread = currThread;
            while(thisThread == currThread){ 
                float[] sampleWave = new float[GUI.listener.getBufferSize()/2];
                try {
                    for(int i=0; i<numOutputs; i++){
                        for ( int k = 0; k < GUI.listener.getBufferSize()/2; k++ ) {
                            sampleWave[k] = (float) Math.sin ( outputValues[i+1] * Math.PI * k * 440.0 / GUI.listener.getSampleRate() 
                                    * GUI.sliders.get(i).getValue()/100  *GUI.volumeSlider.getValue()/100);
                        }
                        if (outputValues[i+1]!=0) GUI.listener.output ( i, sampleWave );
                    }               
                    Thread.sleep(1000);
                } catch (InterruptedException ex) {
                    Logger.getLogger(VibroHelper.class.getName()).log(Level.SEVERE, null, ex);
                }
                catch (BufferOverflowException e) {
                    //Logger.getLogger(MidiHelper.class.getName()).log(Level.WARNING, null, e);
                    System.out.println("Warning Buffer overload ;"+GUI.listener.getBufferSize()+"\n");
                    try {
                        GUI.listener.wait(1000);
                    } catch (InterruptedException ex) {
                        Logger.getLogger(VibroHelper.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        }
    };
    
    public static int getOutputNum(int key){
        if(numOutputs == 8){  
            if(GUI.enableBottom.isSelected())arrangement=1;
            else if(GUI.enableTop.isSelected())arrangement=2;
            else arrangement=0;
            
            if(keyHertz[key]>1480 && keyHertz[key]<4186){               
                if(arrangement==1)return 8;
                if(arrangement==2)return 4;
                return 8;
            }
            if(keyHertz[key]>660 && keyHertz[key]<1480){
                if(arrangement==1)return 8;
                if(arrangement==2)return 4;
                return 7;
            }
            if(keyHertz[key]>467 && keyHertz[key]<660){
                if(arrangement==1)return 7;
                if(arrangement==2)return 3;
                return 6;
            }
            if(keyHertz[key]>311 && keyHertz[key]<466){
                if(arrangement==1)return 7;
                if(arrangement==2)return 3;
                return 5;
            }
            if(keyHertz[key]>220 && keyHertz[key]<311){
                if(arrangement==1)return 6;
                if(arrangement==2)return 2;
                return 4;
            }
            if(keyHertz[key]>145 && keyHertz[key]<220){
                if(arrangement==1)return 6;
                if(arrangement==2)return 2;
                return 3;
            }
            if(keyHertz[key]>69 && keyHertz[key]<145){
                if(arrangement==1)return 5;
                if(arrangement==2)return 1;
                return 2;
            }
            if(keyHertz[key]>27.5 && keyHertz[key]<69){
                if(arrangement==1)return 5;
                if(arrangement==2)return 1;
                return 1;
            }
        }
        return (key-minKey)/((maxKey-minKey)/numOutputs)+1;
    }
    
    public void playWave(int channel, float[][]data){     
        Runnable playSound = new Runnable(){
            public void run(){
                final int BUFFER_SIZE = 12800;
                File soundFile = null;
                AudioInputStream audioStream = null;
                AudioFormat audioFormat;
                SourceDataLine sourceLine = null;  
                int chan=channel;
                //set output channels according to specified arrangements
                if(GUI.enableBottom.isSelected())arrangement=1;
                else if(GUI.enableTop.isSelected())arrangement=2;
                else arrangement=0;
                if(arrangement==1)chan=((channel+1)/2)+4;
                else if(arrangement==2)chan=(channel+1)/2;
                
                isPlaying=true;               
                
                try {
                    soundFile = new File("temp"+channel+".wav");
                    audioStream = AudioSystem.getAudioInputStream(soundFile);
                } catch (Exception e) {
                    e.printStackTrace();
                    System.exit(1);
                }
                
                //Set audio format
                audioFormat = audioStream.getFormat();
                float sampleRate = audioFormat.getSampleRate();
                int sampleSizeInBits = audioFormat.getSampleSizeInBits();
                int channels = audioFormat.getChannels();
                boolean signed = true;
                boolean bigEndian = false;
                audioFormat =  new AudioFormat(sampleRate, 
                  sampleSizeInBits, channels, signed, bigEndian);

                DataLine.Info info = new DataLine.Info(SourceDataLine.class, audioFormat);
                
                if ( !AudioSystem.isLineSupported ( info ) ) {
                    // This is the PCM format we want to transcode to.
                    // The parameters here are audio format details that you
                    // shouldn't need to understand for casual use.
                    AudioFormat pcm = new AudioFormat ( audioFormat.getSampleRate(), 16, audioFormat.getChannels(), true, false);

                    // Get a wrapper stream around the input stream that does the
                    // transcoding for us.
                    audioStream = AudioSystem.getAudioInputStream ( pcm, audioStream );

                    // Update the format and info variables for the transcoded data
                    audioFormat = audioStream.getFormat();
                    info = new DataLine.Info ( SourceDataLine.class, audioFormat );
                }
                
                try {
                    sourceLine = (SourceDataLine) AudioSystem.getLine(info);
                    sourceLine.open(audioFormat);
                } catch (LineUnavailableException e) {
                    e.printStackTrace();
                    System.exit(1);
                } catch (Exception e) {
                    e.printStackTrace();
                    System.exit(1);
                }

                sourceLine.start();                
                
                int delay = 3;//wave audio/device delay (by framesize
                int nBytesRead = 0;
                int numFramesRead = 0;
                int bytesPerFrame = audioStream.getFormat().getFrameSize();
                int totalFramesRead = 0;
                byte[] abData = new byte[BUFFER_SIZE];
                float[] sampleWave = new float[GUI.listener.getBufferSize()/numOutputs];               
                while (nBytesRead != -1 && isPlaying) {
                    try {
                        nBytesRead = audioStream.read(abData, 0, abData.length);

                        // Calculate the number of frames actually read.
                        numFramesRead = nBytesRead / bytesPerFrame;
                        totalFramesRead += numFramesRead;
                        
                        //visualiser
                        outputValues[chan]= (Math.abs(abData[numFramesRead]) * GUI.sliders.get(chan-1).getValue()/100  *GUI.volumeSlider.getValue()/100);

                        //output to device
                        if(GUI.outToDevice.isSelected() && GUI.driverLoaded ){                        
                            for ( int k = 0; k < GUI.listener.getBufferSize()/numOutputs; k++ ) {
                                sampleWave[k] = ( data[channel][totalFramesRead-(numFramesRead*delay)+k]  * GUI.sliders.get(chan-1).getValue()/100  *GUI.volumeSlider.getValue()/100);
                            }                      
                            GUI.listener.output ( chan-1, sampleWave );
                        }


                    } catch (IOException e) {
                        e.printStackTrace();
                    } catch (ArrayIndexOutOfBoundsException a) {
                        System.out.println("Delay of "+delay);
                    }
                    if (nBytesRead >= 0) {
                        @SuppressWarnings("unused")
                        int nBytesWritten = sourceLine.write(abData, 0, nBytesRead);
                    }               
                }
                
                sourceLine.drain();
                sourceLine.close();
                isPlaying = false;
                currThread++;
            }
        };        
        Thread playS = new Thread(playSound);
        playS.start();
        Thread thread = new Thread(slideAdjuster);
        thread.start();
        
    }
        
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
            for (int x = 0; x < 127; ++x){
                keyHertz[x] = (float) (440*(Math.pow(2,(x-69)/12.0)));
            }   
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
                
                if(GUI.outToDevice.isSelected() && GUI.driverLoaded ){
                    //activate output manager
                    Thread thread3 = new Thread(outputManager);                   
                    thread3.start();                                       
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
                        int outputNum = getOutputNum(key);
                        int octave = (key / 12)-1;
                        int note = key % 12;
                        String noteName = NOTE_NAMES[note];
                        int velocity = sm.getData2();
                        GUI.outText.setText("Note:"+noteName+" \tKey:"+key+" \tHertz:"+keyHertz[key]);
                        velocity*=(newVolumeAll/100)*(newVolume[outputNum]/100);
                        outputValues[0]=velocity;
                        outputValues[outputNum]=velocity;    
                        System.out.println("Note on, " + noteName + octave + " key=" + key + " velocity: " + velocity + "  Hz:"+keyHertz[key]);
                        channels[sm.getChannel()].noteOn( key, velocity );
                    } 
                    //when a key is released
                    else if (sm.getCommand() >= NOTE_OFF_START && sm.getCommand() <= NOTE_OFF_END) {
                        int key = sm.getData1();
                        int outputNum =getOutputNum(key);
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
                Logger.getLogger(VibroHelper.class.getName()).log(Level.SEVERE, null, ex);
            }           
        }
        public void close() {} 
    }
}
