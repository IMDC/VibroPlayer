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
               //output[i] = (float) Math.sin ( 2 * Math.PI * sampleIndex * 200.0 / sampleRate );
               
                output[i] = (float) Math.sin ( noteFrequency * 2 * Math.PI * i / sampleRate );
                //System.out.println ( sampleRate );
            }
            catch ( Exception e ) {
                System.out.println ( "EXCEPTION: " + e );
            }
        }
        
        long elapsedTime = ( ( sampleTime - startTime ) / 1000000);
           
        if ( elapsedTime > 0 && elapsedTime < 500 ) {
            addChannel ( 0 );
        }

        if ( elapsedTime > 500 && elapsedTime < 1000 ) {
            removeChannel ( 0 );
            addChannel ( 1 );
        }

        if ( elapsedTime > 1000 && elapsedTime < 1500 ) {
            removeChannel ( 1 );
            addChannel ( 3 );
        }

        if ( elapsedTime > 1500 && elapsedTime < 2000 ) {
            removeChannel ( 3 );
            addChannel ( 2 );
        }
        
        if ( elapsedTime > 2000 && elapsedTime < 2500 ) {
            removeChannel( 2 );
            addChannel ( 4 );
        }
        
        if ( elapsedTime > 2500 && elapsedTime < 3000 ) {
            removeChannel ( 4 );
            addChannel ( 5 );
        }
        
        if ( elapsedTime > 3000 && elapsedTime < 3500 ) {
            removeChannel ( 5 );
            addChannel ( 7 );
        }
        
        if ( elapsedTime > 3500 && elapsedTime < 4000 ) {
            removeChannel ( 7 );
            addChannel ( 6 );
        }
        
        if ( elapsedTime > 4000 ) {
            removeChannel ( 6 );
        }
        
        for ( AsioChannel channelInfo : activeChannels ) {
            
            if ( channel[channelInfo.getChannelIndex()] ) {
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
