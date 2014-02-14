/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import com.synthbot.jasiohost.AsioChannel;
import com.synthbot.jasiohost.AsioDriver;
import com.synthbot.jasiohost.AsioDriverListener;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author imdc
 */
public class AsioSoundHost implements AsioDriverListener {
    
    AsioDriver driver;
    private int bufferSize;
    private double sampleRate;
    private Set<AsioChannel> activeChannels;
    
    private double[] output;
    
    private boolean[] channel;
    private long startTime;  
    
    private double noteFrequency;
    
    AsioSoundHost ( AsioDriver driver ) {
        if ( driver != null ) {
            this.driver = driver;
            this.driver.addAsioDriverListener ( this );
            
            bufferSize = this.driver.getBufferPreferredSize();
            sampleRate = this.driver.getSampleRate();
          
            output = new double[bufferSize];
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
                channel[i] = true;
            }
            
            this.driver.createBuffers(activeChannels);
            
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

    private void createSound() {
        for ( int i = 0; i < bufferSize; i++ ) {
            try {
               //output[i] = (float) Math.sin ( 2 * Math.PI * sampleIndex * 200.0 / sampleRate );
               
                float result = (float) Math.sin ( noteFrequency * 2 * Math.PI * i / sampleRate );
                output[i] = result;
                
                System.out.println ( Player.output[i] );
                output[i] = (float) Player.output[i];
            }
            catch ( Exception e ) {
                System.out.println ( "EXCEPTION: " + e );
            }
        }
    }
    
    @Override
    public void bufferSwitch(long sampleTime, long samplePosition, Set<AsioChannel> activeChannels) {
        
        long elapsedTime = ( ( sampleTime - startTime ) / 1000000);
        
        for ( AsioChannel channelInfo : activeChannels ) {
            
            if ( channel[channelInfo.getChannelIndex()] ) {
                channelInfo.writeDouble ( output );
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
