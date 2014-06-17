/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaappsoundtest;

import javax.swing.text.AttributeSet;
import javax.swing.text.BadLocationException;
import javax.swing.text.PlainDocument;

/**
 *
 * @author imdc
 */
public class FixedLengthDocument extends PlainDocument {
    private int iMaxLength;
    
    public FixedLengthDocument ( int maxLen ) {
        super();
        iMaxLength = maxLen;
    }
    
    public void insertString ( int offset, String str, AttributeSet attr ) throws BadLocationException {
        if ( str == null ) {
            return;
        }
        
        if ( iMaxLength <= 0 ) {
            super.insertString ( offset, str, attr );
            return;
        }
        
        int ilen = ( getLength() + str.length() );
        if ( ilen <= iMaxLength ) {
            super.insertString ( offset, str, attr );
        }
    }
}
