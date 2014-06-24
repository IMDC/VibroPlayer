/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import javax.sound.sampled.UnsupportedAudioFileException;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author imdc
 */
public class SoundTableModel extends AbstractTableModel {
    private static final int COMMAND = 0;
    private static final int CHAIR_PATTERN = 1;
    private static final int WAVE_FILE_PATH = 2;
    
    private String filePath = ServerGUI.defaultPath + "/commands.txt";
    
    private ArrayList<Sound> datalist;
    private String[] columns = { "Command", "Chair Pattern", "Wave File Path" };

    public SoundTableModel() {
        datalist = new ArrayList<>();
        
        try {
            BufferedReader reader = new BufferedReader ( new FileReader ( filePath ) );

            String line = null;

            while ( ( line = reader.readLine() ) != null ) {
                try {
                    String split[] = line.split ( ";" );

                    Sound s = new Sound();
                    
                    s.setCommand ( split[0] );
                    s.setChairPattern ( split[1] );
                    s.setFile ( split[2] );
                    
                    this.addRow ( s );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        } catch ( Exception ex ) {
            
        }
    }
    
    public void addRow ( Sound s ) {
        datalist.add ( s );
        this.fireTableDataChanged();
        updateFile();
    }
    
    public void removeRow ( int row ) {
        try {
            Path path =  Paths.get ( datalist.get ( row ).getFilePath() );
            datalist.remove ( row );
            Files.delete ( path );
            ServerGUI.log.append ( ServerGUI.getCurrentTime() + " File deleted." );
        } catch ( IOException ex ) {
            System.out.println ( ex );
        }
        
        this.fireTableDataChanged();
        updateFile();
    }
    
    public String getColumnName ( int num ) {
        return columns[num];
    }
    
    @Override
    public int getRowCount() {
        return datalist.size();
    }

    @Override
    public int getColumnCount() {
        return columns.length;
    }

    @Override
    public Object getValueAt ( int row, int column ) {
        switch ( column ) {
            case 0: return datalist.get ( row ).getCommand();
            case 1: return datalist.get ( row ).getPattern();
            case 2: return datalist.get ( row ).getFilePath();
        }
        return null;
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
            for ( Sound s: datalist ) {
                writer.println ( s.getCommand() + ";" + s.getPattern() + ";" + s.getFilePath() );
            }
            writer.close();
            
        } catch ( FileNotFoundException ex ) {
            System.out.println ( ex );
        } catch (IOException ex) {
            System.out.println ( ex );
        }
    }
    
    public Sound getSoundByCommand ( String command ) {
        for ( Sound s: datalist ) {
            if ( s.getCommand().equals ( command ) ) {
                return s;
            }
        }
        return null;
    }
    
    public void readFiles() throws Exception {
        //should put it into a thread
        ServerGUI.log.append ( ServerGUI.getCurrentTime() + "Starting to read the wave files...\n" );
        ServerGUI.progressBarText.setText ( "Starting to read the wave files..." );
        
        for ( int i = 0; i < datalist.size(); i++ ) {
            ServerGUI.progressBarText.setText ( "Reading file for " + datalist.get ( i ).getCommand() + " command (" + ( i + 1) + " of " + datalist.size() + ")" );
            ServerGUI.log.append ( ServerGUI.getCurrentTime() + "Reading the file for " + datalist.get ( i ).getCommand() + " command\n" );
            datalist.get ( i ).read();
            ServerGUI.log.append ( ServerGUI.getCurrentTime() + datalist.get ( i ).getCommand() + " successfully read.\n" );
        }
    }
}
