package vibrointerpreter;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author imdc
 */
/* Necessary package imports */
import com.mathworks.toolbox.javabuilder.*;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;

class MyFilter{
    public static float[][] main(String arg,String mode){
        MWNumericArray n = null;
        Object[] result = null;
        Filter.Class1 theFilter = null;
        float[][] output = null;
        try{
            /* If no input, exit */
            if (arg==null){
                System.out.println("Error: must enter file");
                return null;
            }
            init();
            theFilter = new Filter.Class1();
            /* Convert Wave File into frequency data */
            if(mode.equals("frequency")) result = theFilter.FrequencyFilter(1,arg);
            else if(mode.equals("channel")) result = theFilter.ChannelFilter(1,arg);
            else System.out.println("Second argument of Filter is invalid");
            MWNumericArray temp = (MWNumericArray)result[0];
            /* put the data into an array */
            float[][] out = (float[][])temp.toFloatArray();           
            output = new float[out[0].length+1][out.length];
            for(int i=0; i<out.length; i++){
                for(int j=0; j<out[0].length; j++){
                    output[j+1][i]=out[i][j];
                }
            }  
        }
        catch (Exception e){
            System.out.println("Exception: "+e.toString());
        }
        finally{
            /* Free native resources */
            MWArray.disposeArray(n);
            MWArray.disposeArray(result);          
            if (theFilter != null)
            theFilter.dispose();
            return output;
        }
    }
    
    public static void write(double[] data){
        try {
        BufferedWriter out = new BufferedWriter(new FileWriter("Frequency Split.txt"));
            /* If input is NULL then there is a reset request */
            if(data==null){
                double[] d = {27.5,69,69,145,145,220,220,311,311,466,467,660,660,1480,1480,4186};
                data=d;
            }
            for (int i = 0; i < data.length; i++) {
                out.write(data[i] + "  ");
            }
            out.close();
        } catch (IOException e) {}        
    }
    
    public static void init() throws FileNotFoundException{
        File file = new File("Frequency Split.txt");        
        if(!file.exists()){
            write(null);
        }        
    }
}