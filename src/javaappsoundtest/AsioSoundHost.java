/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import com.synthbot.jasiohost.AsioChannel;
import com.synthbot.jasiohost.AsioDriver;
import com.synthbot.jasiohost.AsioDriverListener;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.util.HashSet;
import java.util.Set;
import static javaappsoundtest.Player.channel1;
import javax.sound.sampled.AudioFileFormat;
import javax.sound.sampled.AudioFormat;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/**
 *
 * @author imdc
 */
public class AsioSoundHost implements AsioDriverListener {
    
    AsioDriver driver;
    private int bufferSize;
    private double sampleRate;
    private Set<AsioChannel> activeChannels;
    
    private float[] output;
    
    private boolean[] channel;
    private long startTime;  
    
    private double noteFrequency;
    
    byte[] abBuffer;
    FileInputStream inputStream;
    
    int frameSize;
    
    
    AsioSoundHost ( AsioDriver driver ) {
        if ( driver != null ) {
            this.driver = driver;
            this.driver.addAsioDriverListener ( this );
            
            bufferSize = this.driver.getBufferPreferredSize();
            sampleRate = this.driver.getSampleRate();
          
            output = new float[bufferSize];
            activeChannels = new HashSet<>();
            
            activeChannels.add (this.driver.getChannelOutput(0));
            activeChannels.add (this.driver.getChannelOutput(1));
            activeChannels.add (this.driver.getChannelOutput(2));
            activeChannels.add (this.driver.getChannelOutput(3));
            activeChannels.add (this.driver.getChannelOutput(4));
            activeChannels.add (this.driver.getChannelOutput(5));
            activeChannels.add (this.driver.getChannelOutput(6));
            activeChannels.add (this.driver.getChannelOutput(7));
                        
            channel = new boolean[8];
            for ( int i = 0; i < channel.length; i++ ) {
                channel[i] = false;
            }
            
            this.driver.createBuffers(activeChannels);
            
            noteFrequency = 800;
            
            try {
                AudioFileFormat fileFormat = AudioSystem.getAudioFileFormat(channel1);
                AudioFormat audioFormat = fileFormat.getFormat();

                frameSize = audioFormat.getFrameSize();

                int nBufferSize = driver.getBufferPreferredSize();//1024 * audioFormat.getFrameSize();
                abBuffer = new byte[nBufferSize];

                AudioInputStream inputAIS = AudioSystem.getAudioInputStream(channel1);

                ByteArrayOutputStream baos = new ByteArrayOutputStream();

                inputStream = new FileInputStream("c:\\Users\\imdc\\desktop\\2.wav");

            } catch (Exception ex) {

            }
            
            createSound();
        }
    }
    
    public void removeChannel ( int channel ) {
        this.channel[channel] = false;
    }
    
    public void addChannel ( int channel ) {
        this.channel[channel] = true;
    }

    private void createSound() {
        for ( int i = 0; i < bufferSize; i++ ) 
        {
            try {
               //output[i] = (float) Math.sin ( 2 * Math.PI * sampleIndex * 200.0 / sampleRate );
               
                float result = (float) Math.sin ( noteFrequency * 2 * Math.PI * i / sampleRate );
                //output[i] = result * 10000;
                
                
                //output[i] = (float) Player.output[i];
                System.out.println ( output[i] );
            }
            catch ( Exception e ) {
                System.out.println ( "EXCEPTION: " + e );
            }
        }
        
        System.out.println ( "asdasd" );
        
        /*output[0] = 0;
        output[1] = 0;
        output[2] = 0;
        output[3] = 0;
        output[4] = 0;
        output[5] = 0;
        output[6] = 0;
        output[7] = 0;
        output[8] = 0;
        output[9] = 0;
        output[10] = 0;
        output[11] = 0;
        output[12] = 0;
        output[13] = 0;
        output[14] = 0;
        output[15] = 0.030517578125;
        output[16] = 0.06103515625;
        output[17] = 0.06103515625;
        output[18] = -0.030517578125;
        output[19] = -0.030517578125;
        output[20] = 0.6103515625;
        output[21] = -0.06103515625;
        output[22] = 0.030517578125;
        output[23] = 0.030517578125;
        output[24] = -0.091552734375;
        output[25] = 0.091552734375;
        output[26] = -0.091552734375;
        output[27] = 0.091552734375;
        output[28] = -0.06103515625;
        output[29] = 0.030517578125;
        output[30] = -0.030517578125;
        output[31] = 0;
        output[32] = 0;
        output[33] = -0.030517578125;
        output[34] = 0.06103515625;
        output[35] = -0.091552734375;
        output[36] = 0.091552734375;
        output[37] = -0.06103515625;
        output[38] = 0.06103515625;
        output[39] = -0.06103515625;
        output[40] = 0.06103515625;
        output[41] = -0.06103515625;
        output[42] = 0.030517578125;
        output[43] = 0;
        output[44] = 0.030517578125;
        output[45] = -0.06103515625;
        output[46] = 0.091552734375;
        output[47] = -0.091552734375;
        output[48] = 0.030517578125;
        output[49] = 0.06103515625;
        output[50] = -0.01220703125;
        output[51] = 0.01220703125;
        output[52] = -0.091552734375;
        output[53] = 0.06103515625;
        output[54] = 0;
        output[55] = -0.06103515625;
        output[56] = -0.06103515625;
        output[57] = 0.06103515625;*/

    }
    
    @Override
    public void bufferSwitch(long sampleTime, long samplePosition, Set<AsioChannel> activeChannels) {

        long elapsedTime = ((sampleTime - startTime) / 1000000);

        for (AsioChannel channelInfo : activeChannels) {

            if (channel[channelInfo.getChannelIndex()]) {

                try 
                {
                    //inputStream.skip(44);
                } 
                catch (Exception ex) {

                }
                byte[] sample = new byte[frameSize]; 
                try {
                    for(int i = 0; i < output.length; i++)
                    {
                        for (int j = 0; j < sample.length; j++) 
                        {
                            sample[j] = (byte) inputStream.read();
                        }
                       // ByteBuffer buffer = ByteBuffer.wrap(sample);
                        
                        //try{
                        float samplef = ByteBuffer.wrap(sample).order(ByteOrder.LITTLE_ENDIAN).getFloat();
                        output[i] = samplef;
                      //  }
                      //  catch(Exception ex)
                      //  {
                      //      System.out.println(ex.getMessage());
                      //  }
                        
                    }
                    

                } catch (Exception ex) {
                    System.out.println(ex.getMessage());
                    break;

                }
                //output = abBuffer;
                channelInfo.write(output);
                // System.out.println(sampleTime + " " + samplePosition);//channelInfo.write ( output );
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
