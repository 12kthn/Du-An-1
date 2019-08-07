package Home.controller;

import Home.DAO.KhoiPhucDAO;
import Home.DAO.TableFileDAO;
import Home.helper.Share;
import Home.helper.CustomDialog;
import Home.model.table.TableFile;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

public class KhoiPhucController implements Initializable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            tfdao = new TableFileDAO();
            kpdao = new KhoiPhucDAO();

            setTableModel();
            loadTable();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void setTableModel() {
        //set table FullBackup
        nameCol1 = new TableColumn<>("Tên file");
        nameCol1.setCellValueFactory(new PropertyValueFactory<>("fileName"));
        nameCol1.setPrefWidth(180);

        dateModifiedCol1 = new TableColumn<>("Ngày sửa đổi");
        dateModifiedCol1.setCellValueFactory(new PropertyValueFactory<>("dateModified"));
        dateModifiedCol1.setPrefWidth(180);

        sizeCol1 = new TableColumn<>("Kích thước file");
        sizeCol1.setCellValueFactory(new PropertyValueFactory<>("size"));
        sizeCol1.setPrefWidth(140);

        tblFullBackup.getColumns().addAll(nameCol1, dateModifiedCol1, sizeCol1);

        //set table DiffBackup
        nameCol2 = new TableColumn<>("Tên file");
        nameCol2.setCellValueFactory(new PropertyValueFactory<>("fileName"));
        nameCol2.setPrefWidth(180);

        dateModifiedCol2 = new TableColumn<>("Ngày sửa đổi");
        dateModifiedCol2.setCellValueFactory(new PropertyValueFactory<>("dateModified"));
        dateModifiedCol2.setPrefWidth(180);

        sizeCol2 = new TableColumn<>("Kích thước file");
        sizeCol2.setCellValueFactory(new PropertyValueFactory<>("size"));
        sizeCol2.setPrefWidth(140);

        tblDiffBackup.getColumns().addAll(nameCol2, dateModifiedCol2, sizeCol2);
    }

    private void loadTable() {
        tblFullBackup.setItems(tfdao.getData("QLNV", "FullBackup.bak"));

        tblDiffBackup.setItems(tfdao.getData("QLNV", "DiffBackup.bak"));
    }

    private TableFileDAO tfdao;
    private KhoiPhucDAO kpdao;

    private TableColumn<TableFile, String> nameCol1;
    private TableColumn<TableFile, String> dateModifiedCol1;
    private TableColumn<TableFile, String> sizeCol1;

    private TableColumn<TableFile, String> nameCol2;
    private TableColumn<TableFile, String> dateModifiedCol2;
    private TableColumn<TableFile, String> sizeCol2;

    @FXML
    private TableView<TableFile> tblFullBackup;

    @FXML
    private TableView<TableFile> tblDiffBackup;

    @FXML
    void restore(ActionEvent event) {
        //get TableFile người dùng đang chọn
        TableFile tfFull = tblFullBackup.getSelectionModel().getSelectedItem();
        TableFile tfDiff = tblDiffBackup.getSelectionModel().getSelectedItem();

        //folder chứa file backup
        String folder = "C:\\Program Files\\Microsoft SQL Server\\MSSQL11.MSSQLSERVER\\MSSQL\\Backup";
        //kiểm tra người dùng đã chọn file chưa
        if (tfFull == null) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, Share.mainStage, "", "Vui lòng chọn file Fullbackup");
            return;
        }
        if (tfDiff == null) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, Share.mainStage, "", "Vui lòng chọn file DifferentialBackup");
            return;
        }

        try {
            if (kpdao.restoreDB(folder + "\\" + tfFull.getFileName(), folder + "\\" + tfDiff.getFileName())) {
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, Share.mainStage, "", "Khôi phục thành công");
            } else {
                throw new Exception();
            }
            
        } catch (Exception ex) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, Share.mainStage, "", "Khôi phục thất bại");
            ex.printStackTrace();
        }
    }
}
