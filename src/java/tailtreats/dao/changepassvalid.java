/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tailtreats.dao;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JOptionPane;



/**
 *
 * @author Eliseio
 */
public class changepassvalid {
        
    public boolean changepass_Validation(String password) {
        boolean success = false;
        
        Pattern sletter = Pattern.compile("[a-z]");
        Pattern bletter = Pattern.compile("[A-Z]");
        Pattern digit = Pattern.compile("[0-9]");
        Pattern special = Pattern.compile("[!@#$&*_]");
        //Pattern eight = Pattern.compile (".{8}");

        Matcher smLetter = sletter.matcher(password);
        Matcher bLetter =  bletter.matcher(password);
        Matcher hasDigit = digit.matcher(password);
        Matcher hasSpecial = special.matcher(password);

        boolean sm = smLetter.find();
        boolean big = bLetter.find();
        boolean dig = hasDigit.find();
        boolean spec = hasSpecial.find();
        
        if (password.length() >7 && password.length()<17 && sm == true && big == true && dig == true && spec == true){
            success = true;
        } else {
            JOptionPane.showMessageDialog(null, "Password must be 8-16 characters, atleast one small and capital letter, a number, and a special character! (!@#$&*_)"); 
        }
        return success;
    }
}
