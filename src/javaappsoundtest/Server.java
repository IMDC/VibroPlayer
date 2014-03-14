/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import com.synthbot.jasiohost.AsioDriver;
import com.synthbot.jasiohost.AsioDriverState;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;
import java.util.ArrayList;
import static javaappsoundtest.Player.channels;
import javax.sound.sampled.UnsupportedAudioFileException;

/**
 *
 * @author imdc
 */
public class Server extends javax.swing.JFrame {
    
    AsioDriver driver;
    AsioSoundHost listener;
    
    public static ArrayList<Music> musics;
    public static String musicName;
    
    private long startTime;
    
    /**
     * Creates new form Server
     */
    public Server() {
        initComponents();
        
        try {
            musics = new ArrayList<>();
            //musics.add ( new Music ( "Oral sex", "C:\\Users\\imdc\\Desktop\\Sound files\\Sound files\\sexual sounds\\oral2.wav" ) );
            //musics.add ( new Music ( "pose1", "C:\\Users\\imdc\\Desktop\\sounds\\sounds\\sex\\converted\\sex3_normal.wav" ) );
            musics.add ( new Music ( "pose1", "C:\\Users\\imdc\\Desktop\\sounds\\demo\\sex\\sex2.wav" ) );
            musics.add ( new Music ( "pose2", "C:\\Users\\imdc\\Desktop\\sounds\\demo\\sex\\sex1.wav" ) );
            musics.add ( new Music ( "pose3", "C:\\Users\\imdc\\Desktop\\sounds\\demo\\sex\\sex3.wav" ) );
            musics.add ( new Music ( "pose4", "C:\\Users\\imdc\\Desktop\\sounds\\demo\\sex\\sex3.wav" ) );
            musics.add ( new Music ( "pose5", "C:\\Users\\imdc\\Desktop\\sounds\\demo\\sex\\sex4.wav" ) );
            musics.add ( new Music ( "pose6", "C:\\Users\\imdc\\Desktop\\sounds\\demo\\sex\\sex4.wav" ) );
            //musics.add ( new Music ( "Kissing", "C:\\Users\\imdc\\Desktop\\Sound files\\Sound files\\sexual sounds\\kissing2.wav" ) );
        } catch ( UnsupportedAudioFileException ex ) {
            System.out.println ( ex );
        } catch (IOException ex) {
            System.out.println ( ex );
        }
        
        /**
         * Load the driver previously used if the file config.txt exists.
         */
        BufferedReader reader;
        try {
            /* Check if the file exists */
            if (new File("config.txt").exists()) {
                reader = new BufferedReader(new FileReader("config.txt"));

                /* Read every line of the file */
                String line = null;
                while ( ( line = reader.readLine()) != null) {
                    String split[] = line.split ( ";" );

                    if ( split[0].equals ( "Audio Driver" ) ) {
                        driver = AsioDriver.getDriver(split[1]);
                    }
                }

                reader.close();
            }
        } catch (FileNotFoundException ex) {
            System.out.println(ex);
        } catch (IOException ex) {
            System.out.println(ex);
        }
            
           
        channels = new ArrayList<>();
        
        for ( int i = 0; i < 9; i++ ) {
            channels.add ( i, null );
        }
        
        try {
            for ( Music music: musics ) {
                music.readMusic();
                System.out.println ( "Music " + music.getName() + " successfully loaded." );
            }
            
            System.out.println ( "All Musics loaded." );
        } catch (Exception ex) {
            System.out.println ( ex );
        }
        
        
        try {
            DatagramSocket serverSocket = new DatagramSocket ( 7400 );
        
            byte[] receivedData = new byte[1024];
            
            while ( true ) {
                DatagramPacket receivedPacket = new DatagramPacket ( receivedData, receivedData.length );
                serverSocket.receive ( receivedPacket );
                
                
                String sentence = new String ( receivedPacket.getData() );
                
                String[] message = sentence.split ( " " );
                musicName = message[0];
                                
                switch ( musicName ) {
                    case "stop":
                        System.out.println("Driver stopped.");
                        listener.restart();
                        driver.returnToState ( AsioDriverState.INITIALIZED );
                        break;
                        
                    case "stand":
                        System.out.println("Driver stopped.");
                        listener.restart();
                        driver.returnToState ( AsioDriverState.INITIALIZED );
                        break;
                    
                    default:
                        if ( driver.getCurrentState() != AsioDriverState.RUNNING ) {
                            listener = new AsioSoundHost ( driver, musicName );
                            driver.start();
                            System.out.println ( "Playing sound: " + musicName );
                        }
                        else {
                            listener.restart();
                            driver.returnToState ( AsioDriverState.INITIALIZED );
                            listener = new AsioSoundHost ( driver, musicName );
                            driver.start();
                            System.out.println ( "Playing sound: " + musicName );
                        }
                            
                        break;
                }
                
            }
        } catch (SocketException ex) {
            System.out.println ( ex );
        } catch (IOException ex) {
            System.out.println ( ex );
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jButton1.setText("jButton1");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(74, 74, 74)
                .addComponent(jButton1)
                .addContainerGap(253, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(58, 58, 58)
                .addComponent(jButton1)
                .addContainerGap(219, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    public static Music getMusicByName ( String name ) {
        for ( Music m: musics ) {
            if ( m.getName().equals ( name ) ) {
                return m;
            }
        }
        
        return null;
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Server.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Server.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Server.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Server.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Server().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    // End of variables declaration//GEN-END:variables
}
