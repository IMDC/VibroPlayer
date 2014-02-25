/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;

/**
 *
 * @author imdc
 */
public class Server {
    
    private int port;
    private byte[] receivedData;
    DatagramSocket serverSocket;
    
    Server ( int port ) throws SocketException {
        this.port = port;
        
        serverSocket = new DatagramSocket ( this.port );
        
        receivedData = new byte[1024];
    }
    
    public void start() throws IOException {
        
        while ( true ) {
            DatagramPacket receivedPacket = new DatagramPacket ( receivedData, receivedData.length );
            serverSocket.receive ( receivedPacket );
            String sentence = new String ( receivedPacket.getData() );
        }
        
    }
    
}
