package vibrointerpreter;


import com.synthbot.jasiohost.AsioChannel;
import com.synthbot.jasiohost.AsioDriver;
import com.synthbot.jasiohost.AsioDriverListener;
import com.synthbot.jasiohost.AsioDriverState;
import java.util.HashSet;
import java.util.Set;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author imdc
 */
public class AsioSoundHost implements AsioDriverListener {
    
    private AsioDriver driver;
    private int bufferSize;
    private double sampleRate;
    private Set<AsioChannel> activeChannels;
    
    public AsioSoundHost ( AsioDriver driver ) {
        if ( driver != null ) {
            this.driver = driver;
            this.driver.addAsioDriverListener ( this );
            
            this.bufferSize = this.driver.getBufferPreferredSize();
            this.sampleRate = this.driver.getSampleRate();
            
            this.activeChannels = new HashSet<>();
            for ( int i = 0; i < 8; i++ ) {
                activeChannels.add ( this.driver.getChannelOutput ( i ) );
            }
            this.driver.createBuffers ( activeChannels );
        }
    }
    
    public void bufferSwitch ( long systemTime, long samplePosition, Set<AsioChannel> channels ) {
        
    }
    
    public void bufferSizeChanged(int bufferSize) {
        System.out.println("bufferSizeChanged() callback received.");
    }
    
    public void latenciesChanged(int inputLatency, int outputLatency) {
        System.out.println("latenciesChanged() callback received.");
    }
    
    public void resetRequest() {
        /*
         * This thread will attempt to shut down the ASIO driver. However, it will
         * block on the AsioDriver object at least until the current method has returned.
         */
        new Thread() {
            @Override
            public void run() {
                System.out.println("resetRequest() callback received. Returning driver to INITIALIZED state.");
                driver.returnToState ( AsioDriverState.INITIALIZED );
            }
        }.start();
    }
    
    public void resyncRequest() {
        System.out.println("resyncRequest() callback received.");
    }
    
    public void sampleRateDidChange(double sampleRate) {
        System.out.println("sampleRateDidChange() callback received.");
    }
    
    public double getSampleRate() {
        return this.sampleRate;
    }
    
    public int getBufferSize() {
        return this.bufferSize;
    }
    
    public void output ( int channel, float[] output ) {
        for ( AsioChannel channelInfo: this.activeChannels ) {
            if ( channelInfo.getChannelIndex() == channel ) {
                channelInfo.write ( output );
            }
        }
    }
}
