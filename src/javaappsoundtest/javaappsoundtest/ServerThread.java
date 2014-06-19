/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;
import static javaappsoundtest.ServerGUI.config;

/**
 *
 * @author imdc
 */
public class ServerThread extends Thread {
    
    /* To control when the server should start or stop */
    private boolean running;
    
    /* Server informations */
    DatagramSocket serverSocket;
    DatagramPacket receivedPacket;
    private int port;
    
    static SoundTableModel sounds;
    private boolean firstTime;
    
    public ServerThread ( SoundTableModel sounds ) {
        this.sounds = sounds;
        this.firstTime = true;
    }
    
    public void initialize() {
        getPort();
        running = false;
        firstTime = true;
        byte[] receivedData = new byte[1024];
        try {
            serverSocket = new DatagramSocket ( port );
            receivedPacket = new DatagramPacket ( receivedData, receivedData.length );
        } catch ( SocketException ex ) {
            System.out.println ( ex );
        }
    }
    
    public void run() {
        try {
            while ( true ) {
                
                if ( running ) {
                    if ( firstTime ) {
                        ServerGUI.log.append ( ServerGUI.getCurrentTime() + "Server started. Listenning port " + port + "\n" );
                        firstTime = false;
                    }
                    
                    serverSocket.receive ( receivedPacket );

                    String sentence = new String ( receivedPacket.getData() );

                    String[] message = sentence.split ( " " );
                    
                    Sound s = sounds.getSoundByCommand ( message[0] );
                    
                    if ( s != null ) {
                        
                    }
                }
                else {
                    System.out.print ( "" );
                }
               
            }
        } catch (SocketException ex) {
            System.out.println ( ex );
        } catch (IOException ex) {
            System.out.println ( ex );
        }
    }

    public boolean getRunning() {
        return this.running;
    }

    public void setRunning ( boolean newState ) {
        this.running = newState;
        if ( newState ) {
            this.firstTime = true;
        }
    }
    
    public void getPort() {
        try {
            BufferedReader reader = new BufferedReader ( new FileReader ( config ) );

            String line = null;

            while ( ( line = reader.readLine() ) != null ) {
                String split[] = line.split ( ";" );

                if ( split[0].equals ( "Port" ) ) {
                    port = Integer.parseInt ( split[1] );
                }
            }
        }
        catch ( FileNotFoundException ex ) {
            ServerGUI.log.append ( ServerGUI.getCurrentTime() + "Server not configured yet." );
        }
        catch ( IOException ex ) {
            ServerGUI.log.append ( ServerGUI.getCurrentTime() + "Error: " + ex + "." );
        }
    }
}
