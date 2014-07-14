/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package vibrointerpreter;

/**
 *
 * @author imdc
 */
/* Necessary package imports */
import com.mathworks.toolbox.javabuilder.*;

class ChanFilter{
    public static float[][] main(String[] args){
        MWNumericArray n = null;
        Object[] result = null;
        ChannelFilter.Class1 theFilter = null;
        float[][] output = null;        
        try{
            /* If no input, exit */
            if (args.length == 0){
                System.out.println("Error: must enter file");
                return null;
            }
            theFilter = new ChannelFilter.Class1();
            /* Convert Wave File into frequency data */
            result = theFilter.ChannelFilter(1,args[0]);
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
}