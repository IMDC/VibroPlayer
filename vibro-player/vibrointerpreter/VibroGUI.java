package vibrointerpreter;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.synthbot.jasiohost.AsioDriver;
import java.util.ArrayList;
import javax.swing.JFileChooser;
import javax.swing.JPanel;
import javax.swing.JProgressBar;
import javax.swing.JSlider;
import javax.swing.JToggleButton;
/**
 *
 * @author imdc
 */
public class VibroGUI extends javax.swing.JFrame {
    
    private AsioDriver driver;
    protected AsioSoundHost listener;   
    protected boolean driverLoaded;
    
    boolean fileFound = false;
    JFileChooser c = new JFileChooser();
    int numChannels = 8, solo=0;
    //MidiKeyboard kb = new MidiKeyboard();
      
    ArrayList <JProgressBar> bars = new ArrayList();
    ArrayList <JSlider> sliders = new ArrayList();
    ArrayList <JPanel> panels = new ArrayList();
    ArrayList <JToggleButton> toggleMute = new ArrayList();
    ArrayList <JToggleButton> toggleSolo = new ArrayList();
    
    WaveFileReader waveFile;
    /**
     * Creates new form VibroGUI
     */
    public VibroGUI() {
        initComponents();
        setChannels(numChannels);
        /* load the driver */
        try {
            driver = AsioDriver.getDriver ( "ASIO PreSonus FireStudio" );
            listener = new AsioSoundHost ( driver );
            driver.start();
            driverLoaded = true;
        }
        catch ( UnsatisfiedLinkError e ){ 
            outText.setText("Please install the Following Driver: ASIO PreSonus FireStudio");
            System.out.println("Please install the Following Driver: ASIO PreSonus FireStudio");
            driverLoaded = false;
        }           
    }
    
    public void setChannels(int num){

        bars.clear();
        bars.add(visualBar1);
        bars.add(visualBar2);
        bars.add(visualBar3);
        bars.add(visualBar4);
        bars.add(visualBar5);
        bars.add(visualBar6);
        bars.add(visualBar7);
        bars.add(visualBar8);
        bars.add(visualBar9);
        bars.add(visualBar10);
        bars.add(visualBar11);
        bars.add(visualBar12);
        bars.add(visualBar13);
        bars.add(visualBar14);
        bars.add(visualBar15);
        bars.add(visualBar16);
        sliders.clear();
        sliders.add(volumeSlider1);
        sliders.add(volumeSlider2);
        sliders.add(volumeSlider3);
        sliders.add(volumeSlider4);
        sliders.add(volumeSlider5);
        sliders.add(volumeSlider6);
        sliders.add(volumeSlider7);
        sliders.add(volumeSlider8);
        sliders.add(volumeSlider9);
        sliders.add(volumeSlider10);
        sliders.add(volumeSlider11);
        sliders.add(volumeSlider12);
        sliders.add(volumeSlider13);
        sliders.add(volumeSlider14);
        sliders.add(volumeSlider15);
        sliders.add(volumeSlider16);
        panels.clear();       
        panels.add(chanPanel1);
        panels.add(chanPanel2);
        panels.add(chanPanel3);
        panels.add(chanPanel4);
        panels.add(chanPanel5);
        panels.add(chanPanel6);
        panels.add(chanPanel7);
        panels.add(chanPanel8);
        panels.add(chanPanel9);
        panels.add(chanPanel10);
        panels.add(chanPanel11);
        panels.add(chanPanel12);
        panels.add(chanPanel13);
        panels.add(chanPanel14);
        panels.add(chanPanel15);
        panels.add(chanPanel16); 
        //toggleMute.add(mute);
        toggleMute.clear(); 
        toggleMute.add(mute1);
        toggleMute.add(mute2);
        toggleMute.add(mute3);
        toggleMute.add(mute4);
        toggleMute.add(mute5);
        toggleMute.add(mute6);
        toggleMute.add(mute7);
        toggleMute.add(mute8);
        toggleMute.add(mute9);
        toggleMute.add(mute10);
        toggleMute.add(mute11);
        toggleMute.add(mute12);
        toggleMute.add(mute13);
        toggleMute.add(mute14);
        toggleMute.add(mute15);
        toggleMute.add(mute16);
        toggleSolo.clear(); 
        toggleSolo.add(solo1);
        toggleSolo.add(solo2);
        toggleSolo.add(solo3);
        toggleSolo.add(solo4);
        toggleSolo.add(solo5);
        toggleSolo.add(solo6);
        toggleSolo.add(solo7);
        toggleSolo.add(solo8);
        toggleSolo.add(solo9);
        toggleSolo.add(solo10);
        toggleSolo.add(solo11);
        toggleSolo.add(solo12);
        toggleSolo.add(solo13);
        toggleSolo.add(solo14);
        toggleSolo.add(solo15);
        toggleSolo.add(solo16);
            
        for(int i=15; i>=0; i--){
            if(i>=num){
                sliders.remove(sliders.size()-1);
                bars.remove(bars.size()-1);
                toggleSolo.remove(toggleSolo.size()-1);
                toggleMute.remove(toggleMute.size()-1);
                panels.get(i).setVisible(false);               
            }else{
                panels.get(i).setVisible(true);
            }
        }
        numChannels=num;
        latencyPanel.setVisible(false);
        FreqFilter.write(null);
    }
    
    public void setMuteSolo(int ch, boolean isSolo){
        ch--;
        if(ch==-1){
            if(mute.isSelected()){
                for(int i=0; i<toggleSolo.size(); i++){
                    toggleMute.get(i).setSelected(true);
                }
            }
            else{
                for(int i=0; i<toggleSolo.size(); i++){
                    toggleMute.get(i).setSelected(false);
                }
            }           
        }
        else if(isSolo && toggleSolo.get(ch).isSelected()){
            solo++;
            toggleMute.get(ch).setSelected(false);
            for(int i=0; i<toggleSolo.size(); i++){
                if(!toggleSolo.get(i).isSelected()) toggleMute.get(i).setSelected(true);
            }   
        }
        else if(isSolo && !toggleSolo.get(ch).isSelected()){
            solo--;
            if (solo==0){
                for(int i=0; i<toggleSolo.size(); i++){
                    if(toggleMute.get(i).isSelected()) toggleMute.get(i).setSelected(false);
                }
            }
        }
        else if(!isSolo && toggleMute.get(ch).isSelected() && toggleSolo.get(ch).isSelected()){
            toggleSolo.get(ch).setSelected(false);
            solo--;
        }
    }
    
    public int getVolume(int num){
        if(toggleMute.get(num).isSelected()) return 0;
        else return sliders.get(num).getValue();
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        inputGroup = new javax.swing.ButtonGroup();
        channelEnable = new javax.swing.ButtonGroup();
        freqSplitControl = new javax.swing.JDialog();
        ch1a = new javax.swing.JTextField();
        ch1b = new javax.swing.JTextField();
        ch2a = new javax.swing.JTextField();
        ch2b = new javax.swing.JTextField();
        ch3a = new javax.swing.JTextField();
        ch3b = new javax.swing.JTextField();
        ch4a = new javax.swing.JTextField();
        ch4b = new javax.swing.JTextField();
        ch5a = new javax.swing.JTextField();
        ch5b = new javax.swing.JTextField();
        ch6a = new javax.swing.JTextField();
        ch6b = new javax.swing.JTextField();
        ch7a = new javax.swing.JTextField();
        ch7b = new javax.swing.JTextField();
        ch8a = new javax.swing.JTextField();
        ch8b = new javax.swing.JTextField();
        jLabel18 = new javax.swing.JLabel();
        jLabel19 = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        jLabel21 = new javax.swing.JLabel();
        jLabel22 = new javax.swing.JLabel();
        jLabel23 = new javax.swing.JLabel();
        jLabel24 = new javax.swing.JLabel();
        jLabel25 = new javax.swing.JLabel();
        jLabel26 = new javax.swing.JLabel();
        jLabel27 = new javax.swing.JLabel();
        freqSave = new javax.swing.JButton();
        freqControlTxt = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        play = new javax.swing.JButton();
        outText = new javax.swing.JLabel();
        useMIDIFile = new javax.swing.JRadioButton();
        useMIDIDevice = new javax.swing.JRadioButton();
        outToDevice = new javax.swing.JRadioButton();
        useWaveFile = new javax.swing.JRadioButton();
        useWaveFile2 = new javax.swing.JRadioButton();
        latencyPanel = new javax.swing.JPanel();
        delayTuner = new javax.swing.JSlider();
        jPanel2 = new javax.swing.JPanel();
        volPanel = new javax.swing.JPanel();
        volumeSlider = new javax.swing.JSlider();
        visualBar_volume = new javax.swing.JProgressBar();
        jLabel1 = new javax.swing.JLabel();
        volfooter = new javax.swing.JPanel();
        mute = new javax.swing.JToggleButton();
        chanPanel1 = new javax.swing.JPanel();
        volumeSlider1 = new javax.swing.JSlider();
        visualBar1 = new javax.swing.JProgressBar();
        jLabel2 = new javax.swing.JLabel();
        chFooter1 = new javax.swing.JPanel();
        mute1 = new javax.swing.JToggleButton();
        solo1 = new javax.swing.JToggleButton();
        chanPanel2 = new javax.swing.JPanel();
        volumeSlider2 = new javax.swing.JSlider();
        visualBar2 = new javax.swing.JProgressBar();
        jLabel3 = new javax.swing.JLabel();
        chFooter2 = new javax.swing.JPanel();
        mute2 = new javax.swing.JToggleButton();
        solo2 = new javax.swing.JToggleButton();
        chanPanel3 = new javax.swing.JPanel();
        volumeSlider3 = new javax.swing.JSlider();
        visualBar3 = new javax.swing.JProgressBar();
        jLabel4 = new javax.swing.JLabel();
        chFooter3 = new javax.swing.JPanel();
        mute3 = new javax.swing.JToggleButton();
        solo3 = new javax.swing.JToggleButton();
        chanPanel4 = new javax.swing.JPanel();
        volumeSlider4 = new javax.swing.JSlider();
        visualBar4 = new javax.swing.JProgressBar();
        jLabel5 = new javax.swing.JLabel();
        chFooter4 = new javax.swing.JPanel();
        mute4 = new javax.swing.JToggleButton();
        solo4 = new javax.swing.JToggleButton();
        chanPanel5 = new javax.swing.JPanel();
        volumeSlider5 = new javax.swing.JSlider();
        visualBar5 = new javax.swing.JProgressBar();
        jLabel6 = new javax.swing.JLabel();
        chFooter5 = new javax.swing.JPanel();
        mute5 = new javax.swing.JToggleButton();
        solo5 = new javax.swing.JToggleButton();
        chanPanel6 = new javax.swing.JPanel();
        volumeSlider6 = new javax.swing.JSlider();
        visualBar6 = new javax.swing.JProgressBar();
        jLabel7 = new javax.swing.JLabel();
        chFooter6 = new javax.swing.JPanel();
        mute6 = new javax.swing.JToggleButton();
        solo6 = new javax.swing.JToggleButton();
        chanPanel7 = new javax.swing.JPanel();
        volumeSlider7 = new javax.swing.JSlider();
        visualBar7 = new javax.swing.JProgressBar();
        jLabel8 = new javax.swing.JLabel();
        chFooter7 = new javax.swing.JPanel();
        mute7 = new javax.swing.JToggleButton();
        solo7 = new javax.swing.JToggleButton();
        chanPanel8 = new javax.swing.JPanel();
        volumeSlider8 = new javax.swing.JSlider();
        visualBar8 = new javax.swing.JProgressBar();
        jLabel9 = new javax.swing.JLabel();
        chFooter8 = new javax.swing.JPanel();
        mute8 = new javax.swing.JToggleButton();
        solo8 = new javax.swing.JToggleButton();
        chanPanel9 = new javax.swing.JPanel();
        volumeSlider9 = new javax.swing.JSlider();
        visualBar9 = new javax.swing.JProgressBar();
        jLabel10 = new javax.swing.JLabel();
        chFooter9 = new javax.swing.JPanel();
        mute9 = new javax.swing.JToggleButton();
        solo9 = new javax.swing.JToggleButton();
        chanPanel10 = new javax.swing.JPanel();
        volumeSlider10 = new javax.swing.JSlider();
        visualBar10 = new javax.swing.JProgressBar();
        jLabel11 = new javax.swing.JLabel();
        chFooter10 = new javax.swing.JPanel();
        mute10 = new javax.swing.JToggleButton();
        solo10 = new javax.swing.JToggleButton();
        chanPanel11 = new javax.swing.JPanel();
        volumeSlider11 = new javax.swing.JSlider();
        visualBar11 = new javax.swing.JProgressBar();
        jLabel12 = new javax.swing.JLabel();
        chFooter11 = new javax.swing.JPanel();
        mute11 = new javax.swing.JToggleButton();
        solo11 = new javax.swing.JToggleButton();
        chanPanel12 = new javax.swing.JPanel();
        volumeSlider12 = new javax.swing.JSlider();
        visualBar12 = new javax.swing.JProgressBar();
        jLabel13 = new javax.swing.JLabel();
        chFooter12 = new javax.swing.JPanel();
        mute12 = new javax.swing.JToggleButton();
        solo12 = new javax.swing.JToggleButton();
        chanPanel13 = new javax.swing.JPanel();
        volumeSlider13 = new javax.swing.JSlider();
        visualBar13 = new javax.swing.JProgressBar();
        jLabel14 = new javax.swing.JLabel();
        chFooter13 = new javax.swing.JPanel();
        mute13 = new javax.swing.JToggleButton();
        solo13 = new javax.swing.JToggleButton();
        chanPanel14 = new javax.swing.JPanel();
        volumeSlider14 = new javax.swing.JSlider();
        visualBar14 = new javax.swing.JProgressBar();
        jLabel15 = new javax.swing.JLabel();
        chFooter14 = new javax.swing.JPanel();
        mute14 = new javax.swing.JToggleButton();
        solo14 = new javax.swing.JToggleButton();
        chanPanel15 = new javax.swing.JPanel();
        volumeSlider15 = new javax.swing.JSlider();
        visualBar15 = new javax.swing.JProgressBar();
        jLabel16 = new javax.swing.JLabel();
        chFooter15 = new javax.swing.JPanel();
        mute15 = new javax.swing.JToggleButton();
        solo15 = new javax.swing.JToggleButton();
        chanPanel16 = new javax.swing.JPanel();
        volumeSlider16 = new javax.swing.JSlider();
        visualBar16 = new javax.swing.JProgressBar();
        jLabel17 = new javax.swing.JLabel();
        chFooter16 = new javax.swing.JPanel();
        mute16 = new javax.swing.JToggleButton();
        solo16 = new javax.swing.JToggleButton();
        progress = new javax.swing.JProgressBar();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        jMenuItem1 = new javax.swing.JMenuItem();
        enableAll = new javax.swing.JCheckBoxMenuItem();
        enableTop = new javax.swing.JCheckBoxMenuItem();
        enableBottom = new javax.swing.JCheckBoxMenuItem();

        freqSplitControl.setTitle("Frequency Split Control");
        freqSplitControl.setMinimumSize(new java.awt.Dimension(540, 200));

        ch1a.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch1a.setText("27.5");
        ch1a.setMinimumSize(new java.awt.Dimension(40, 25));
        ch1a.setPreferredSize(new java.awt.Dimension(40, 25));

        ch1b.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch1b.setText("69");
        ch1b.setMinimumSize(new java.awt.Dimension(40, 25));
        ch1b.setPreferredSize(new java.awt.Dimension(40, 25));
        ch1b.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ch1bActionPerformed(evt);
            }
        });

        ch2a.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch2a.setText("69");
        ch2a.setMinimumSize(new java.awt.Dimension(40, 25));
        ch2a.setPreferredSize(new java.awt.Dimension(40, 25));

        ch2b.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch2b.setText("145");
        ch2b.setMinimumSize(new java.awt.Dimension(40, 25));
        ch2b.setPreferredSize(new java.awt.Dimension(40, 25));

        ch3a.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch3a.setText("145");
        ch3a.setMinimumSize(new java.awt.Dimension(40, 25));
        ch3a.setPreferredSize(new java.awt.Dimension(40, 25));

        ch3b.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch3b.setText("220");
        ch3b.setMinimumSize(new java.awt.Dimension(40, 25));
        ch3b.setPreferredSize(new java.awt.Dimension(40, 25));

        ch4a.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch4a.setText("220");
        ch4a.setMinimumSize(new java.awt.Dimension(40, 25));
        ch4a.setPreferredSize(new java.awt.Dimension(40, 25));

        ch4b.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch4b.setText("311");
        ch4b.setMinimumSize(new java.awt.Dimension(40, 25));
        ch4b.setPreferredSize(new java.awt.Dimension(40, 25));

        ch5a.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch5a.setText("311");
        ch5a.setMinimumSize(new java.awt.Dimension(40, 25));
        ch5a.setPreferredSize(new java.awt.Dimension(40, 25));

        ch5b.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch5b.setText("466");
        ch5b.setMinimumSize(new java.awt.Dimension(40, 25));
        ch5b.setPreferredSize(new java.awt.Dimension(40, 25));

        ch6a.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch6a.setText("467");
        ch6a.setMinimumSize(new java.awt.Dimension(40, 25));
        ch6a.setPreferredSize(new java.awt.Dimension(40, 25));

        ch6b.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch6b.setText("660");
        ch6b.setMinimumSize(new java.awt.Dimension(40, 25));
        ch6b.setPreferredSize(new java.awt.Dimension(40, 25));

        ch7a.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch7a.setText("660");
        ch7a.setMinimumSize(new java.awt.Dimension(40, 25));
        ch7a.setPreferredSize(new java.awt.Dimension(40, 25));

        ch7b.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch7b.setText("1480");
        ch7b.setMinimumSize(new java.awt.Dimension(40, 25));
        ch7b.setPreferredSize(new java.awt.Dimension(40, 25));

        ch8a.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch8a.setText("1480");
        ch8a.setMinimumSize(new java.awt.Dimension(40, 25));
        ch8a.setPreferredSize(new java.awt.Dimension(40, 25));
        ch8a.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ch8aActionPerformed(evt);
            }
        });

        ch8b.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        ch8b.setText("4186");
        ch8b.setMinimumSize(new java.awt.Dimension(40, 25));
        ch8b.setPreferredSize(new java.awt.Dimension(40, 25));

        jLabel18.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel18.setText("CH 1");

        jLabel19.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel19.setText("CH 2");

        jLabel20.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel20.setText("CH 3");

        jLabel21.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel21.setText("CH 4");

        jLabel22.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel22.setText("CH 5");

        jLabel23.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel23.setText("CH 6");

        jLabel24.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel24.setText("CH 7");

        jLabel25.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel25.setText("CH 8");

        jLabel26.setText("Band Start");

        jLabel27.setText("Band Stop");

        freqSave.setText("Save");
        freqSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                freqSaveActionPerformed(evt);
            }
        });

        freqControlTxt.setText(".");

        javax.swing.GroupLayout freqSplitControlLayout = new javax.swing.GroupLayout(freqSplitControl.getContentPane());
        freqSplitControl.getContentPane().setLayout(freqSplitControlLayout);
        freqSplitControlLayout.setHorizontalGroup(
            freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(freqSplitControlLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel26)
                    .addComponent(jLabel27))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(freqSave, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(freqSplitControlLayout.createSequentialGroup()
                        .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(ch1b, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(ch1a, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel18, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addGap(18, 18, 18)
                        .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(freqSplitControlLayout.createSequentialGroup()
                                .addComponent(ch2b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(ch3b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(ch4b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(ch5b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(ch6b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(ch7b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(ch8b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(freqSplitControlLayout.createSequentialGroup()
                                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(jLabel19, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(ch2a, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(ch3a, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel20, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(ch4a, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel21, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(ch5a, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel22, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(ch6a, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel23, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(ch7a, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel24, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(18, 18, 18)
                                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(ch8a, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel25, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(freqControlTxt, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        freqSplitControlLayout.setVerticalGroup(
            freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, freqSplitControlLayout.createSequentialGroup()
                .addContainerGap(61, Short.MAX_VALUE)
                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel18)
                    .addComponent(jLabel19)
                    .addComponent(jLabel20)
                    .addComponent(jLabel21)
                    .addComponent(jLabel22)
                    .addComponent(jLabel23)
                    .addComponent(jLabel24)
                    .addComponent(jLabel25))
                .addGap(18, 18, 18)
                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ch1a, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch2a, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch3a, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch4a, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch5a, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch6a, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch7a, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch8a, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel26))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(freqSplitControlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ch1b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch2b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch3b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch4b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch5b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch6b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch7b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ch8b, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel27))
                .addGap(1, 1, 1)
                .addComponent(freqControlTxt)
                .addGap(3, 3, 3)
                .addComponent(freqSave)
                .addGap(10, 10, 10))
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setPreferredSize(new java.awt.Dimension(900, 464));

        jPanel1.setPreferredSize(new java.awt.Dimension(200, 100));

        play.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        play.setText("START");
        play.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                playActionPerformed(evt);
            }
        });

        outText.setBackground(new java.awt.Color(102, 102, 102));
        outText.setFont(new java.awt.Font("Tahoma", 2, 12)); // NOI18N
        outText.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        outText.setText("Press START to begin");
        outText.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        inputGroup.add(useMIDIFile);
        useMIDIFile.setText("Input: MIDI File");
        useMIDIFile.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                useMIDIFileActionPerformed(evt);
            }
        });

        inputGroup.add(useMIDIDevice);
        useMIDIDevice.setText("Input: MIDI Device");

        outToDevice.setSelected(true);
        outToDevice.setText("Output to Device (Chair)");
        outToDevice.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                outToDeviceActionPerformed(evt);
            }
        });

        inputGroup.add(useWaveFile);
        useWaveFile.setText("Input: Wave File (Frequency Split)");

        inputGroup.add(useWaveFile2);
        useWaveFile2.setSelected(true);
        useWaveFile2.setText("Input: Wave File (Channel Split)");

        latencyPanel.setBorder(javax.swing.BorderFactory.createTitledBorder("Latency Tuner"));

        delayTuner.setMajorTickSpacing(1);
        delayTuner.setMaximum(8);
        delayTuner.setMinimum(-2);
        delayTuner.setMinorTickSpacing(1);
        delayTuner.setPaintTicks(true);
        delayTuner.setToolTipText("tet");
        delayTuner.setValue(3);

        javax.swing.GroupLayout latencyPanelLayout = new javax.swing.GroupLayout(latencyPanel);
        latencyPanel.setLayout(latencyPanelLayout);
        latencyPanelLayout.setHorizontalGroup(
            latencyPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(latencyPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(delayTuner, javax.swing.GroupLayout.DEFAULT_SIZE, 250, Short.MAX_VALUE)
                .addContainerGap())
        );
        latencyPanelLayout.setVerticalGroup(
            latencyPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(latencyPanelLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(delayTuner, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(play, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(latencyPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(78, 78, 78)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(useMIDIFile, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(useMIDIDevice, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(18, 18, 18)
                        .addComponent(outToDevice))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(useWaveFile)
                            .addComponent(useWaveFile2))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addGap(150, 150, 150))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(outText, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(outText)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(play)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(useMIDIDevice)
                        .addComponent(outToDevice)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(useMIDIFile)
                        .addGap(2, 2, 2)
                        .addComponent(useWaveFile)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(useWaveFile2)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(latencyPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );

        jPanel2.setBackground(new java.awt.Color(51, 51, 51));

        volPanel.setBackground(new java.awt.Color(153, 153, 153));
        volPanel.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        volumeSlider.setMajorTickSpacing(50);
        volumeSlider.setMaximum(200);
        volumeSlider.setMinorTickSpacing(5);
        volumeSlider.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider.setPaintTicks(true);
        volumeSlider.setValue(100);
        volumeSlider.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar_volume.setOrientation(1);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Volume");

        volfooter.setBackground(new java.awt.Color(153, 153, 153));
        volfooter.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute.setBackground(new java.awt.Color(0, 0, 0));
        mute.setForeground(new java.awt.Color(255, 255, 255));
        mute.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute.setToolTipText("Mute");
        mute.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute.setMaximumSize(new java.awt.Dimension(261, 109));
        mute.setMinimumSize(new java.awt.Dimension(261, 109));
        mute.setPreferredSize(new java.awt.Dimension(261, 109));
        mute.setRolloverEnabled(false);
        mute.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                muteActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout volfooterLayout = new javax.swing.GroupLayout(volfooter);
        volfooter.setLayout(volfooterLayout);
        volfooterLayout.setHorizontalGroup(
            volfooterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(mute, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );
        volfooterLayout.setVerticalGroup(
            volfooterLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(mute, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout volPanelLayout = new javax.swing.GroupLayout(volPanel);
        volPanel.setLayout(volPanelLayout);
        volPanelLayout.setHorizontalGroup(
            volPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(volPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(volPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(volPanelLayout.createSequentialGroup()
                        .addComponent(visualBar_volume, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(volumeSlider, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(volfooter, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        volPanelLayout.setVerticalGroup(
            volPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(volPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(volPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar_volume, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(volumeSlider, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(volfooter, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel1))
        );

        chanPanel1.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        chanPanel1.setPreferredSize(new java.awt.Dimension(82, 235));

        volumeSlider1.setMajorTickSpacing(50);
        volumeSlider1.setMaximum(200);
        volumeSlider1.setMinorTickSpacing(5);
        volumeSlider1.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider1.setPaintTicks(true);
        volumeSlider1.setValue(100);
        volumeSlider1.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar1.setOrientation(1);

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Channel 1");

        chFooter1.setBackground(new java.awt.Color(153, 153, 153));
        chFooter1.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute1.setForeground(new java.awt.Color(255, 255, 255));
        mute1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute1.setToolTipText("Mute");
        mute1.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute1.setMaximumSize(new java.awt.Dimension(261, 109));
        mute1.setMinimumSize(new java.awt.Dimension(261, 109));
        mute1.setPreferredSize(new java.awt.Dimension(261, 109));
        mute1.setRolloverEnabled(false);
        mute1.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute1ActionPerformed(evt);
            }
        });

        solo1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo1.setToolTipText("Solo");
        solo1.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo1.setRolloverEnabled(false);
        solo1.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter1Layout = new javax.swing.GroupLayout(chFooter1);
        chFooter1.setLayout(chFooter1Layout);
        chFooter1Layout.setHorizontalGroup(
            chFooter1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter1Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter1Layout.setVerticalGroup(
            chFooter1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(solo1, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
            .addComponent(mute1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout chanPanel1Layout = new javax.swing.GroupLayout(chanPanel1);
        chanPanel1.setLayout(chanPanel1Layout);
        chanPanel1Layout.setHorizontalGroup(
            chanPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel1Layout.createSequentialGroup()
                        .addComponent(visualBar1, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider1, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel1Layout.setVerticalGroup(
            chanPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(volumeSlider1, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel2))
        );

        chanPanel2.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        volumeSlider2.setMajorTickSpacing(50);
        volumeSlider2.setMaximum(200);
        volumeSlider2.setMinorTickSpacing(5);
        volumeSlider2.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider2.setPaintTicks(true);
        volumeSlider2.setValue(100);
        volumeSlider2.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar2.setOrientation(1);

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("Channel 2");

        chFooter2.setBackground(new java.awt.Color(153, 153, 153));
        chFooter2.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute2.setForeground(new java.awt.Color(255, 255, 255));
        mute2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute2.setToolTipText("Mute");
        mute2.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute2.setMaximumSize(new java.awt.Dimension(261, 109));
        mute2.setMinimumSize(new java.awt.Dimension(261, 109));
        mute2.setPreferredSize(new java.awt.Dimension(261, 109));
        mute2.setRolloverEnabled(false);
        mute2.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute2ActionPerformed(evt);
            }
        });

        solo2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo2.setToolTipText("Solo");
        solo2.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo2.setRolloverEnabled(false);
        solo2.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo2ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter2Layout = new javax.swing.GroupLayout(chFooter2);
        chFooter2.setLayout(chFooter2Layout);
        chFooter2Layout.setHorizontalGroup(
            chFooter2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter2Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute2, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo2, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter2Layout.setVerticalGroup(
            chFooter2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter2Layout.createSequentialGroup()
                .addGroup(chFooter2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(solo2, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
                    .addComponent(mute2, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addGap(1, 1, 1))
        );

        javax.swing.GroupLayout chanPanel2Layout = new javax.swing.GroupLayout(chanPanel2);
        chanPanel2.setLayout(chanPanel2Layout);
        chanPanel2Layout.setHorizontalGroup(
            chanPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel2Layout.createSequentialGroup()
                        .addComponent(visualBar2, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider2, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel2Layout.setVerticalGroup(
            chanPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chanPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(volumeSlider2, javax.swing.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel3))
        );

        chanPanel3.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        chanPanel3.setPreferredSize(new java.awt.Dimension(82, 235));

        volumeSlider3.setMajorTickSpacing(50);
        volumeSlider3.setMaximum(200);
        volumeSlider3.setMinorTickSpacing(5);
        volumeSlider3.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider3.setPaintTicks(true);
        volumeSlider3.setValue(100);
        volumeSlider3.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar3.setOrientation(1);

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setText("Channel 3");

        chFooter3.setBackground(new java.awt.Color(153, 153, 153));
        chFooter3.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute3.setForeground(new java.awt.Color(255, 255, 255));
        mute3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute3.setToolTipText("Mute");
        mute3.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute3.setMaximumSize(new java.awt.Dimension(261, 109));
        mute3.setMinimumSize(new java.awt.Dimension(261, 109));
        mute3.setPreferredSize(new java.awt.Dimension(261, 109));
        mute3.setRolloverEnabled(false);
        mute3.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute3ActionPerformed(evt);
            }
        });

        solo3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo3.setToolTipText("Solo");
        solo3.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo3.setRolloverEnabled(false);
        solo3.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter3Layout = new javax.swing.GroupLayout(chFooter3);
        chFooter3.setLayout(chFooter3Layout);
        chFooter3Layout.setHorizontalGroup(
            chFooter3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter3Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute3, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo3, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter3Layout.setVerticalGroup(
            chFooter3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(solo3, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
            .addComponent(mute3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout chanPanel3Layout = new javax.swing.GroupLayout(chanPanel3);
        chanPanel3.setLayout(chanPanel3Layout);
        chanPanel3Layout.setHorizontalGroup(
            chanPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel3Layout.createSequentialGroup()
                        .addComponent(visualBar3, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider3, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel3Layout.setVerticalGroup(
            chanPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar3, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE)
                    .addComponent(volumeSlider3, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel4))
        );

        chanPanel4.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        volumeSlider4.setMajorTickSpacing(50);
        volumeSlider4.setMaximum(200);
        volumeSlider4.setMinorTickSpacing(5);
        volumeSlider4.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider4.setPaintTicks(true);
        volumeSlider4.setValue(100);
        volumeSlider4.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar4.setOrientation(1);

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("Channel 4");

        chFooter4.setBackground(new java.awt.Color(153, 153, 153));
        chFooter4.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute4.setForeground(new java.awt.Color(255, 255, 255));
        mute4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute4.setToolTipText("Mute");
        mute4.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute4.setMaximumSize(new java.awt.Dimension(261, 109));
        mute4.setMinimumSize(new java.awt.Dimension(261, 109));
        mute4.setPreferredSize(new java.awt.Dimension(261, 109));
        mute4.setRolloverEnabled(false);
        mute4.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute4ActionPerformed(evt);
            }
        });

        solo4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo4.setToolTipText("Solo");
        solo4.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo4.setRolloverEnabled(false);
        solo4.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo4ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter4Layout = new javax.swing.GroupLayout(chFooter4);
        chFooter4.setLayout(chFooter4Layout);
        chFooter4Layout.setHorizontalGroup(
            chFooter4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter4Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute4, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo4, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter4Layout.setVerticalGroup(
            chFooter4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter4Layout.createSequentialGroup()
                .addGroup(chFooter4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(solo4, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
                    .addComponent(mute4, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addGap(1, 1, 1))
        );

        javax.swing.GroupLayout chanPanel4Layout = new javax.swing.GroupLayout(chanPanel4);
        chanPanel4.setLayout(chanPanel4Layout);
        chanPanel4Layout.setHorizontalGroup(
            chanPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel4Layout.createSequentialGroup()
                        .addComponent(visualBar4, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider4, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel4Layout.setVerticalGroup(
            chanPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chanPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar4, javax.swing.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE)
                    .addComponent(volumeSlider4, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel5))
        );

        chanPanel5.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel5.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        chanPanel5.setPreferredSize(new java.awt.Dimension(82, 235));

        volumeSlider5.setMajorTickSpacing(50);
        volumeSlider5.setMaximum(200);
        volumeSlider5.setMinorTickSpacing(5);
        volumeSlider5.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider5.setPaintTicks(true);
        volumeSlider5.setValue(100);
        volumeSlider5.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar5.setOrientation(1);

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("Channel 5");

        chFooter5.setBackground(new java.awt.Color(153, 153, 153));
        chFooter5.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute5.setForeground(new java.awt.Color(255, 255, 255));
        mute5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute5.setToolTipText("Mute");
        mute5.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute5.setMaximumSize(new java.awt.Dimension(261, 109));
        mute5.setMinimumSize(new java.awt.Dimension(261, 109));
        mute5.setPreferredSize(new java.awt.Dimension(261, 109));
        mute5.setRolloverEnabled(false);
        mute5.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute5ActionPerformed(evt);
            }
        });

        solo5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo5.setToolTipText("Solo");
        solo5.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo5.setRolloverEnabled(false);
        solo5.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo5ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter5Layout = new javax.swing.GroupLayout(chFooter5);
        chFooter5.setLayout(chFooter5Layout);
        chFooter5Layout.setHorizontalGroup(
            chFooter5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter5Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute5, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo5, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter5Layout.setVerticalGroup(
            chFooter5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(solo5, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
            .addComponent(mute5, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout chanPanel5Layout = new javax.swing.GroupLayout(chanPanel5);
        chanPanel5.setLayout(chanPanel5Layout);
        chanPanel5Layout.setHorizontalGroup(
            chanPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel5Layout.createSequentialGroup()
                        .addComponent(visualBar5, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider5, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel6, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel5Layout.setVerticalGroup(
            chanPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar5, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE)
                    .addComponent(volumeSlider5, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel6))
        );

        chanPanel6.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel6.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        volumeSlider6.setMajorTickSpacing(50);
        volumeSlider6.setMaximum(200);
        volumeSlider6.setMinorTickSpacing(5);
        volumeSlider6.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider6.setPaintTicks(true);
        volumeSlider6.setValue(100);
        volumeSlider6.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar6.setOrientation(1);

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("Channel 6");

        chFooter6.setBackground(new java.awt.Color(153, 153, 153));
        chFooter6.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute6.setForeground(new java.awt.Color(255, 255, 255));
        mute6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute6.setToolTipText("Mute");
        mute6.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute6.setMaximumSize(new java.awt.Dimension(261, 109));
        mute6.setMinimumSize(new java.awt.Dimension(261, 109));
        mute6.setPreferredSize(new java.awt.Dimension(261, 109));
        mute6.setRolloverEnabled(false);
        mute6.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute6ActionPerformed(evt);
            }
        });

        solo6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo6.setToolTipText("Solo");
        solo6.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo6.setRolloverEnabled(false);
        solo6.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo6ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter6Layout = new javax.swing.GroupLayout(chFooter6);
        chFooter6.setLayout(chFooter6Layout);
        chFooter6Layout.setHorizontalGroup(
            chFooter6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter6Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute6, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo6, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter6Layout.setVerticalGroup(
            chFooter6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter6Layout.createSequentialGroup()
                .addGroup(chFooter6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(solo6, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
                    .addComponent(mute6, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addGap(1, 1, 1))
        );

        javax.swing.GroupLayout chanPanel6Layout = new javax.swing.GroupLayout(chanPanel6);
        chanPanel6.setLayout(chanPanel6Layout);
        chanPanel6Layout.setHorizontalGroup(
            chanPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel6Layout.createSequentialGroup()
                        .addComponent(visualBar6, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider6, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel6Layout.setVerticalGroup(
            chanPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chanPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar6, javax.swing.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE)
                    .addComponent(volumeSlider6, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel7))
        );

        chanPanel7.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel7.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        chanPanel7.setPreferredSize(new java.awt.Dimension(82, 235));

        volumeSlider7.setMajorTickSpacing(50);
        volumeSlider7.setMaximum(200);
        volumeSlider7.setMinorTickSpacing(5);
        volumeSlider7.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider7.setPaintTicks(true);
        volumeSlider7.setValue(100);
        volumeSlider7.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar7.setOrientation(1);

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("Channel 7");

        chFooter7.setBackground(new java.awt.Color(153, 153, 153));
        chFooter7.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute7.setForeground(new java.awt.Color(255, 255, 255));
        mute7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute7.setToolTipText("Mute");
        mute7.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute7.setMaximumSize(new java.awt.Dimension(261, 109));
        mute7.setMinimumSize(new java.awt.Dimension(261, 109));
        mute7.setPreferredSize(new java.awt.Dimension(261, 109));
        mute7.setRolloverEnabled(false);
        mute7.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute7ActionPerformed(evt);
            }
        });

        solo7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo7.setToolTipText("Solo");
        solo7.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo7.setRolloverEnabled(false);
        solo7.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo7ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter7Layout = new javax.swing.GroupLayout(chFooter7);
        chFooter7.setLayout(chFooter7Layout);
        chFooter7Layout.setHorizontalGroup(
            chFooter7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter7Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute7, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo7, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter7Layout.setVerticalGroup(
            chFooter7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(solo7, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
            .addComponent(mute7, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout chanPanel7Layout = new javax.swing.GroupLayout(chanPanel7);
        chanPanel7.setLayout(chanPanel7Layout);
        chanPanel7Layout.setHorizontalGroup(
            chanPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel7Layout.createSequentialGroup()
                        .addComponent(visualBar7, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider7, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel7Layout.setVerticalGroup(
            chanPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar7, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE)
                    .addComponent(volumeSlider7, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel8))
        );

        chanPanel8.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel8.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        volumeSlider8.setMajorTickSpacing(50);
        volumeSlider8.setMaximum(200);
        volumeSlider8.setMinorTickSpacing(5);
        volumeSlider8.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider8.setPaintTicks(true);
        volumeSlider8.setValue(100);
        volumeSlider8.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar8.setOrientation(1);

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("Channel 8");

        chFooter8.setBackground(new java.awt.Color(153, 153, 153));
        chFooter8.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute8.setForeground(new java.awt.Color(255, 255, 255));
        mute8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute8.setToolTipText("Mute");
        mute8.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute8.setMaximumSize(new java.awt.Dimension(261, 109));
        mute8.setMinimumSize(new java.awt.Dimension(261, 109));
        mute8.setPreferredSize(new java.awt.Dimension(261, 109));
        mute8.setRolloverEnabled(false);
        mute8.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute8ActionPerformed(evt);
            }
        });

        solo8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo8.setToolTipText("Solo");
        solo8.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo8.setRolloverEnabled(false);
        solo8.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo8ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter8Layout = new javax.swing.GroupLayout(chFooter8);
        chFooter8.setLayout(chFooter8Layout);
        chFooter8Layout.setHorizontalGroup(
            chFooter8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter8Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute8, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo8, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter8Layout.setVerticalGroup(
            chFooter8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter8Layout.createSequentialGroup()
                .addGroup(chFooter8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(solo8, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
                    .addComponent(mute8, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addGap(1, 1, 1))
        );

        javax.swing.GroupLayout chanPanel8Layout = new javax.swing.GroupLayout(chanPanel8);
        chanPanel8.setLayout(chanPanel8Layout);
        chanPanel8Layout.setHorizontalGroup(
            chanPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel8Layout.createSequentialGroup()
                        .addComponent(visualBar8, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider8, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel8Layout.setVerticalGroup(
            chanPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chanPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar8, javax.swing.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE)
                    .addComponent(volumeSlider8, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel9))
        );

        chanPanel9.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel9.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        chanPanel9.setPreferredSize(new java.awt.Dimension(82, 235));

        volumeSlider9.setMajorTickSpacing(50);
        volumeSlider9.setMaximum(200);
        volumeSlider9.setMinorTickSpacing(5);
        volumeSlider9.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider9.setPaintTicks(true);
        volumeSlider9.setValue(100);
        volumeSlider9.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar9.setOrientation(1);

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel10.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel10.setText("Channel 9");

        chFooter9.setBackground(new java.awt.Color(153, 153, 153));
        chFooter9.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute9.setForeground(new java.awt.Color(255, 255, 255));
        mute9.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute9.setToolTipText("Mute");
        mute9.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute9.setMaximumSize(new java.awt.Dimension(261, 109));
        mute9.setMinimumSize(new java.awt.Dimension(261, 109));
        mute9.setPreferredSize(new java.awt.Dimension(261, 109));
        mute9.setRolloverEnabled(false);
        mute9.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute9ActionPerformed(evt);
            }
        });

        solo9.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo9.setToolTipText("Solo");
        solo9.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo9.setRolloverEnabled(false);
        solo9.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo9ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter9Layout = new javax.swing.GroupLayout(chFooter9);
        chFooter9.setLayout(chFooter9Layout);
        chFooter9Layout.setHorizontalGroup(
            chFooter9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter9Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute9, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo9, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter9Layout.setVerticalGroup(
            chFooter9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(solo9, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
            .addComponent(mute9, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout chanPanel9Layout = new javax.swing.GroupLayout(chanPanel9);
        chanPanel9.setLayout(chanPanel9Layout);
        chanPanel9Layout.setHorizontalGroup(
            chanPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel9Layout.createSequentialGroup()
                        .addComponent(visualBar9, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider9, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel10, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel9Layout.setVerticalGroup(
            chanPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar9, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE)
                    .addComponent(volumeSlider9, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter9, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel10))
        );

        chanPanel10.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel10.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        volumeSlider10.setMajorTickSpacing(50);
        volumeSlider10.setMaximum(200);
        volumeSlider10.setMinorTickSpacing(5);
        volumeSlider10.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider10.setPaintTicks(true);
        volumeSlider10.setValue(100);
        volumeSlider10.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar10.setOrientation(1);

        jLabel11.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel11.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel11.setText("Channel 10");

        chFooter10.setBackground(new java.awt.Color(153, 153, 153));
        chFooter10.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute10.setForeground(new java.awt.Color(255, 255, 255));
        mute10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute10.setToolTipText("Mute");
        mute10.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute10.setMaximumSize(new java.awt.Dimension(261, 109));
        mute10.setMinimumSize(new java.awt.Dimension(261, 109));
        mute10.setPreferredSize(new java.awt.Dimension(261, 109));
        mute10.setRolloverEnabled(false);
        mute10.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute10ActionPerformed(evt);
            }
        });

        solo10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo10.setToolTipText("Solo");
        solo10.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo10.setRolloverEnabled(false);
        solo10.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo10ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter10Layout = new javax.swing.GroupLayout(chFooter10);
        chFooter10.setLayout(chFooter10Layout);
        chFooter10Layout.setHorizontalGroup(
            chFooter10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter10Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute10, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo10, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter10Layout.setVerticalGroup(
            chFooter10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter10Layout.createSequentialGroup()
                .addGroup(chFooter10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(solo10, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
                    .addComponent(mute10, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addGap(1, 1, 1))
        );

        javax.swing.GroupLayout chanPanel10Layout = new javax.swing.GroupLayout(chanPanel10);
        chanPanel10.setLayout(chanPanel10Layout);
        chanPanel10Layout.setHorizontalGroup(
            chanPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel10Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter10, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel10Layout.createSequentialGroup()
                        .addComponent(visualBar10, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider10, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel11, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel10Layout.setVerticalGroup(
            chanPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chanPanel10Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar10, javax.swing.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE)
                    .addComponent(volumeSlider10, javax.swing.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter10, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel11))
        );

        chanPanel11.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel11.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        chanPanel11.setPreferredSize(new java.awt.Dimension(82, 235));

        volumeSlider11.setMajorTickSpacing(50);
        volumeSlider11.setMaximum(200);
        volumeSlider11.setMinorTickSpacing(5);
        volumeSlider11.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider11.setPaintTicks(true);
        volumeSlider11.setValue(100);
        volumeSlider11.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar11.setOrientation(1);

        jLabel12.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel12.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel12.setText("Channel 11");

        chFooter11.setBackground(new java.awt.Color(153, 153, 153));
        chFooter11.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute11.setForeground(new java.awt.Color(255, 255, 255));
        mute11.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute11.setToolTipText("Mute");
        mute11.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute11.setMaximumSize(new java.awt.Dimension(261, 109));
        mute11.setMinimumSize(new java.awt.Dimension(261, 109));
        mute11.setPreferredSize(new java.awt.Dimension(261, 109));
        mute11.setRolloverEnabled(false);
        mute11.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute11ActionPerformed(evt);
            }
        });

        solo11.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo11.setToolTipText("Solo");
        solo11.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo11.setRolloverEnabled(false);
        solo11.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo11ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter11Layout = new javax.swing.GroupLayout(chFooter11);
        chFooter11.setLayout(chFooter11Layout);
        chFooter11Layout.setHorizontalGroup(
            chFooter11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter11Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute11, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo11, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter11Layout.setVerticalGroup(
            chFooter11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(solo11, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
            .addComponent(mute11, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout chanPanel11Layout = new javax.swing.GroupLayout(chanPanel11);
        chanPanel11.setLayout(chanPanel11Layout);
        chanPanel11Layout.setHorizontalGroup(
            chanPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel11Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter11, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel11Layout.createSequentialGroup()
                        .addComponent(visualBar11, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider11, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel12, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel11Layout.setVerticalGroup(
            chanPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel11Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar11, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE)
                    .addComponent(volumeSlider11, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter11, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel12))
        );

        chanPanel12.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel12.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        volumeSlider12.setMajorTickSpacing(50);
        volumeSlider12.setMaximum(200);
        volumeSlider12.setMinorTickSpacing(5);
        volumeSlider12.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider12.setPaintTicks(true);
        volumeSlider12.setValue(100);
        volumeSlider12.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar12.setOrientation(1);

        jLabel13.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel13.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel13.setText("Channel 12");

        chFooter12.setBackground(new java.awt.Color(153, 153, 153));
        chFooter12.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute12.setForeground(new java.awt.Color(255, 255, 255));
        mute12.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute12.setToolTipText("Mute");
        mute12.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute12.setMaximumSize(new java.awt.Dimension(261, 109));
        mute12.setMinimumSize(new java.awt.Dimension(261, 109));
        mute12.setPreferredSize(new java.awt.Dimension(261, 109));
        mute12.setRolloverEnabled(false);
        mute12.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute12.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute12ActionPerformed(evt);
            }
        });

        solo12.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo12.setToolTipText("Solo");
        solo12.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo12.setRolloverEnabled(false);
        solo12.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo12.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo12ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter12Layout = new javax.swing.GroupLayout(chFooter12);
        chFooter12.setLayout(chFooter12Layout);
        chFooter12Layout.setHorizontalGroup(
            chFooter12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter12Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute12, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo12, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter12Layout.setVerticalGroup(
            chFooter12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter12Layout.createSequentialGroup()
                .addGroup(chFooter12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(solo12, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
                    .addComponent(mute12, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addGap(1, 1, 1))
        );

        javax.swing.GroupLayout chanPanel12Layout = new javax.swing.GroupLayout(chanPanel12);
        chanPanel12.setLayout(chanPanel12Layout);
        chanPanel12Layout.setHorizontalGroup(
            chanPanel12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel12Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter12, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel12Layout.createSequentialGroup()
                        .addComponent(visualBar12, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider12, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel13, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel12Layout.setVerticalGroup(
            chanPanel12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chanPanel12Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel12Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar12, javax.swing.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE)
                    .addComponent(volumeSlider12, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter12, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel13))
        );

        chanPanel13.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel13.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        chanPanel13.setPreferredSize(new java.awt.Dimension(82, 235));

        volumeSlider13.setMajorTickSpacing(50);
        volumeSlider13.setMaximum(200);
        volumeSlider13.setMinorTickSpacing(5);
        volumeSlider13.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider13.setPaintTicks(true);
        volumeSlider13.setValue(100);
        volumeSlider13.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar13.setOrientation(1);

        jLabel14.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel14.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel14.setText("Channel 13");

        chFooter13.setBackground(new java.awt.Color(153, 153, 153));
        chFooter13.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute13.setForeground(new java.awt.Color(255, 255, 255));
        mute13.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute13.setToolTipText("Mute");
        mute13.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute13.setMaximumSize(new java.awt.Dimension(261, 109));
        mute13.setMinimumSize(new java.awt.Dimension(261, 109));
        mute13.setPreferredSize(new java.awt.Dimension(261, 109));
        mute13.setRolloverEnabled(false);
        mute13.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute13.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute13ActionPerformed(evt);
            }
        });

        solo13.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo13.setToolTipText("Solo");
        solo13.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo13.setRolloverEnabled(false);
        solo13.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo13.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo13ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter13Layout = new javax.swing.GroupLayout(chFooter13);
        chFooter13.setLayout(chFooter13Layout);
        chFooter13Layout.setHorizontalGroup(
            chFooter13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter13Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute13, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo13, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter13Layout.setVerticalGroup(
            chFooter13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(solo13, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
            .addComponent(mute13, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout chanPanel13Layout = new javax.swing.GroupLayout(chanPanel13);
        chanPanel13.setLayout(chanPanel13Layout);
        chanPanel13Layout.setHorizontalGroup(
            chanPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel13Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter13, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel13Layout.createSequentialGroup()
                        .addComponent(visualBar13, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider13, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel14, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel13Layout.setVerticalGroup(
            chanPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel13Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar13, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE)
                    .addComponent(volumeSlider13, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter13, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel14))
        );

        chanPanel14.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel14.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        volumeSlider14.setMajorTickSpacing(50);
        volumeSlider14.setMaximum(200);
        volumeSlider14.setMinorTickSpacing(5);
        volumeSlider14.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider14.setPaintTicks(true);
        volumeSlider14.setValue(100);
        volumeSlider14.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar14.setOrientation(1);

        jLabel15.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel15.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel15.setText("Channel 14");

        chFooter14.setBackground(new java.awt.Color(153, 153, 153));
        chFooter14.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute14.setForeground(new java.awt.Color(255, 255, 255));
        mute14.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute14.setToolTipText("Mute");
        mute14.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute14.setMaximumSize(new java.awt.Dimension(261, 109));
        mute14.setMinimumSize(new java.awt.Dimension(261, 109));
        mute14.setPreferredSize(new java.awt.Dimension(261, 109));
        mute14.setRolloverEnabled(false);
        mute14.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute14ActionPerformed(evt);
            }
        });

        solo14.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo14.setToolTipText("Solo");
        solo14.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo14.setRolloverEnabled(false);
        solo14.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo14ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter14Layout = new javax.swing.GroupLayout(chFooter14);
        chFooter14.setLayout(chFooter14Layout);
        chFooter14Layout.setHorizontalGroup(
            chFooter14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter14Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute14, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo14, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter14Layout.setVerticalGroup(
            chFooter14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter14Layout.createSequentialGroup()
                .addGroup(chFooter14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(solo14, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
                    .addComponent(mute14, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addGap(1, 1, 1))
        );

        javax.swing.GroupLayout chanPanel14Layout = new javax.swing.GroupLayout(chanPanel14);
        chanPanel14.setLayout(chanPanel14Layout);
        chanPanel14Layout.setHorizontalGroup(
            chanPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel14Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter14, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel14Layout.createSequentialGroup()
                        .addComponent(visualBar14, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider14, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel15, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel14Layout.setVerticalGroup(
            chanPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chanPanel14Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar14, javax.swing.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE)
                    .addComponent(volumeSlider14, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter14, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel15))
        );

        chanPanel15.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel15.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        chanPanel15.setPreferredSize(new java.awt.Dimension(82, 235));

        volumeSlider15.setMajorTickSpacing(50);
        volumeSlider15.setMaximum(200);
        volumeSlider15.setMinorTickSpacing(5);
        volumeSlider15.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider15.setPaintTicks(true);
        volumeSlider15.setValue(100);
        volumeSlider15.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar15.setOrientation(1);

        jLabel16.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel16.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel16.setText("Channel 15");

        chFooter15.setBackground(new java.awt.Color(153, 153, 153));
        chFooter15.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute15.setForeground(new java.awt.Color(255, 255, 255));
        mute15.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute15.setToolTipText("Mute");
        mute15.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute15.setMaximumSize(new java.awt.Dimension(261, 109));
        mute15.setMinimumSize(new java.awt.Dimension(261, 109));
        mute15.setPreferredSize(new java.awt.Dimension(261, 109));
        mute15.setRolloverEnabled(false);
        mute15.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute15.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute15ActionPerformed(evt);
            }
        });

        solo15.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo15.setToolTipText("Solo");
        solo15.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo15.setRolloverEnabled(false);
        solo15.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo15.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo15ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter15Layout = new javax.swing.GroupLayout(chFooter15);
        chFooter15.setLayout(chFooter15Layout);
        chFooter15Layout.setHorizontalGroup(
            chFooter15Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter15Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute15, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo15, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter15Layout.setVerticalGroup(
            chFooter15Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(solo15, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
            .addComponent(mute15, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout chanPanel15Layout = new javax.swing.GroupLayout(chanPanel15);
        chanPanel15.setLayout(chanPanel15Layout);
        chanPanel15Layout.setHorizontalGroup(
            chanPanel15Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel15Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel15Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter15, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel15Layout.createSequentialGroup()
                        .addComponent(visualBar15, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider15, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel16, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel15Layout.setVerticalGroup(
            chanPanel15Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel15Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel15Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar15, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE)
                    .addComponent(volumeSlider15, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter15, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel16))
        );

        chanPanel16.setBackground(new java.awt.Color(153, 153, 153));
        chanPanel16.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        volumeSlider16.setMajorTickSpacing(50);
        volumeSlider16.setMaximum(200);
        volumeSlider16.setMinorTickSpacing(5);
        volumeSlider16.setOrientation(javax.swing.JSlider.VERTICAL);
        volumeSlider16.setPaintTicks(true);
        volumeSlider16.setValue(100);
        volumeSlider16.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        visualBar16.setOrientation(1);

        jLabel17.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel17.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel17.setText("Channel 16");

        chFooter16.setBackground(new java.awt.Color(153, 153, 153));
        chFooter16.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        mute16.setForeground(new java.awt.Color(255, 255, 255));
        mute16.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_off.png"))); // NOI18N
        mute16.setToolTipText("Mute");
        mute16.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        mute16.setMaximumSize(new java.awt.Dimension(261, 109));
        mute16.setMinimumSize(new java.awt.Dimension(261, 109));
        mute16.setPreferredSize(new java.awt.Dimension(261, 109));
        mute16.setRolloverEnabled(false);
        mute16.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/mute_on.png"))); // NOI18N
        mute16.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mute16ActionPerformed(evt);
            }
        });

        solo16.setIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_off.png"))); // NOI18N
        solo16.setToolTipText("Solo");
        solo16.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        solo16.setRolloverEnabled(false);
        solo16.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/vibrointerpreter/icons/solo_on.png"))); // NOI18N
        solo16.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solo16ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout chFooter16Layout = new javax.swing.GroupLayout(chFooter16);
        chFooter16.setLayout(chFooter16Layout);
        chFooter16Layout.setHorizontalGroup(
            chFooter16Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter16Layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(mute16, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solo16, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(2, 2, 2))
        );
        chFooter16Layout.setVerticalGroup(
            chFooter16Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chFooter16Layout.createSequentialGroup()
                .addGroup(chFooter16Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(solo16, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 22, Short.MAX_VALUE)
                    .addComponent(mute16, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addGap(1, 1, 1))
        );

        javax.swing.GroupLayout chanPanel16Layout = new javax.swing.GroupLayout(chanPanel16);
        chanPanel16.setLayout(chanPanel16Layout);
        chanPanel16Layout.setHorizontalGroup(
            chanPanel16Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(chanPanel16Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel16Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chFooter16, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(chanPanel16Layout.createSequentialGroup()
                        .addComponent(visualBar16, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(volumeSlider16, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addComponent(jLabel17, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        chanPanel16Layout.setVerticalGroup(
            chanPanel16Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, chanPanel16Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(chanPanel16Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(visualBar16, javax.swing.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE)
                    .addComponent(volumeSlider16, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(chFooter16, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel17))
        );

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(volPanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel7, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel9, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel10, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel11, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel12, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel13, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel14, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel15, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(chanPanel16, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chanPanel16, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(chanPanel15, javax.swing.GroupLayout.DEFAULT_SIZE, 228, Short.MAX_VALUE)
                    .addComponent(chanPanel14, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(chanPanel13, javax.swing.GroupLayout.DEFAULT_SIZE, 228, Short.MAX_VALUE)
                    .addComponent(chanPanel12, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(chanPanel11, javax.swing.GroupLayout.DEFAULT_SIZE, 228, Short.MAX_VALUE)
                    .addComponent(chanPanel10, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(chanPanel9, javax.swing.GroupLayout.DEFAULT_SIZE, 228, Short.MAX_VALUE)
                    .addComponent(chanPanel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(chanPanel7, javax.swing.GroupLayout.DEFAULT_SIZE, 228, Short.MAX_VALUE)
                    .addComponent(chanPanel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(chanPanel5, javax.swing.GroupLayout.DEFAULT_SIZE, 228, Short.MAX_VALUE)
                    .addComponent(chanPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(chanPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, 228, Short.MAX_VALUE)
                    .addComponent(chanPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(chanPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 228, Short.MAX_VALUE)
                    .addComponent(volPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        progress.setPreferredSize(new java.awt.Dimension(146, 5));

        jMenu1.setText("Menu");

        jMenuItem1.setText("Frequency Split Control");
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItem1);

        channelEnable.add(enableAll);
        enableAll.setSelected(true);
        enableAll.setText("Enable All Channels");
        jMenu1.add(enableAll);

        channelEnable.add(enableTop);
        enableTop.setText("Enable only Top Channels");
        enableTop.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                enableTopActionPerformed(evt);
            }
        });
        jMenu1.add(enableTop);

        channelEnable.add(enableBottom);
        enableBottom.setText("Enable only Bottom Channels");
        enableBottom.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                enableBottomActionPerformed(evt);
            }
        });
        jMenu1.add(enableBottom);

        jMenuBar1.add(jMenu1);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1695, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addComponent(progress, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 127, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(progress, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(21, 21, 21))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void playActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_playActionPerformed
        
        if(play.getText().equals("START")){
            play.setText("STOP");
            fileFound=false;
            if(useMIDIDevice.isSelected()){
                VibroHelper midiHelper2 = new VibroHelper(this);
                midiHelper2.midiKeyboard();
            }           
            else if (useMIDIFile.isSelected()){
                VibroHelper midiHelper = new VibroHelper(this);            
                try{           
                    if(!fileFound){
                        int rVal = c.showOpenDialog(VibroGUI.this);
                        if (rVal == JFileChooser.APPROVE_OPTION) {
                            outText.setText(c.getSelectedFile().getName());
                            fileFound=true;
                            midiHelper.translate(c.getSelectedFile(),2);                    
                        }
                    }else{
                        midiHelper.translate(c.getSelectedFile(),2);
                    }            
                }catch(Exception e){System.out.println("AN error occured");} 
            }
            else if (useWaveFile.isSelected()){
                VibroHelper wavHelper = new VibroHelper(this);
                int rVal = c.showOpenDialog(VibroGUI.this);
                if (rVal == JFileChooser.APPROVE_OPTION) {
                    fileFound=true;
                    outText.setText("Loading file...please wait");
                    String [] filePath = {c.getSelectedFile().getAbsolutePath()};                
                    float[][]data = FreqFilter.main(filePath);
                    for(int i=1; i<=8; i++){
                        wavHelper.playWave(i,data); 
                    }
                    latencyPanel.setVisible(true);                    
                    outText.setText(c.getSelectedFile().getName());                    
                }
            }
            else if (useWaveFile2.isSelected()){
                VibroHelper wavHelper = new VibroHelper(this);
                int rVal = c.showOpenDialog(VibroGUI.this);
                if (rVal == JFileChooser.APPROVE_OPTION) {
                    fileFound=true;
                    outText.setText("Loading file...please wait");
                    String [] filePath = {c.getSelectedFile().getAbsolutePath()};                
                    float[][]data = ChanFilter.main(filePath);
                    for(int i=1; i<data.length; i++){
                        wavHelper.playWave(i,data); 
                    }
                    setChannels(data.length-1);
                    latencyPanel.setVisible(true);                    
                    outText.setText(c.getSelectedFile().getName());                    
                }
            }     
        }else{  
            latencyPanel.setVisible(false);
            play.setText("START");
            outText.setText("");
            progress.setValue(0);            
        }
        
         
    }//GEN-LAST:event_playActionPerformed

    
    private void useFileActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_useFileActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_useFileActionPerformed

    private void outToDeviceActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_outToDeviceActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_outToDeviceActionPerformed

    private void useWaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_useWaveActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_useWaveActionPerformed

    private void enableBottomActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_enableBottomActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_enableBottomActionPerformed

    private void enableTopActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_enableTopActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_enableTopActionPerformed

    private void useMIDIFileActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_useMIDIFileActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_useMIDIFileActionPerformed

    private void ch1bActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ch1bActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ch1bActionPerformed

    private void ch8aActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ch8aActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ch8aActionPerformed

    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem1ActionPerformed
        // TODO add your handling code here:
        freqSplitControl.setVisible(true);
    }//GEN-LAST:event_jMenuItem1ActionPerformed

    private void freqSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_freqSaveActionPerformed
        // TODO add your handling code here:
        double[] data = new double[16];
        try{          
            data[0]=Double.parseDouble(ch1a.getText()); data[1]=Double.parseDouble(ch1b.getText());
            data[2]=Double.parseDouble(ch2a.getText()); data[3]=Double.parseDouble(ch2b.getText());
            data[4]=Double.parseDouble(ch3a.getText()); data[5]=Double.parseDouble(ch3b.getText());
            data[6]=Double.parseDouble(ch4a.getText()); data[7]=Double.parseDouble(ch4b.getText());
            data[8]=Double.parseDouble(ch5a.getText()); data[9]=Double.parseDouble(ch5b.getText());
            data[10]=Double.parseDouble(ch6a.getText()); data[11]=Double.parseDouble(ch6b.getText());
            data[12]=Double.parseDouble(ch7a.getText()); data[13]=Double.parseDouble(ch7b.getText());
            data[14]=Double.parseDouble(ch8a.getText()); data[15]=Double.parseDouble(ch8b.getText());
            boolean error = false;
            for(int i=0; i<8; i++){
                if(data[i*2]>data[i*2+1]) error = true;                
            }
            if(error) freqControlTxt.setText("Start band must be less than stop band");
            else{ 
                FreqFilter.write(data);
                freqControlTxt.setText("");
                freqSplitControl.setVisible(false);
            }
        }catch(NumberFormatException n){
            freqControlTxt.setText("Non-Numeric characters are not allowed");
        }
        
        
    }//GEN-LAST:event_freqSaveActionPerformed

    private void mute1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute1ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(1,false);
    }//GEN-LAST:event_mute1ActionPerformed

    private void mute2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute2ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(2,false);
    }//GEN-LAST:event_mute2ActionPerformed

    private void solo2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo2ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(2,true);
    }//GEN-LAST:event_solo2ActionPerformed

    private void mute3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute3ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(3,false);
    }//GEN-LAST:event_mute3ActionPerformed

    private void mute4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute4ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(4,false);
    }//GEN-LAST:event_mute4ActionPerformed

    private void solo4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo4ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(4,true);
    }//GEN-LAST:event_solo4ActionPerformed

    private void muteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_muteActionPerformed
        // TODO add your handling code here:
        setMuteSolo(0,false);
    }//GEN-LAST:event_muteActionPerformed

    private void mute5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute5ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(5,false);
    }//GEN-LAST:event_mute5ActionPerformed

    private void mute6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute6ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(6,false);
    }//GEN-LAST:event_mute6ActionPerformed

    private void solo6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo6ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(6,true);
    }//GEN-LAST:event_solo6ActionPerformed

    private void mute7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute7ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(7,false);
    }//GEN-LAST:event_mute7ActionPerformed

    private void mute8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute8ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(8,false);
    }//GEN-LAST:event_mute8ActionPerformed

    private void solo8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo8ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(8,true);
    }//GEN-LAST:event_solo8ActionPerformed

    private void mute9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute9ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(9,false);
    }//GEN-LAST:event_mute9ActionPerformed

    private void mute10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute10ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(10,false);
    }//GEN-LAST:event_mute10ActionPerformed

    private void solo10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo10ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(10,true);
    }//GEN-LAST:event_solo10ActionPerformed

    private void mute11ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute11ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(11,false);
    }//GEN-LAST:event_mute11ActionPerformed

    private void mute12ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute12ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(12,false);
    }//GEN-LAST:event_mute12ActionPerformed

    private void solo12ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo12ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(12,true);
    }//GEN-LAST:event_solo12ActionPerformed

    private void mute13ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute13ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(13,false);
    }//GEN-LAST:event_mute13ActionPerformed

    private void mute14ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute14ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(14,false);
    }//GEN-LAST:event_mute14ActionPerformed

    private void solo14ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo14ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(14,true);
    }//GEN-LAST:event_solo14ActionPerformed

    private void mute15ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute15ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(15,false);
    }//GEN-LAST:event_mute15ActionPerformed

    private void mute16ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mute16ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(16,false);
    }//GEN-LAST:event_mute16ActionPerformed

    private void solo16ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo16ActionPerformed
        // TODO add your handling code here:
        setMuteSolo(16,true);
    }//GEN-LAST:event_solo16ActionPerformed

    private void solo1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo1ActionPerformed
        // TODO add your handling code here:
         setMuteSolo(1,true);
    }//GEN-LAST:event_solo1ActionPerformed

    private void solo3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo3ActionPerformed
        // TODO add your handling code here:
         setMuteSolo(3,true);
    }//GEN-LAST:event_solo3ActionPerformed

    private void solo5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo5ActionPerformed
        // TODO add your handling code here:
         setMuteSolo(5,true);
    }//GEN-LAST:event_solo5ActionPerformed

    private void solo7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo7ActionPerformed
        // TODO add your handling code here:
         setMuteSolo(7,true);
    }//GEN-LAST:event_solo7ActionPerformed

    private void solo9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo9ActionPerformed
        // TODO add your handling code here:
         setMuteSolo(9,true);
    }//GEN-LAST:event_solo9ActionPerformed

    private void solo11ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo11ActionPerformed
        // TODO add your handling code here:
         setMuteSolo(11,true);
    }//GEN-LAST:event_solo11ActionPerformed

    private void solo13ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo13ActionPerformed
        // TODO add your handling code here:
         setMuteSolo(13,true);
    }//GEN-LAST:event_solo13ActionPerformed

    private void solo15ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solo15ActionPerformed
        // TODO add your handling code here:
         setMuteSolo(15,true);
    }//GEN-LAST:event_solo15ActionPerformed

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
            java.util.logging.Logger.getLogger(VibroGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(VibroGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(VibroGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(VibroGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new VibroGUI().setVisible(true);                
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField ch1a;
    private javax.swing.JTextField ch1b;
    private javax.swing.JTextField ch2a;
    private javax.swing.JTextField ch2b;
    private javax.swing.JTextField ch3a;
    private javax.swing.JTextField ch3b;
    private javax.swing.JTextField ch4a;
    private javax.swing.JTextField ch4b;
    private javax.swing.JTextField ch5a;
    private javax.swing.JTextField ch5b;
    private javax.swing.JTextField ch6a;
    private javax.swing.JTextField ch6b;
    private javax.swing.JTextField ch7a;
    private javax.swing.JTextField ch7b;
    private javax.swing.JTextField ch8a;
    private javax.swing.JTextField ch8b;
    private javax.swing.JPanel chFooter1;
    private javax.swing.JPanel chFooter10;
    private javax.swing.JPanel chFooter11;
    private javax.swing.JPanel chFooter12;
    private javax.swing.JPanel chFooter13;
    private javax.swing.JPanel chFooter14;
    private javax.swing.JPanel chFooter15;
    private javax.swing.JPanel chFooter16;
    private javax.swing.JPanel chFooter2;
    private javax.swing.JPanel chFooter3;
    private javax.swing.JPanel chFooter4;
    private javax.swing.JPanel chFooter5;
    private javax.swing.JPanel chFooter6;
    private javax.swing.JPanel chFooter7;
    private javax.swing.JPanel chFooter8;
    private javax.swing.JPanel chFooter9;
    private javax.swing.JPanel chanPanel1;
    private javax.swing.JPanel chanPanel10;
    private javax.swing.JPanel chanPanel11;
    private javax.swing.JPanel chanPanel12;
    private javax.swing.JPanel chanPanel13;
    private javax.swing.JPanel chanPanel14;
    private javax.swing.JPanel chanPanel15;
    private javax.swing.JPanel chanPanel16;
    private javax.swing.JPanel chanPanel2;
    private javax.swing.JPanel chanPanel3;
    private javax.swing.JPanel chanPanel4;
    private javax.swing.JPanel chanPanel5;
    private javax.swing.JPanel chanPanel6;
    private javax.swing.JPanel chanPanel7;
    private javax.swing.JPanel chanPanel8;
    private javax.swing.JPanel chanPanel9;
    private javax.swing.ButtonGroup channelEnable;
    protected javax.swing.JSlider delayTuner;
    private javax.swing.JCheckBoxMenuItem enableAll;
    protected javax.swing.JCheckBoxMenuItem enableBottom;
    protected javax.swing.JCheckBoxMenuItem enableTop;
    private javax.swing.JLabel freqControlTxt;
    private javax.swing.JButton freqSave;
    private javax.swing.JDialog freqSplitControl;
    private javax.swing.ButtonGroup inputGroup;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel latencyPanel;
    private javax.swing.JToggleButton mute;
    private javax.swing.JToggleButton mute1;
    private javax.swing.JToggleButton mute10;
    private javax.swing.JToggleButton mute11;
    private javax.swing.JToggleButton mute12;
    private javax.swing.JToggleButton mute13;
    private javax.swing.JToggleButton mute14;
    private javax.swing.JToggleButton mute15;
    private javax.swing.JToggleButton mute16;
    private javax.swing.JToggleButton mute2;
    private javax.swing.JToggleButton mute3;
    private javax.swing.JToggleButton mute4;
    private javax.swing.JToggleButton mute5;
    private javax.swing.JToggleButton mute6;
    private javax.swing.JToggleButton mute7;
    private javax.swing.JToggleButton mute8;
    private javax.swing.JToggleButton mute9;
    protected javax.swing.JLabel outText;
    protected javax.swing.JRadioButton outToDevice;
    protected javax.swing.JButton play;
    protected javax.swing.JProgressBar progress;
    private javax.swing.JToggleButton solo1;
    private javax.swing.JToggleButton solo10;
    private javax.swing.JToggleButton solo11;
    private javax.swing.JToggleButton solo12;
    private javax.swing.JToggleButton solo13;
    private javax.swing.JToggleButton solo14;
    private javax.swing.JToggleButton solo15;
    private javax.swing.JToggleButton solo16;
    private javax.swing.JToggleButton solo2;
    private javax.swing.JToggleButton solo3;
    private javax.swing.JToggleButton solo4;
    private javax.swing.JToggleButton solo5;
    private javax.swing.JToggleButton solo6;
    private javax.swing.JToggleButton solo7;
    private javax.swing.JToggleButton solo8;
    private javax.swing.JToggleButton solo9;
    protected javax.swing.JRadioButton useMIDIDevice;
    protected javax.swing.JRadioButton useMIDIFile;
    protected javax.swing.JRadioButton useWaveFile;
    private javax.swing.JRadioButton useWaveFile2;
    public javax.swing.JProgressBar visualBar1;
    public javax.swing.JProgressBar visualBar10;
    public javax.swing.JProgressBar visualBar11;
    public javax.swing.JProgressBar visualBar12;
    public javax.swing.JProgressBar visualBar13;
    public javax.swing.JProgressBar visualBar14;
    public javax.swing.JProgressBar visualBar15;
    public javax.swing.JProgressBar visualBar16;
    public javax.swing.JProgressBar visualBar2;
    public javax.swing.JProgressBar visualBar3;
    public javax.swing.JProgressBar visualBar4;
    public javax.swing.JProgressBar visualBar5;
    public javax.swing.JProgressBar visualBar6;
    public javax.swing.JProgressBar visualBar7;
    public javax.swing.JProgressBar visualBar8;
    public javax.swing.JProgressBar visualBar9;
    public javax.swing.JProgressBar visualBar_volume;
    private javax.swing.JPanel volPanel;
    private javax.swing.JPanel volfooter;
    public javax.swing.JSlider volumeSlider;
    public javax.swing.JSlider volumeSlider1;
    public javax.swing.JSlider volumeSlider10;
    public javax.swing.JSlider volumeSlider11;
    public javax.swing.JSlider volumeSlider12;
    public javax.swing.JSlider volumeSlider13;
    public javax.swing.JSlider volumeSlider14;
    public javax.swing.JSlider volumeSlider15;
    public javax.swing.JSlider volumeSlider16;
    public javax.swing.JSlider volumeSlider2;
    public javax.swing.JSlider volumeSlider3;
    public javax.swing.JSlider volumeSlider4;
    public javax.swing.JSlider volumeSlider5;
    public javax.swing.JSlider volumeSlider6;
    public javax.swing.JSlider volumeSlider7;
    public javax.swing.JSlider volumeSlider8;
    public javax.swing.JSlider volumeSlider9;
    // End of variables declaration//GEN-END:variables
}
