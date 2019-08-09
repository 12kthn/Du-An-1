package Home.controller;

import Home.DAO.KhoiPhucDAO;
import Home.helper.Share;
import Home.helper.CustomDialog;
import java.io.File;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.TextField;
import javafx.stage.FileChooser;

public class KhoiPhucController implements Initializable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            kpdao = new KhoiPhucDAO();
            txtFullBackup.setText("Vui lòng chọn File");
            txtDiffBackup.setText("Vui lòng chọn File");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    private void chooseFullBackupFile(ActionEvent event) {
        File temporaryFile = openFolder();
        if (temporaryFile != null) {
            fullBackupFile = temporaryFile;
            txtFullBackup.setText(fullBackupFile.getAbsolutePath());
        }
        if (fullBackupFile == null) {
            txtFullBackup.setText("Vui lòng chọn File");
        }
    }

    @FXML
    private void chooseDiffBackupFile(ActionEvent event) {
        File temporaryFile = openFolder();
        if (temporaryFile != null) {
            diffBackupFile = temporaryFile;
            txtDiffBackup.setText(diffBackupFile.getAbsolutePath());
        }
        if (diffBackupFile == null) {
            txtDiffBackup.setText("Vui lòng chọn File");
        }
    }

    @FXML
    private void deleteFullBackupFile(ActionEvent event) {
        if (fullBackupFile != null) {
            if (CustomDialog.confirm("Bạn chắc chắn muốn bỏ chọn File Full Backup này")) {
                fullBackupFile = null;
                txtFullBackup.setText("Vui lòng chọn File");
            }

        }
    }

    @FXML
    private void deleteDiffBackupFile(ActionEvent event) {
        if (diffBackupFile != null) {
            if (CustomDialog.confirm("Bạn chắc chắn muốn bỏ chọn File Differential Backup này")) {
                diffBackupFile = null;
                txtDiffBackup.setText("Vui lòng chọn File");
            }
        }

    }

    private File openFolder() {
        //loc file .bak
        FileChooser.ExtensionFilter imageFilter = new FileChooser.ExtensionFilter("Local Backup File", "*.bak");
        FileChooser fileChooser = new FileChooser();
        fileChooser.getExtensionFilters().add(imageFilter);
        return fileChooser.showOpenDialog(Share.mainStage);
    }

    @FXML
    private void restore(ActionEvent event) {
        if (fullBackupFile == null) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, "Bạn chưa chọn file backup nào");
            return;
        }

        if (fullBackupFile != null && diffBackupFile == null) {
            restoreDBOnlyFullBackup(txtFullBackup.getText());
        }

        if (fullBackupFile != null && diffBackupFile != null) {
            restoreDBWithDifferential(txtFullBackup.getText(), txtDiffBackup.getText());
        }
    }

    private void restoreDBOnlyFullBackup(String fullPath) {
        if (CustomDialog.confirm("Bạn chắc chắn muốn khôi phục Cơ sở dữ liệu chỉ với file Full backup")) {
            try {
                if (kpdao.restoreDBOnlyFullBackup(fullPath)) {
                    CustomDialog.showAlert(Alert.AlertType.INFORMATION, "Khôi phục thành công");
                } else {
                    throw new Exception();
                }
            } catch (Exception ex) {
                CustomDialog.showAlert(Alert.AlertType.ERROR, "Khôi phục thất bại. Vui lòng kiểm tra lại");
                ex.printStackTrace();
            }
        }
    }

    private void restoreDBWithDifferential(String fullPath, String diffPath) {
        if (CustomDialog.confirm("Bạn chắc chắn muốn khôi phục Cơ sở dữ liệu với file Differential backup")) {
            try {
                if (kpdao.restoreDBWithDifferential(fullPath, diffPath)) {
                    CustomDialog.showAlert(Alert.AlertType.INFORMATION, "Khôi phục thành công");
                } else {
                    throw new Exception();
                }
            } catch (Exception ex) {
                CustomDialog.showAlert(Alert.AlertType.ERROR, "Khôi phục thất bại. Vui lòng kiểm tra lại");
                ex.printStackTrace();
            }
        }
    }

    private KhoiPhucDAO kpdao;
    private File fullBackupFile = null;
    private File diffBackupFile = null;

    @FXML
    private TextField txtDiffBackup;

    @FXML
    private TextField txtFullBackup;

}
