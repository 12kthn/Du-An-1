
package Home.common;

import com.jfoenix.controls.JFXComboBox;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import com.jfoenix.validation.RequiredFieldValidator;
import javafx.scene.control.Alert;

public class Validate {
    public static RequiredFieldValidator createValidatorJFX(String fieldName){
        RequiredFieldValidator validator = new RequiredFieldValidator();
        validator.setMessage("Vui lòng nhập " + fieldName);
        validator.setIcon(new Picture().createImageView("warning16px.png"));
//        validator.setStyle("-fx-font-size: 6px");
        return validator;
    }
    
    
    //Kiểm lỗi TextField not null
    public static boolean isNull(JFXTextField txt, String textFieldName){
        if (txt.getText().trim().equals("")) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Vui lòng nhập " + textFieldName);
            txt.requestFocus();
            return true;
        }
        return false;
    }
    
    //Kiểm lỗi PasswordField not null
    public static boolean isNull(JFXPasswordField txt, String passwordFieldName){
        if (txt.getText().trim().equals("")) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Vui lòng nhập " + passwordFieldName);
            txt.requestFocus();
            return true;
        }
        return false;
    }
    
    //Kiểm lỗi Combobox chưa được chọn giá trị
    public static boolean isNotSelected(JFXComboBox cbo, String ComboBoxName){
        if (cbo.getSelectionModel().getSelectedIndex() == -1) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Vui lòng chọn " + ComboBoxName);
            return true;
        }
        return false;
    }
}
