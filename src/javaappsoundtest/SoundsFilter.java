/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import java.io.File;
import javax.swing.filechooser.FileFilter;

/**
 *
 * @author imdc
 */
public class SoundsFilter extends FileFilter {

    @Override
    public boolean accept(File file) {
        if ( !file.isDirectory() ) {
            String extension = "";
            
            int i = file.getAbsolutePath().lastIndexOf ( "." );
            int p = Math.max ( file.getAbsolutePath().lastIndexOf ( "\\" ), file.getAbsolutePath().lastIndexOf ( "/" ) );
            
            if ( i > p ) {
                extension = file.getAbsolutePath().substring ( i + 1 );
            }
            
            if ( extension != null ) {
                /* If you want to add more extensions, just change here. */
                if ( extension.equals ( "mp4" ) || extension.equals ( "wav" ) ) {
                    return true;
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
        else {
            return true;
        }
    }

    @Override
    public String getDescription() {
        return "Just sounds";
    }
    
}
