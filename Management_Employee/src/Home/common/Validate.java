
package Home.common;

import com.jfoenix.controls.JFXComboBox;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import com.jfoenix.validation.RequiredFieldValidator;
import javafx.scene.control.Alert;

public class Validate {
    
    //Hiện thông báo lỗi của JFX
    public static RequiredFieldValidator createValidatorJFX(String errMessage){
        RequiredFieldValidator validator = new RequiredFieldValidator();
        validator.setMessage(errMessage);
        validator.setIcon(new Picture().createImageView("warning16px.png"));
        return validator;
    }
    
    
    //Kiểm lỗi TextField not null
    public static boolean isNull(JFXTextField txt, String errMessage){
        if (txt.getText().trim().isEmpty()) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, errMessage);
            txt.requestFocus();
            return true;
        }
        return false;
    }
    
    //Kiểm lỗi PasswordField not null
    public static boolean isNull(JFXPasswordField txt, String errMessage){
        if (txt.getText().trim().isEmpty()) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, errMessage);
            txt.requestFocus();
            return true;
        }
        return false;
    }
    
    //Kiểm lỗi Combobox chưa được chọn giá trị
    public static boolean isNotSelected(JFXComboBox cbo, String errMessage){
        if (cbo.getSelectionModel().getSelectedIndex() == -1) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, errMessage);
            return true;
        }
        return false;
    }
    
    //Kiểm lỗi TextField không đúng với mẫu
    public static boolean isNotMatches(JFXTextField txt, String regex, String errMessage){
        if (!txt.getText().matches(regex)) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, errMessage);
            txt.requestFocus();
            return true;
        }
        return false;
    }
}
