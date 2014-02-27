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
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import javax.sound.sampled.AudioFileFormat;
import javax.sound.sampled.AudioFormat;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.UnsupportedAudioFileException;
import javax.swing.JFileChooser;

/**
 * Player class. This the main class of the project.
 *
 * @author Rener Baffa da Silva
 */
public class Player extends javax.swing.JFrame {

    /**
     * @param channel1          File of the first channel.
     * @param channel2          File of the second channel.
     * @param channel3          File of the third channel.
     * @param channel4          File of the fourth channel.
     * @param channel5          File of the fifth channel.
     * @param channel6          File of the sixth channel.
     * @param channel7          File of the seventh channel.
     * @param channel8          File of the eighth channel.
     * @param driver            Current sound driver.
     * @param listener          Driver listener.
     * @param output            Sound information to be played.
     * @param playingChannel    List of channels that are playing the sound.
     */
    public static ArrayList<File> channels;
    public static ArrayList<Music> musics;

    private AsioDriver driver;
    private AsioSoundHost listener;

    /* Change that to an array?! */
    public static ArrayList<Float> output;

    private boolean[] playingChannel;

    /**
     * Class constructor. Load the previously information and initializes everything needed such as the driver.
     */
    public Player() {
        /* Method created automaticaly by NetBeans to position all elements in the screen */
            initComponents();

        /* Initializes the sound driver */
            driver = null;

        /* Creates and initializes the list with channels that are playing with none */
            playingChannel = new boolean[8];
            for (int i = 0; i < playingChannel.length; i++) {
                playingChannel[i] = false;
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
            
        output = new ArrayList<>();
        musics = new ArrayList<>();
        
        for ( int i = 0; i < 9; i++ ) {
            musics.add ( i, null );
        }

        
        /* Listener to load the file chosen to the channel 1 variable. It maps the event of click on the Text Field. */
        fileChannel1.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 1;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 1 variable. It maps the event of click on the Label. */
        labelChannel1.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 1;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 2 variable. It maps the event of click on the Text Field. */
        fileChannel2.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 2;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 2 variable. It maps the event of click on the Label. */
        labelChannel2.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 2;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 3 variable. It maps the event of click on the Text Field. */
        fileChannel3.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 3;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 3 variable. It maps the event of click on the Label. */
        labelChannel3.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 3;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 4 variable. It maps the event of click on the Text Field. */
        fileChannel4.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 4;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 4 variable. It maps the event of click on the Label. */
        labelChannel4.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 4;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 5 variable. It maps the event of click on the Text Field. */
        fileChannel5.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 5;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 5 variable. It maps the event of click on the Label. */
        labelChannel5.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 5;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 6 variable. It maps the event of click on the Text Field. */
        fileChannel6.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 6;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 6 variable. It maps the event of click on the Label. */
        labelChannel6.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 6;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 7 variable. It maps the event of click on the Text Field. */
        fileChannel7.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 7;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 7 variable. It maps the event of click on the Label. */
        labelChannel7.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 7;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 8 variable. It maps the event of click on the Text Field. */
        fileChannel8.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 8;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });

        /* Listener to load the file chosen to the channel 8 variable. It maps the event of click on the Label. */
        labelChannel8.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    int currentChannel = 8;
                    importMusicToChannel ( currentChannel );
                } catch ( UnsupportedAudioFileException ex ) {
                    System.out.println ( ex );
                } catch ( IOException ex ) {
                    System.out.println ( ex );
                }
            }
        });
        
        

        /* Listener to control panel button. Control panel form opens */
        controlPanelBtn.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                ControlPanel controlPanel = new ControlPanel();
                controlPanel.setVisible(true);
            }
        });

        
        
        /* Listener to start button to play the sound in the channel 1 */
        playChannel1.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                playChannel1.setText(start(0));
            }
        });

        /* Listener to start button to play the sound in the channel 2 */
        playChannel2.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                playChannel2.setText(start(1));
            }
        });

        /* Listener to start button to play the sound in the channel 3 */
        playChannel3.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                playChannel3.setText(start(2));
            }
        });

        /* Listener to start button to play the sound in the channel 4 */
        playChannel4.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                playChannel4.setText(start(3));
            }
        });

        /* Listener to start button to play the sound in the channel 5 */
        playChannel5.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                playChannel5.setText(start(4));
            }
        });

        /* Listener to start button to play the sound in the channel 6 */
        playChannel6.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                playChannel6.setText(start(5));
            }
        });

        /* Listener to start button to play the sound in the channel 7 */
        playChannel7.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                playChannel7.setText(start(6));
            }
        });

        /* Listener to start button to play the sound in the channel 8 */
        playChannel8.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                playChannel8.setText(start(7));
            }
        });
    }

    /**
     * Start method. It starts to play sound in a channel.
     * 
     * @param channel Channel where the sounds will be played.
     * @return Return the string to be putted into the text of the button. It is used to
     * change the text of the button (when you click and the channel is not playing so
     * the text change to "stop" at the same time it is playing.
     */
    private String start(int channel) {

        /* Check if the driver is already running. If not, starts it */
            if ( driver.getCurrentState() != AsioDriverState.RUNNING ) {
                listener = new AsioSoundHost(driver);
                driver.start();
            }

        /* Check if the channel is already playing a sound */
            if ( playingChannel[channel] ) {
                /* If the channel is already playin change it to inactive */
                listener.removeChannel(channel);
                playingChannel[channel] = false;
                return "Play";
            } else {
                /* If the channel isn't playing change it to active */
                listener.addChannel(channel);
                playingChannel[channel] = true;
                return "Stop";
            }

    }
    
    private void importMusicToChannel ( int channel ) throws UnsupportedAudioFileException, IOException {
        String path = getFile ( channel );
        Music music = new Music ( "channel " + channel , path );

        music.readMusic();

        musics.add ( channel, music );
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the NetBeans Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jSeparator2 = new javax.swing.JSeparator();
        jSeparator3 = new javax.swing.JSeparator();
        jSeparator4 = new javax.swing.JSeparator();
        jSeparator5 = new javax.swing.JSeparator();
        jSeparator6 = new javax.swing.JSeparator();
        jSeparator7 = new javax.swing.JSeparator();
        fileChannel1 = new javax.swing.JTextField();
        labelChannel1 = new javax.swing.JLabel();
        fileChannel2 = new javax.swing.JTextField();
        labelChannel2 = new javax.swing.JLabel();
        fileChannel3 = new javax.swing.JTextField();
        labelChannel3 = new javax.swing.JLabel();
        fileChannel4 = new javax.swing.JTextField();
        labelChannel4 = new javax.swing.JLabel();
        fileChannel5 = new javax.swing.JTextField();
        labelChannel5 = new javax.swing.JLabel();
        fileChannel6 = new javax.swing.JTextField();
        labelChannel6 = new javax.swing.JLabel();
        fileChannel7 = new javax.swing.JTextField();
        labelChannel7 = new javax.swing.JLabel();
        fileChannel8 = new javax.swing.JTextField();
        labelChannel8 = new javax.swing.JLabel();
        controlPanelBtn = new javax.swing.JButton();
        playChannel1 = new javax.swing.JButton();
        playChannel2 = new javax.swing.JButton();
        playChannel3 = new javax.swing.JButton();
        playChannel4 = new javax.swing.JButton();
        playChannel5 = new javax.swing.JButton();
        playChannel6 = new javax.swing.JButton();
        playChannel7 = new javax.swing.JButton();
        playChannel8 = new javax.swing.JButton();
        playAllSoung = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel1.setText("Channel 1");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel2.setText("Channel 2");

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel3.setText("Channel 3");

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel4.setText("Channel 4");

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel5.setText("Channel 5");

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel6.setText("Channel 6");

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel7.setText("Channel 7");

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel8.setText("Channel 8");

        fileChannel1.setEditable(false);
        fileChannel1.setText("No file chosen");

        labelChannel1.setText("File:");

        fileChannel2.setEditable(false);
        fileChannel2.setText("No file chosen");

        labelChannel2.setText("File:");

        fileChannel3.setEditable(false);
        fileChannel3.setText("No file chosen");

        labelChannel3.setText("File:");

        fileChannel4.setEditable(false);
        fileChannel4.setText("No file chosen");

        labelChannel4.setText("File:");

        fileChannel5.setEditable(false);
        fileChannel5.setText("No file chosen");

        labelChannel5.setText("File:");

        fileChannel6.setEditable(false);
        fileChannel6.setText("No file chosen");

        labelChannel6.setText("File:");

        fileChannel7.setEditable(false);
        fileChannel7.setText("No file chosen");

        labelChannel7.setText("File:");

        fileChannel8.setEditable(false);
        fileChannel8.setText("No file chosen");

        labelChannel8.setText("File:");

        controlPanelBtn.setText("Control panel");

        playChannel1.setText("Play");

        playChannel2.setText("Play");

        playChannel3.setText("Play");

        playChannel4.setText("Play");

        playChannel5.setText("Play");

        playChannel6.setText("Play");

        playChannel7.setText("Play");

        playChannel8.setText("Play");

        playAllSoung.setText("Play Song");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jSeparator6)
                            .addComponent(jSeparator5)
                            .addComponent(jSeparator4)
                            .addComponent(jSeparator3)
                            .addComponent(jSeparator2)
                            .addComponent(jSeparator1)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(playAllSoung)
                                        .addGap(124, 124, 124)
                                        .addComponent(controlPanelBtn))
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(jLabel7)
                                        .addGap(126, 126, 126)
                                        .addComponent(labelChannel7)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(fileChannel7, javax.swing.GroupLayout.DEFAULT_SIZE, 385, Short.MAX_VALUE))
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(jLabel6)
                                        .addGap(126, 126, 126)
                                        .addComponent(labelChannel6)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(fileChannel6))
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(jLabel5)
                                        .addGap(126, 126, 126)
                                        .addComponent(labelChannel5)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(fileChannel5))
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(jLabel4)
                                        .addGap(126, 126, 126)
                                        .addComponent(labelChannel4)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(fileChannel4))
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(jLabel3)
                                        .addGap(126, 126, 126)
                                        .addComponent(labelChannel3)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(fileChannel3))
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(jLabel2)
                                        .addGap(126, 126, 126)
                                        .addComponent(labelChannel2)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(fileChannel2))
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(jLabel1)
                                        .addGap(126, 126, 126)
                                        .addComponent(labelChannel1)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(fileChannel1))
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(jLabel8)
                                        .addGap(126, 126, 126)
                                        .addComponent(labelChannel8)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(fileChannel8)))
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(layout.createSequentialGroup()
                                            .addGap(23, 23, 23)
                                            .addComponent(playChannel1, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                .addComponent(playChannel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addComponent(playChannel3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addComponent(playChannel4, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addComponent(playChannel5, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addComponent(playChannel6, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addComponent(playChannel7, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE))))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(23, 23, 23)
                                        .addComponent(playChannel8, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGap(0, 35, Short.MAX_VALUE))))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jSeparator7)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(37, 37, 37)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(fileChannel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(labelChannel1)
                    .addComponent(playChannel1))
                .addGap(18, 18, 18)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(fileChannel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(labelChannel2)
                        .addComponent(playChannel2))
                    .addComponent(jLabel2))
                .addGap(18, 18, 18)
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(fileChannel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(labelChannel3)
                        .addComponent(playChannel3))
                    .addComponent(jLabel3))
                .addGap(18, 18, 18)
                .addComponent(jSeparator3, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(fileChannel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(labelChannel4)
                        .addComponent(playChannel4))
                    .addComponent(jLabel4))
                .addGap(18, 18, 18)
                .addComponent(jSeparator4, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(fileChannel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(labelChannel5)
                        .addComponent(playChannel5))
                    .addComponent(jLabel5))
                .addGap(18, 18, 18)
                .addComponent(jSeparator5, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(fileChannel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(labelChannel6)
                        .addComponent(playChannel6))
                    .addComponent(jLabel6))
                .addGap(18, 18, 18)
                .addComponent(jSeparator6, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(fileChannel7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(labelChannel7)
                        .addComponent(playChannel7))
                    .addComponent(jLabel7))
                .addGap(18, 18, 18)
                .addComponent(jSeparator7, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(fileChannel8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(labelChannel8)
                        .addComponent(playChannel8))
                    .addComponent(jLabel8))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 21, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(controlPanelBtn)
                    .addComponent(playAllSoung))
                .addGap(41, 41, 41))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * Get file method. Load the file and record it in the correspondent variable.
     * 
     * @param idChannel Specifies from what channel that file is.
     * @return Chosen file if it exists or null for the case that any file wasn't chosen.
     */
    private String getFile ( int idChannel ) {
        /* Creates the dialog and uses a filter to just show sound files
         * (specified in the SoundsFilter class).
         */
            JFileChooser fc = new JFileChooser();
            fc.setFileFilter(new SoundsFilter());

        /* Check if the file was chosen. If yes so return the file. If not so return null. */
            int returnedValue = fc.showDialog(rootPane, null);

            if (returnedValue == JFileChooser.APPROVE_OPTION) {
                /* Create the file with chosen path and  */
                String path = fc.getSelectedFile().getPath();

                if (idChannel == 1) {
                    fileChannel1.setText ( path );
                } else if (idChannel == 2) {
                    fileChannel2.setText ( path );
                } else if (idChannel == 3) {
                    fileChannel3.setText ( path );
                } else if (idChannel == 4) {
                    fileChannel4.setText ( path );
                } else if (idChannel == 5) {
                    fileChannel5.setText ( path );
                } else if (idChannel == 6) {
                    fileChannel6.setText ( path );
                } else if (idChannel == 7) {
                    fileChannel7.setText ( path );
                } else if (idChannel == 8) {
                    fileChannel8.setText ( path );
                }
                
                return path;
            }

            return null;
    }

    private void loadFile ( int channel ) {
        try {
            File file = channels.get ( channel );
            AudioFileFormat fileFormat = AudioSystem.getAudioFileFormat ( file );
            AudioFormat audioFormat = fileFormat.getFormat();

            byte[] sample = new byte[audioFormat.getFrameSize()];
            FileInputStream inputStream = new FileInputStream ( file );
            
            boolean continueLoop = true;
            int j = 0;
            int errors = 0;

            //for(int i = 0; i < output.length; i++) {
            while ( continueLoop ) {
                sample[j] = (byte) inputStream.read();
                if ( errors > 5 ) {
                    break;
                }
                
                if ( j == sample.length - 1 ) {
                    float samplef;
                    samplef = ByteBuffer.wrap ( sample ).order ( ByteOrder.LITTLE_ENDIAN ).getFloat();
                    if ( samplef != Double.NaN ) {
                        output.add ( samplef );
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
            
            //System.out.println ( "Asdasd" );
        } catch (Exception ex) {
            System.out.println ( ex );
        }
    }
    
    /**
     * Main method. Creates the main page and starts the application itself.
     * 
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
            java.util.logging.Logger.getLogger(Player.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Player.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Player.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Player.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new Player().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton controlPanelBtn;
    private javax.swing.JTextField fileChannel1;
    private javax.swing.JTextField fileChannel2;
    private javax.swing.JTextField fileChannel3;
    private javax.swing.JTextField fileChannel4;
    private javax.swing.JTextField fileChannel5;
    private javax.swing.JTextField fileChannel6;
    private javax.swing.JTextField fileChannel7;
    private javax.swing.JTextField fileChannel8;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JSeparator jSeparator4;
    private javax.swing.JSeparator jSeparator5;
    private javax.swing.JSeparator jSeparator6;
    private javax.swing.JSeparator jSeparator7;
    private javax.swing.JLabel labelChannel1;
    private javax.swing.JLabel labelChannel2;
    private javax.swing.JLabel labelChannel3;
    private javax.swing.JLabel labelChannel4;
    private javax.swing.JLabel labelChannel5;
    private javax.swing.JLabel labelChannel6;
    private javax.swing.JLabel labelChannel7;
    private javax.swing.JLabel labelChannel8;
    private javax.swing.JButton playAllSoung;
    private javax.swing.JButton playChannel1;
    private javax.swing.JButton playChannel2;
    private javax.swing.JButton playChannel3;
    private javax.swing.JButton playChannel4;
    private javax.swing.JButton playChannel5;
    private javax.swing.JButton playChannel6;
    private javax.swing.JButton playChannel7;
    private javax.swing.JButton playChannel8;
    // End of variables declaration//GEN-END:variables
}
