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
public class MidiHelper{
    static float[] keyHertz = new float[127];
    static File file; 
    static int tempo, currThread, numOutputs, MAX=17, minKey=36, maxKey=96;
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
    
    //Manage output to output device
    static Runnable outputManager = new Runnable(){
        public void run(){
            int thisThread = currThread;
            while(thisThread == currThread){ 
                float[] sampleWave = new float[GUI.listener.getBufferSize()];
                try {
                    for(int i=0; i<numOutputs; i++){
                        for ( int k = 0; k < GUI.listener.getBufferSize()/2; k++ ) {
                            sampleWave[k] = (float) Math.sin ( outputValues[i+1] * Math.PI * k * 440.0 / GUI.listener.getSampleRate() );
                        }
                        if (outputValues[i+1]!=0) GUI.listener.output ( i, sampleWave );
                    }               
                    Thread.sleep(1000);
                } catch (InterruptedException ex) {
                    Logger.getLogger(MidiHelper.class.getName()).log(Level.SEVERE, null, ex);
                }
                catch (BufferOverflowException e) {
                    //Logger.getLogger(MidiHelper.class.getName()).log(Level.WARNING, null, e);
                    System.out.println("Warning Buffer overload ;"+GUI.listener.getBufferSize()+"\n");
                    try {
                        //GUI.listener.bufferSizeChanged(2048);
                        GUI.listener.wait(1000);
                    } catch (InterruptedException ex) {
                        Logger.getLogger(MidiHelper.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        }
    };
    
    public int getOutputNum(int key){
        if(numOutputs == 8){
            if(keyHertz[key]==40){
                return 1;
            }
            else if(keyHertz[key]==56){
                return 2;
            }
            else if(keyHertz[key]==78.4){
                return 3;
            }
            else if(keyHertz[key]==109.76){
                return 4;
            }
            else if(keyHertz[key]==153.66){
                return 5;
            }
            else if(keyHertz[key]==215.13){
                return 6;
            }
            else if(keyHertz[key]==301.18){
                return 7;
            }
            else if(keyHertz[key]==421.65){
                return 8;
            }
        }
        return (key-minKey)/((maxKey-minKey)/numOutputs)+1;
    }
    
    public static void playWave(File file,String icon){
        Runnable playSound = new Runnable(){
            public void run(){
                final int BUFFER_SIZE = 128000;
                File soundFile = null;
                AudioInputStream audioStream = null;
                AudioFormat audioFormat;
                SourceDataLine sourceLine = null;
                Thread thread = new Thread(slideAdjuster);
                thread.start();
                Thread out = new Thread(outputManager);
                out.start();
                isPlaying=true;
                
                try {
                    soundFile = file;
                } catch (Exception e) {
                    e.printStackTrace();
                    System.exit(1);
                }

                try {
                    audioStream = AudioSystem.getAudioInputStream(soundFile);
                } catch (Exception e){
                    e.printStackTrace();
                    System.exit(1);
                }

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

                int nBytesRead = 0;
                int numFramesRead = 0;
                int bytesPerFrame = audioStream.getFormat().getFrameSize();
                int totalFramesRead = 0;
                byte[] abData = new byte[BUFFER_SIZE];
                while (nBytesRead != -1) {
                    try {
                        nBytesRead = audioStream.read(abData, 0, abData.length);


                        // Calculate the number of frames actually read.
                        numFramesRead = nBytesRead / bytesPerFrame;
                        totalFramesRead += numFramesRead;

                        //visualiser
                        String outTest="";
                        for(int i=0; i<Math.abs(abData[numFramesRead]);i++){
                            outputValues[1]= Math.abs(abData[numFramesRead]);
                        }
                        System.out.println(outTest+abData[numFramesRead]);


                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    if (nBytesRead >= 0) {
                        @SuppressWarnings("unused")
                        int nBytesWritten = sourceLine.write(abData, 0, nBytesRead);
                    }               
                }
                sourceLine.drain();
                sourceLine.close();
            }
        };
        Thread playS = new Thread(playSound);
        playS.start();
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
                        
                        //generates a sin wave
                        if ( GUI.driverLoaded ) {
                            float[] sampleWave = new float[GUI.listener.getBufferSize()];
                            for ( int k = 0; k < GUI.listener.getBufferSize(); k++ ) {
                                sampleWave[k] = (float) Math.sin ( Math.PI * k * 8000 / GUI.listener.getSampleRate() );
                            }

                            //set the channel
                            int channel = getOutputNum(key);

                            //outputs the sound
                            //GUI.listener.output ( channel, sampleWave );
                            
                            System.out.println("Note on, " + noteName + octave + " key=" + key + " velocity: " + velocity + "  Hz:"+keyHertz[key] + "  channel: " + channel);
                        }
                                                                
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
                Logger.getLogger(MidiHelper.class.getName()).log(Level.SEVERE, null, ex);
            }           
        }
        public void close() {}       
    }
}
