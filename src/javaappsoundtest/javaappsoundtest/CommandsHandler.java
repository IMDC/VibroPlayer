/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;

/**
 *
 * @author imdc
 */
public class CommandsHandler {
    
    private ArrayList<Sound> sounds;
    String filePath;
    
    public CommandsHandler() {
        sounds = new ArrayList<>();
        filePath = ServerGUI.defaultPath + "/commands.txt";
        
        File commands = new File ( filePath );
        
        if ( !commands.exists() ) {
            try {
                commands.createNewFile();
            } catch (IOException ex) {
                System.out.println ( ex );
            }
        }
    }
    
    public Sound findSoundByCommand ( String command ) {
        for ( Sound s: sounds ) {
            if ( s.getCommand().equals ( command ) ) {
                return s;
            }
        }
        
        return null;
    }
    
    public void loadSounds() {
        
    }
    
    public void addSound ( Sound s ) {
        sounds.add ( s );
        updateFile();
    }
    
    public void updateFile() {
        
        try {
            File file = new File ( filePath );
            
            /* clear the file content */
            Writer erasor = new BufferedWriter ( new OutputStreamWriter ( new FileOutputStream ( file ) ) );
            erasor.write ( "" );
            erasor.close();
            
            /* write all sounds information in the file */
            PrintWriter writer = new PrintWriter ( file, "UTF-8" );
            for ( Sound s: sounds ) {
                writer.println ( s.getCommand() + ";" + s.getPattern() + ";" + s.getFilePath() );
            }
            writer.close();
            
        } catch ( FileNotFoundException ex ) {
            System.out.println ( ex );
        } catch (IOException ex) {
            System.out.println ( ex );
        }
    }
}
