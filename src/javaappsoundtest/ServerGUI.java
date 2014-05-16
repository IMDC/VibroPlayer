/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import com.synthbot.jasiohost.AsioDriver;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author imdc
 */
public class ServerGUI extends javax.swing.JFrame {
    
    /* static information */
    private static String defaultPath = "./IntimateInterfaceServer";
    public static final File path = new File ( defaultPath );
    public static final File config = new File ( defaultPath + "/config.txt" );
    
    /* server thread */
    ServerThread server;
    
    /* server port */
    private int port;
    
    AsioDriver driver;
    AsioSoundHost listener;
    
    public static ArrayList<Music> musics;
    public static String musicName;
    
    private long startTime;
    
    
    /**
     * Creates new form Server
     */
    public ServerGUI() {
        initComponents();
        
        server = new ServerThread();
        server.initialize();
        
        /*try {
            musics = new ArrayList<>();
            //musics.add ( new Music ( "Oral sex", "C:\\Users\\imdc\\Desktop\\Sound files\\Sound files\\sexual sounds\\oral2.wav" ) );
            //musics.add ( new Music ( "pose1", "C:\\Users\\imdc\\Desktop\\sounds\\sounds\\sex\\converted\\sex3_normal.wav" ) );
            
            /*File f = new File ( "./build/classes/sounds/sounds/sex" );
            File[] list = f.listFiles();*/
            
            /*musics.add ( new Music ( "pose1", "./build/classes/demo/sex/sex2.wav" ) );
            musics.add ( new Music ( "pose2", "./build/classes/demo/sex/sex1.wav" ) );
            musics.add ( new Music ( "pose3", "./build/classes/demo/sex/sex3.wav" ) );
            musics.add ( new Music ( "pose4", "./build/classes/demo/sex/sex3.wav" ) );
            musics.add ( new Music ( "pose5", "./build/classes/demo/sex/sex4.wav" ) );
            musics.add ( new Music ( "pose6", "./build/classes/demo/sex/sex4.wav" ) );
            musics.add ( new Music ( "masturbation", "./build/classes/sounds/sex/male_sound.wav" ) );
            musics.add ( new Music ( "3SOME", "./build/classes/sounds/sex/3some.wav" ) );*/
            //musics.add ( new Music ( "flying", "./build/classes/sounds/flying.wav" ) );
            /*musics.add ( new Music ( "dancing", "./build/classes/sounds/latin.wav" ) );
            musics.add ( new Music ( "kissing", "./build/classes/sounds/kissing.wav" ) );
        } catch ( UnsupportedAudioFileException ex ) {
            System.out.println ( ex );
        } catch (IOException ex) {
            System.out.println ( ex );
        }
        
        /* loads ASIO PreSonus FireStudio driver */
        /*driver = AsioDriver.getDriver ( "ASIO PreSonus FireStudio" );
            
        channels = new ArrayList<>();
        
        for ( int i = 0; i < 8; i++ ) {
            channels.add ( i, null );
        }
        
        try {
            System.out.println ( "Loading the sounds files..." );
            
            for ( Music music: musics ) {
                System.out.println ( "Loading \"" + music.getName() + "\"" );
                music.readMusic();
                System.out.println ( "Sound \"" + music.getName() + "\" successfully loaded." );
            }
            
            System.out.println ( "All sounds loaded." );
        } catch (Exception ex) {
            System.out.println ( ex );
        }
        
        
        try {
            DatagramSocket serverSocket = new DatagramSocket ( 7400 );
        
            byte[] receivedData = new byte[1024];
            
            System.out.println ( "Server ready" );
            
            while ( true ) {
                DatagramPacket receivedPacket = new DatagramPacket ( receivedData, receivedData.length );
                serverSocket.receive ( receivedPacket );
                
                String sentence = new String ( receivedPacket.getData() );
                //System.out.println ( sentence );
                
                String[] message = sentence.split ( " " );
                
                if ( !message[0].startsWith ( "stop" ) ) {
                    musicName = message[0];
                    System.out.println ( musicName );
                }
                else {
                    musicName = "stop";
                    System.out.println ( musicName );
                }
                
                
                                
                switch ( musicName ) {
                    case "stop":
                        System.out.println("Driver stopped.");
                        if ( listener != null ) {
                            listener.restart();
                            listener = null;
                            driver.returnToState ( AsioDriverState.INITIALIZED );
                        }
                        break;
                        
                    case "stand":
                        if ( listener != null ) {
                            System.out.println("Driver stopped.");
                            listener.restart();
                            listener = null;
                            driver.returnToState ( AsioDriverState.INITIALIZED );
                        }
                        break;
                    
                    default:
                        if ( driver.getCurrentState() != AsioDriverState.RUNNING ) {
                            
                            listener = new AsioSoundHost ( driver, musicName );
                            listener.restart();
                            
                            if ( musicName.equals ( "kissing" ) ) {
                               listener.removeChannel ( 0 );
                               listener.removeChannel ( 1 );
                               listener.removeChannel ( 2 );
                               listener.removeChannel ( 3 );
                               listener.removeChannel ( 4 );
                               listener.removeChannel ( 5 );
                               listener.removeChannel ( 6 );
                               listener.removeChannel ( 7 );
                               
                               listener.addChannel ( 4 );
                               listener.addChannel ( 5 );
                               listener.addChannel ( 6 );
                               listener.addChannel ( 7 );
                            }
                            
                            if ( musicName.equals ( "dancing" ) ) {
                               listener.removeChannel ( 0 );
                               listener.removeChannel ( 1 );
                               listener.removeChannel ( 2 );
                               listener.removeChannel ( 3 );
                               listener.removeChannel ( 4 );
                               listener.removeChannel ( 5 );
                               listener.removeChannel ( 6 );
                               listener.removeChannel ( 7 );
                               
                               listener.addChannel ( 0 );
                               listener.addChannel ( 1 );
                               listener.addChannel ( 2 );
                               listener.addChannel ( 3 );
                               listener.addChannel ( 4 );
                               listener.addChannel ( 5 );
                               listener.addChannel ( 6 );
                               listener.addChannel ( 7 );

                            }
                            
                            driver.start();
                            System.out.println ( "Playing sound: " + listener.getMusicName() );
                            
                        }
                        else {
                            listener.restart();
                            driver.returnToState ( AsioDriverState.INITIALIZED );
                            listener = new AsioSoundHost ( driver, musicName );
                            driver.start();
                            System.out.println ( "Playing sound: " + listener.getMusicName() );
                        }
                            
                        break;
                }
                
            }
        } catch (SocketException ex) {
            System.out.println ( ex );
        } catch (IOException ex) {
            System.out.println ( ex );
        }*/
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        startServer = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        jMenu2 = new javax.swing.JMenu();
        jMenuItem1 = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        startServer.setText("Start Server");
        startServer.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                startServerActionPerformed(evt);
            }
        });

        jLabel1.setText("jLabel1");

        jMenu1.setText("File");
        jMenuBar1.add(jMenu1);

        jMenu2.setText("Configure");
        jMenu2.setToolTipText("");

        jMenuItem1.setText("Server");
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });
        jMenu2.add(jMenuItem1);

        jMenuBar1.add(jMenu2);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(52, 52, 52)
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(329, Short.MAX_VALUE)
                .addComponent(startServer)
                .addGap(299, 299, 299))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(76, 76, 76)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 246, Short.MAX_VALUE)
                .addComponent(startServer)
                .addGap(100, 100, 100))
        );

        setSize(new java.awt.Dimension(735, 518));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem1ActionPerformed
        
        ServerConfig serverConfig = new ServerConfig();
        serverConfig.setVisible ( true );
        
    }//GEN-LAST:event_jMenuItem1ActionPerformed

    private void startServerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_startServerActionPerformed
        
        if ( server.getState() != Thread.State.RUNNABLE ) {
            server.start();
        }
        
        System.out.println ( server.getRunning() ); 
        
        if ( !server.getRunning() ) {
            server.setRunning ( true );
            startServer.setText ( "Stop Server" );
        }
        else {
            server.setRunning ( false );
            startServer.setText ( "Start Server" );
        }
        
    }//GEN-LAST:event_startServerActionPerformed

    public static Music getMusicByName ( String name ) {
        for ( Music m: musics ) {
            if ( m.getName().equals ( name ) ) {
                return m;
            }
        }
        
        return null;
    }

    public static void main(String args[]) {
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                //new Player().setVisible(true);
                ServerGUI server = new ServerGUI();
                server.setVisible ( true );
            }
        });
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JButton startServer;
    // End of variables declaration//GEN-END:variables
}
