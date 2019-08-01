package Home.controller;

import Home.DAO.ChucVuDAO;
import Home.DAO.NhanVienDAO;
import Home.DAO.PhongBanDAO;
import Home.DAO.TableChucVuDAO;
import Home.DAO.TablePhongBanDAO;
import Home.common.Common;
import Home.common.FormatNumber;
import Home.common.CustomDialog;
import Home.common.Validate;
import Home.model.ChucVu;
import Home.model.NhanVien;
import Home.model.PhongBan;
import Home.model.table.TableChucVu;
import Home.model.table.TablePhongBan;
import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXTextField;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;

public class ToChucController implements Initializable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {

            Common.tcController = this;

            //tạo các đối tượng DAO
            nvdao = new NhanVienDAO();
            pbdao = new PhongBanDAO();
            cvdao = new ChucVuDAO();
            tbl_PBdao = new TablePhongBanDAO();
            tbl_CVdao = new TableChucVuDAO();

            //chạy các phương thức khi khởi tạo
            setTableColumn_PB();
            setTableColumn_CV();

            loadDataToTblPhongBan();
            loadDataToTblChucVu();

            newPB();
            newCV();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    //định dạng các cột cho bảng Phòng ban
    private void setTableColumn_PB() {
        //Tạo và định dạng cột
        deleteColumn_PB = new TableColumn<>("");
        deleteColumn_PB.setCellValueFactory(new PropertyValueFactory<>("Delete"));
        deleteColumn_PB.setStyle("-fx-alignment: CENTER-RIGHT; -fx-border-width: 1 0 1 1;");

        updateColumn_PB = new TableColumn<>("");
        updateColumn_PB.setCellValueFactory(new PropertyValueFactory<>("Update"));
        updateColumn_PB.setStyle("-fx-alignment: CENTER-LEFT;");

        col1_PB = new TableColumn<>("Mã PB");
        col1_PB.setCellValueFactory(new PropertyValueFactory<>("MaPB"));
        col1_PB.setPrefWidth(180);

        col2_PB = new TableColumn<>("Tên PB");
        col2_PB.setCellValueFactory(new PropertyValueFactory<>("TenPB"));
        col2_PB.setPrefWidth(180);

        //thêm các cột vào table
        tblPhongBan.getColumns().addAll(deleteColumn_PB, updateColumn_PB, col1_PB, col2_PB);
    }

    //Định dạng các cột cho bảng Chức vụ
    private void setTableColumn_CV() {
        //Tạo và định dạng cột
        deleteColumn_CV = new TableColumn<>("");
        deleteColumn_CV.setCellValueFactory(new PropertyValueFactory<>("Delete"));
        deleteColumn_CV.setStyle("-fx-alignment: CENTER-RIGHT; -fx-border-width: 1 0 1 1;");

        updateColumn_CV = new TableColumn<>("");
        updateColumn_CV.setCellValueFactory(new PropertyValueFactory<>("Update"));
        updateColumn_CV.setStyle("-fx-alignment: CENTER-LEFT;");

        col1_CV = new TableColumn<>("Mã CV");
        col1_CV.setCellValueFactory(new PropertyValueFactory<>("MaCV"));
        col1_CV.setPrefWidth(100);

        col2_CV = new TableColumn<>("Tên CV");
        col2_CV.setCellValueFactory(new PropertyValueFactory<>("TenCV"));
        col2_CV.setPrefWidth(100);

        col3_CV = new TableColumn<>("Phụ cấp");
        col3_CV.setCellValueFactory(new PropertyValueFactory<>("PhuCap"));
        col3_CV.setPrefWidth(180);

        //thêm các cột vào table
        tblChucVu.getColumns().addAll(deleteColumn_CV, updateColumn_CV, col1_CV, col2_CV, col3_CV);
    }

    //Đổ dữ liệu vào bảng Phòng ban
    private void loadDataToTblPhongBan() {
        //tạo data
        data_PB = tbl_PBdao.getData();
        // thêm data vào bảng
        tblPhongBan.setItems(data_PB);
    }

    //Đổ dữ liệu vào bảng Chức vụ
    private void loadDataToTblChucVu() {
        //tạo data
        data_CV = tbl_CVdao.getData();
        // thêm data vào bảng
        tblChucVu.setItems(data_CV);
    }

    public void setStatusPB(boolean insertablePB) {
        this.insertablePB = insertablePB;
        txtMaPB.setDisable(!insertablePB);
        btnInsertPB.setDisable(!insertablePB);
        btnUpdatePB.setDisable(insertablePB);
        btnNewPB.setDisable(insertablePB);
    }

    public void setStatusCV(boolean insertableCV) {
        this.insertableCV = insertableCV;
        txtMaCV.setDisable(!insertableCV);
        btnInsertCV.setDisable(!insertableCV);
        btnUpdateCV.setDisable(insertableCV);
        btnNewCV.setDisable(insertableCV);
    }

    private boolean checknullPB() {
        if (Validate.isNull(txtMaPB, "Chưa nhập mã phòng ban")) {
            return false;
        }
        if (Validate.isNull(txtTenPB, "Chưa nhập tên phòng ban")) {
            return false;
        }
        return true;
    }

    private boolean checknullCV() {
        if (Validate.isNull(txtMaCV, "Chưa nhập mã chức vụ")) {
            return false;
        }
        if (Validate.isNull(txtTenCV, "Chưa nhập tên chức vụ")) {
            return false;
        }
        return true;
    }

    private boolean checkDuplication() {
        if (!insertablePB && pbdao.findByCode(txtMaPB.getText().trim()) != null) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Mã phòng ban đã tồn tại");
            txtMaPB.requestFocus();
            return false;
        }

        if (!insertableCV && cvdao.findByCode(txtMaCV.getText().trim()) != null) {
            CustomDialog.showAlert(Alert.AlertType.WARNING, "Mã chức vụ đã tồn tại");
            txtMaCV.requestFocus();
            return false;
        }
        return true;
    }

    public void setModel(PhongBan pb) {
        txtMaPB.setText(pb.getMaPB());
        txtTenPB.setText(pb.getTenPB());
    }

    private PhongBan getModelPhongBan() {
        PhongBan pb = new PhongBan();
        pb.setMaPB(txtMaPB.getText());
        pb.setTenPB(txtTenPB.getText());
        return pb;

    }

    public void setModel(ChucVu cv) {
        txtMaCV.setText(cv.getMaCV());
        txtTenCV.setText(cv.getTenCV());

        if (cv.getPhuCap() != null) {
            txtPhuCap.setText(FormatNumber.formatDouble(cv.getPhuCap()));
        } else {
            txtPhuCap.setText(null);
        }

    }

    public ChucVu getModelChucVu() {
        ChucVu cv = new ChucVu();
        cv.setMaCV(txtMaCV.getText());
        cv.setTenCV(txtMaCV.getText());
        cv.setPhuCap(Double.valueOf(txtPhuCap.getText()));
        return cv;

    }

    @FXML
    private void selectPhongBan(MouseEvent event) {
        TablePhongBan tableModel = tblPhongBan.getSelectionModel().getSelectedItem();
        PhongBan pb = pbdao.findByCode(tableModel.getMaPB()).get(0);
        setModel(pb);
        setStatusPB(false);
    }

    @FXML
    private void selectChucVu(MouseEvent event) {
        TableChucVu tableModel = tblChucVu.getSelectionModel().getSelectedItem();
        ChucVu cv = cvdao.findByCode(tableModel.getMaCV()).get(0);
        setModel(cv);
        setStatusCV(false);
    }

    @FXML
    private void insertPB(ActionEvent event) {
        if (checknullPB() && checkDuplication()) {
            PhongBan pb = getModelPhongBan();
            try {
                pbdao.insert(pb);
                loadDataToTblPhongBan();
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage, "Managemnet System",
                        "Thêm mới thành công ");
                newPB();
            } catch (Exception e) {
                CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage, "Managemnet System",
                        "Thêm mới thất bại ");
                e.printStackTrace();
            }
        }

    }

    @FXML
    private void updatePB(ActionEvent event) {
        PhongBan pb = getModelPhongBan();
        try {
            pbdao.update(pb);
            System.out.println(pb.getMaPB());
            loadDataToTblPhongBan();
            CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage,
                    "Managemnet System", "Cập nhật phòng ban thành công ");

        } catch (Exception e) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage,
                    "Managemnet System", "Cập nhật phòng ban thành công ");
            e.printStackTrace();
        }

    }

    @FXML
    private void deletePB(ActionEvent event) {
        PhongBan pb = getModelPhongBan();
        deletePB(pb);
    }

    public void deletePB(PhongBan pb) {
        try {
            if (pbdao.delete(pb) > 0) {
                loadDataToTblPhongBan();
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, "Xóa phòng ban thành công ");
                newPB();
            }
        } catch (Exception ex) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, "Xóa phòng ban thất bại ");
            ex.printStackTrace();
        }
    }
    
    @FXML
    private void newPB() {
        setModel(new PhongBan());
        setStatusPB(true);
    }

    
    
    @FXML
    private void insertCV(ActionEvent event) {
        if (checknullCV() && checkDuplication()) {
            ChucVu cv = getModelChucVu();
            try {
                cvdao.insert(cv);
                System.out.println(cv.getMaCV());
                loadDataToTblChucVu();
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage,
                        "Managemnet System", "Thêm mới chức vụ thành công ");
                newCV();
            } catch (Exception e) {
                CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage,
                        "Managemnet System", "Thêm mới chức vụ thất bại ");
                e.printStackTrace();
            }
        }

    }

    @FXML
    private void updateCV(ActionEvent event) {
        ChucVu cv = getModelChucVu();
        try {
            cvdao.update(cv);
            loadDataToTblChucVu();
            CustomDialog.showAlert(Alert.AlertType.INFORMATION, Common.mainStage,
                    "Managemnet System", "Cập nhật chức vụ thành công ");

        } catch (Exception e) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, Common.mainStage,
                    "Managemnet System", "Cập nhật chức vụ thất bại ");
            e.printStackTrace();
        }

    }

    @FXML
    private void deleteCV(ActionEvent event) {
        ChucVu cv = getModelChucVu();
        deleteCV(cv);
    }

    public void deleteCV(ChucVu cv) {
        try {
            if (cvdao.delete(cv) > 0) {
                loadDataToTblChucVu();
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, "Xóa chức vụ thành công ");
                newCV();
            }
        } catch (Exception ex) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, "Xóa chức vụ thất bại ");
            ex.printStackTrace();
        }
    }

    @FXML
    private void newCV() {
        setModel(new ChucVu());
        setStatusCV(true);
    }

    //Khai báo các lớp DAO
    private NhanVienDAO nvdao;
    private PhongBanDAO pbdao;
    private ChucVuDAO cvdao;
    private TablePhongBanDAO tbl_PBdao;
    private TableChucVuDAO tbl_CVdao;
    private Boolean insertablePB;
    private Boolean insertableCV;

    //Khai báo  các cột cho bảng Phòng ban
    private TableColumn<TablePhongBan, Button> deleteColumn_PB;
    private TableColumn<TablePhongBan, Button> updateColumn_PB;
    private TableColumn<TablePhongBan, String> col1_PB;
    private TableColumn<TablePhongBan, String> col2_PB;
    //Khai báo  biến chứa dữ liệu của bảng Phòng ban
    private ObservableList<TablePhongBan> data_PB;

    //Khai báo các cột cho bảng Chức vụ
    private TableColumn<TableChucVu, Button> deleteColumn_CV;
    private TableColumn<TableChucVu, Button> updateColumn_CV;
    private TableColumn<TableChucVu, String> col1_CV;
    private TableColumn<TableChucVu, String> col2_CV;
    private TableColumn<TableChucVu, String> col3_CV;
    //Khai báo  biến chứa dữ liệu của bảng Chức vụ
    private ObservableList<TableChucVu> data_CV;

    @FXML
    private JFXButton btnInsertPB;
    @FXML
    private JFXButton btnUpdatePB;
    @FXML
    private JFXButton btnNewPB;
    @FXML
    private JFXButton btnInsertCV;
    @FXML
    private JFXButton btnUpdateCV;
    @FXML
    private JFXButton btnNewCV;
    @FXML
    private JFXTextField txtMaPB;
    @FXML
    private JFXTextField txtTenPB;
    @FXML
    private JFXTextField txtMaCV;
    @FXML
    private JFXTextField txtTenCV;
    @FXML
    private JFXTextField txtPhuCap;
    @FXML
    private TableView<TablePhongBan> tblPhongBan;
    @FXML
    private TableView<TableChucVu> tblChucVu;
}
