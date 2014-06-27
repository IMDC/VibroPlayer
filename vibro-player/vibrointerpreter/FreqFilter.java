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
import FrequencyFilter.*;

class FreqFilter{
    public static float[][] main(String[] args){
        MWNumericArray n = null;
        Object[] result = null;
        FrequencyFilter.Class1 theFilter = null;
        float[][] output = null;
        try{
            /* If no input, exit */
            if (args.length == 0){
                System.out.println("Error: must enter file");
                return null;
            }

            theFilter = new FrequencyFilter.Class1();
            /* Compute magic square and print result */
            result = theFilter.FrequencyFilter(1,args[0]);
            MWNumericArray temp = (MWNumericArray)result[0];
            float[][] out = (float[][])temp.toFloatArray();           
            output = new float[out[0].length][out.length];
            for(int i=0; i<out.length; i++){
                for(int j=0; j<out[0].length; j++){
                    output[j][i]=out[i][j];
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
}