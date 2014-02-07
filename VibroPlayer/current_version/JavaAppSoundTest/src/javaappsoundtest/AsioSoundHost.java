/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import com.synthbot.jasiohost.AsioChannel;
import com.synthbot.jasiohost.AsioDriver;
import com.synthbot.jasiohost.AsioDriverListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import static javaappsoundtest.Player.driver;
import java.io.*;
import java.util.concurrent.*;  

/**
 *
 * @author imdc
 */
public class AsioSoundHost implements AsioDriverListener {
    
    AsioDriver driver;
    private int sampleIndex;
    private int bufferSize;
    private double sampleRate;
    private Set<AsioChannel> activeChannels;
    private float[] output;
    
    private boolean[] channel;
    private long startTime;  
    
    private double noteFrequency;
    
    AsioSoundHost ( AsioDriver driver ) {
        if ( driver != null ) {
            sampleIndex = 1;
            this.driver = driver;
            this.driver.addAsioDriverListener ( this );
            
            bufferSize = this.driver.getBufferPreferredSize();
            sampleRate = this.driver.getSampleRate();
          
            output = new float[bufferSize];
            activeChannels = new HashSet<AsioChannel>();
            
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
            
            startTime = System.nanoTime(); 
            noteFrequency = 200;
        }
        /* play output to given channel
         */
    }
    
    public void removeChannel ( int channel ) {
        this.channel[channel] = false;
    }
    
    public void addChannel ( int channel ) {
        this.channel[channel] = true;
    }

    @Override
    public void bufferSwitch(long sampleTime, long samplePosition, Set<AsioChannel> activeChannels) {
        
        for ( int i = 0; i < bufferSize; i++, sampleIndex++ ) {
            try {
               //output[i] = (float) Converter.output[i];
               //output[i] = (float) Math.sin ( 2 * Math.PI * sampleIndex * 200.0 / sampleRate );
                output[i] = (float) Math.sin ( sampleIndex  );
                output[i] = output[i] * 1000;
                //buffer[i] = sin(1000 * (2 * pi) * i / 44100);
                output[i] = (float) Math.sin ( noteFrequency * 2 * Math.PI * i / 48000);
                

               
            }
            catch ( Exception e ) {
                System.out.println ( "EXCEPTION: " + e );
            }
        }
        
        for ( AsioChannel channelInfo : activeChannels ) {
            
            long elapsedTime = ( (sampleTime - startTime)/ 1000000);
           
            if(elapsedTime > 0 && elapsedTime < 1500 )
            {
                
                if ( channelInfo.getChannelIndex() == 0 ) {
                    channelInfo.write ( output );
                }
                noteFrequency = 400;
               
            }
            
           if(elapsedTime > 1500 && elapsedTime < 3000 )
            {
                
                if ( channelInfo.getChannelIndex() == 1 ) {
                    channelInfo.write ( output );
                }
                
            }
           
           if(elapsedTime > 3000 && elapsedTime < 4500 )
            {
                
                if ( channelInfo.getChannelIndex() == 3 ) {
                    channelInfo.write ( output );
                }
                
            }
           
           if(elapsedTime > 4500 && elapsedTime < 6000 )
            {
                
                if ( channelInfo.getChannelIndex() == 2 ) {
                    channelInfo.write ( output );
                }
                
            }
           if(elapsedTime > 6000 && elapsedTime < 7500 )
            {
                
                if ( channelInfo.getChannelIndex() == 4 ) {
                    channelInfo.write ( output );
                }
                
            }
           if(elapsedTime > 7500 && elapsedTime < 9000 )
            {
                
                if ( channelInfo.getChannelIndex() == 5 ) {
                    channelInfo.write ( output );
                }
                
            }
           if(elapsedTime > 9000 && elapsedTime < 10500 )
            {
                
                if ( channelInfo.getChannelIndex() == 7 ) {
                    channelInfo.write ( output );
                }
                
            }
           if(elapsedTime > 10500 && elapsedTime < 12000 )
            {
                
                if ( channelInfo.getChannelIndex() == 6 ) {
                    channelInfo.write ( output );
                }
                
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
