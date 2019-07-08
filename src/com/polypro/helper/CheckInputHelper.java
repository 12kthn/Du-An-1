
package com.polypro.helper;

import java.awt.Component;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

public class CheckInputHelper {
    public static boolean checkNull(Component parent, JTextField txt, String lblName){
        if (txt.getText().trim().equals("")) {
            DialogHelper.alert(parent, "Vui lòng nhập " + lblName, JOptionPane.WARNING_MESSAGE);
            txt.requestFocus();
            return false;
        }
        return true;
    }
}
