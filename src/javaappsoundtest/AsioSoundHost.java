/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import com.synthbot.jasiohost.AsioChannel;
import com.synthbot.jasiohost.AsioDriver;
import com.synthbot.jasiohost.AsioDriverListener;
import java.io.FileInputStream;
import java.util.HashSet;
import java.util.Set;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/**
 * 
 *
 * @author Rener Baffa da Silva
 */
public class AsioSoundHost implements AsioDriverListener {
    
    AsioDriver driver;
    private int bufferSize;
    private double sampleRate;
    private Set<AsioChannel> activeChannels;
    
    private float[] output;
    
    private boolean[] channel;
    private long startTime;
    
    byte[] abBuffer;
    FileInputStream inputStream;
    
    int frameSize;
    
    /**
     * Class constructor. This is the constructor of the class that initializes
     * everything needed such as buffer size, list of active channels and output variable.
     * 
     * @param driver Receive the current driver to be used.
     */
    AsioSoundHost ( AsioDriver driver ) {
        if ( driver != null ) {
            /* Get and instanciate the driver and its listener */
                this.driver = driver;
                this.driver.addAsioDriverListener ( this );
            
            /* Get the the buffer preferred size and the sample rate from current driver */
                bufferSize = this.driver.getBufferPreferredSize();
                sampleRate = this.driver.getSampleRate();
          
            /* Initializing the variable that contains the sound information o be played */
                output = new float[bufferSize];
            
            /* Add all the 7 channels of the chair to a list and then to the driver */
                activeChannels = new HashSet<>();
                for ( int i = 0; i < 8; i++ ) {
                    activeChannels.add ( this.driver.getChannelOutput ( i ) );
                }
                this.driver.createBuffers ( activeChannels );
            
            /* Create a list with all active channels */
                channel = new boolean[8];
                for ( int i = 0; i < channel.length; i++ ) {
                    channel[i] = false;
                }
            
            /* Is it needed? */
            /*try {
                AudioFileFormat fileFormat = AudioSystem.getAudioFileFormat(channel1);
                AudioFormat audioFormat = fileFormat.getFormat();

                frameSize = audioFormat.getFrameSize();

                int nBufferSize = driver.getBufferPreferredSize();
                abBuffer = new byte[nBufferSize];

                AudioInputStream inputAIS = AudioSystem.getAudioInputStream(channel1);

                ByteArrayOutputStream baos = new ByteArrayOutputStream();

                inputStream = new FileInputStream("c:\\Users\\imdc\\desktop\\2.wav");

            } catch ( UnsupportedAudioFileException ex ) {
                System.out.println ( ex );
            } catch ( IOException ex ) {
                System.out.println ( ex );
            }*/
        }
    }
    
    /**
     * This method add a new channel to the list of active channels.
     * 
     * @param channel This is the channel to be added into the active list.
     */
    public void addChannel ( int channel ) {
        this.channel[channel] = true;
    }
    
    /**
     * This method remove a channel to the list of active channels.
     * 
     * @param channel This is the channel to be removed of the active list.
     */
    public void removeChannel ( int channel ) {
        this.channel[channel] = false;
    }

    @Override
    public void bufferSwitch(long sampleTime, long samplePosition, Set<AsioChannel> activeChannels) {

        /* Get the elapsed time (difference between the current time and the start time. */
            long elapsedTime = ((sampleTime - startTime) / 1000000);

        /* Runs all the channel in the active list */
            for ( AsioChannel channelInfo : activeChannels ) {
                /* Check if the current channel is active */
                if ( channel[channelInfo.getChannelIndex()] ) {
                    /* read the samples from the file. It has to be move to other place */
                        byte[] sample = new byte[frameSize]; 
                        try {
                            for(int i = 0; i < output.length; i++) {
                                for (int j = 0; j < sample.length; j++) {
                                    sample[j] = (byte) inputStream.read();
                                }
                                float samplef = ByteBuffer.wrap(sample).order(ByteOrder.LITTLE_ENDIAN).getFloat();
                                output[i] = samplef;

                            }
                        } catch (Exception ex) {
                            System.out.println ( ex.getMessage() );
                            break;

                        }

                    /* play the information in the current channel */
                    channelInfo.write ( output );
                }
            }
    }
    
    @Override
    public void sampleRateDidChange(double sampleRate) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void resetRequest() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void resyncRequest() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void bufferSizeChanged(int bufferSize) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void latenciesChanged(int inputLatency, int outputLatency) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
