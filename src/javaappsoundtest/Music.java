package javaappsoundtest;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import javax.sound.sampled.AudioFileFormat;
import javax.sound.sampled.AudioFormat;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.UnsupportedAudioFileException;

/**
 *
 * @author Rener Baffa da Silva
 */
public class Music {
    
    private ArrayList<Float> output;
    private String filePath;
    private File file;
    private String name;
    
    private AudioFileFormat fileFormat;
    private AudioFormat audioFormat;
    
    Music ( String name, String filePath ) throws UnsupportedAudioFileException, IOException {
        this.name = name;
        this.filePath = filePath;
        this.file = new File ( this.filePath );
        output = new ArrayList<>();
        
        fileFormat = AudioSystem.getAudioFileFormat ( this.file );
        audioFormat = fileFormat.getFormat();
    }
    
    public void addFloat ( float value ) {
        this.output.add ( value );
    }
    
    public float getFloat ( int position ) {
        return this.output.get ( position );
    }
    
    public String getName() {
        return this.name;
    }
    
    public void readMusic() throws FileNotFoundException, IOException {
        byte[] sample = new byte[audioFormat.getFrameSize()];
        FileInputStream inputStream = new FileInputStream ( this.file );

        boolean continueLoop = true;
        int j = 0;
        int errors = 0;

        while ( continueLoop ) {
            sample[j] = (byte) inputStream.read();
            if ( errors > 5 ) {
                break;
            }

            if ( j == sample.length - 1 ) {
                float samplef;
                samplef = ByteBuffer.wrap ( sample ).order ( ByteOrder.LITTLE_ENDIAN ).getFloat();
                if ( samplef != Double.NaN ) {
                    this.output.add ( samplef );
                }

                if ( sample[0] == -1 && sample[1] == -1 && sample[2] == -1 && sample[3] == -1 ) {
                    errors++;
                }

                j = 0;
            }
            else {
                if ( j < sample.length - 1 ) {
                    j++;
                }
            }
        }
    }
    
}
