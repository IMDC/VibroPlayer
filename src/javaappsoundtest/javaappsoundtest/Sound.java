/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import javax.sound.sampled.UnsupportedAudioFileException;

/**
 *
 * @author imdc
 */
public class Sound {
    
    private String command;
    private ChairPattern pattern;
    private String filePath;
    private WaveFileReader waveFile;
    
    public Sound ( String command, ChairPattern chairPattern, String filePath ) throws IOException, UnsupportedAudioFileException {
        this.command = command;
        this.pattern = chairPattern;
        this.filePath = filePath;
        this.waveFile = new WaveFileReader ( new File ( filePath ) );
    }
    
    public Sound() {
        
    }
    
    public void setFile ( String path ) throws IOException, UnsupportedAudioFileException {
        this.filePath = path;
        this.waveFile = new WaveFileReader ( new File ( filePath ) );
    }
    
    public void setChairPattern ( String pattern ) {
        if ( pattern.equals ( "TOP4" ) ) {
            this.pattern = ChairPattern.TOP4;
        }
        else if ( pattern.equals ( "BOTTOM4" ) ) {
            this.pattern = ChairPattern.BOTTOM4;
        }
        else if ( pattern.equals ( "ALL" ) ) {
            this.pattern = ChairPattern.ALL;
        }
    }
    
    public String getCommand() {
        return this.command;
    }
    
    public void setCommand ( String command ) {
        this.command = command;
    }
    
    public ChairPattern getPattern() {
        return this.pattern;
    }
    
    public String getFilePath() {
        return filePath;
    }
    
    public void read() {
        this.waveFile.read();
    }
    
    public ByteBuffer getSampleAt ( int index ) {
        return this.waveFile.getSampleAt ( index );
    }
}
