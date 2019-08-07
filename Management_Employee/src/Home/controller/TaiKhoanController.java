package Home.controller;

import Home.DAO.NhanVienDAO;
import Home.DAO.PhongBanDAO;
import Home.DAO.TableTaiKhoanDAO;
import Home.DAO.TaiKhoanDAO;
import Home.helper.Share;
import Home.helper.CustomDialog;
import Home.helper.Validate;
import Home.model.NhanVien;
import Home.model.PhongBan;
import Home.model.TaiKhoan;
import Home.model.table.TableTaiKhoan;
import com.jfoenix.controls.JFXButton;
import com.jfoenix.controls.JFXComboBox;
import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

public class TaiKhoanController implements Initializable {

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        try {
            tbl_tkDAO = new TableTaiKhoanDAO();
            tkDAO = new TaiKhoanDAO();
            pbDAO = new PhongBanDAO();
            nvDAO = new NhanVienDAO();

            setTableColumn();
            loadCboPhongBan();
            loadCboNhanVien("");
            loadDataToTable();

            newTK();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void loadCboPhongBan() {
        cboPhongBan.setItems(pbDAO.findByCode(null));

        cboPhongBan.valueProperty().addListener(new ChangeListener<PhongBan>() {
            @Override
            public void changed(ObservableValue<? extends PhongBan> observable, PhongBan oldValue, PhongBan newValue) {
                if (newValue != null) {
                    loadCboNhanVien(newValue.getMaPB());
                }
                
            }

        });
    }

    private void loadCboNhanVien(String maPB) {
        cboNhanVien.setItems(nvDAO.findByMaPB(maPB));
    }

    private void setTableColumn() {
        taiKhoanCol = new TableColumn<>("Tài khoản");
        taiKhoanCol.setCellValueFactory(new PropertyValueFactory<>("tenTaiKhoan"));
        taiKhoanCol.setPrefWidth(200);

        nhanVienCol = new TableColumn<>("Nhân viên");
        nhanVienCol.setCellValueFactory(new PropertyValueFactory<>("nhanVien"));
        nhanVienCol.setPrefWidth(200);

        phongBanCol = new TableColumn<>("Phòng ban");
        phongBanCol.setCellValueFactory(new PropertyValueFactory<>("phongBan"));
        phongBanCol.setPrefWidth(200);

        tblTaiKhoan.getColumns().addAll(taiKhoanCol, nhanVienCol, phongBanCol);
    }

    private void loadDataToTable() {
        tblTaiKhoan.setItems(tbl_tkDAO.getData());
    }

    @FXML
    private void selectTaiKhoan() {
        try {
            TableTaiKhoan tableTaiKhoan = tblTaiKhoan.getSelectionModel().getSelectedItem();
            if (tableTaiKhoan != null) {
                setStatus(false);
                TaiKhoan tk = tkDAO.findByCode(tableTaiKhoan.getTenTaiKhoan());
                setModel(tk);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void setModel(TaiKhoan tk) {
        txtTaikhoan.setText(tk.getTaiKhoan());
        txtMatKhau.setText(tk.getMatKhau());
        txtXacNhanMatKhau.setText(tk.getMatKhau());
        if (tk.getMaNV() == null) {
            cboPhongBan.getSelectionModel().clearSelection();
            loadCboNhanVien("");
        } else {
            String maPB = nvDAO.findByCode(tk.getMaNV()).getMaPB();
            for (PhongBan pb : cboPhongBan.getItems()) {
                if (maPB.equals(pb.getMaPB())) {
                    cboPhongBan.getSelectionModel().select(pb);
                }
            }

            for (NhanVien nv : cboNhanVien.getItems()) {
                if (tk.getMaNV().equals(nv.getMaNV())) {
                    cboNhanVien.getSelectionModel().select(nv);
                }
            }
        }

    }

    private TaiKhoan getModel() {
        TaiKhoan tk = new TaiKhoan();
        tk.setTaiKhoan(txtTaikhoan.getText());
        tk.setMatKhau(txtMatKhau.getText());
        tk.setMaNV(cboNhanVien.getSelectionModel().getSelectedItem().getMaNV());
        return tk;
    }

    private void setStatus(boolean insertable) {
        this.insertable = insertable;
        btnThem.setDisable(!insertable);
        btnCapNhat.setDisable(insertable);
        btnXoa.setDisable(insertable);
        btnTaoMoi.setDisable(insertable);

    }

    private boolean checknull() {
        if (Validate.isNull(txtTaikhoan, "Chưa nhập tên tài khoản")) {
            return false;
        }
        if (Validate.isNull(txtMatKhau, "Chưa nhập mật khẩu")) {
            return false;
        }

        if (Validate.isNull(txtXacNhanMatKhau, "Chưa xác nhận mật khẩu")) {
            return false;

        }

        if (Validate.isNotMatches(txtXacNhanMatKhau, txtMatKhau, "Mật khẩu xác nhận không đúng")) {
            return false;

        }
        return true;
    }

    private boolean checkDuplication() {
        if (insertable && tkDAO.findByCode(txtTaikhoan.getText().trim()) != null) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, "Tài khoản đã tồn tại");
            txtTaikhoan.requestFocus();
            return false;
        }
        return true;
    }

    public void newTK() {
        setModel(new TaiKhoan());
        setStatus(true);
    }

    private TableTaiKhoanDAO tbl_tkDAO;
    private TaiKhoanDAO tkDAO;
    private PhongBanDAO pbDAO;
    private NhanVienDAO nvDAO;

    private boolean insertable;

    private TableColumn<TableTaiKhoan, String> taiKhoanCol;
    private TableColumn<TableTaiKhoan, NhanVien> nhanVienCol;
    private TableColumn<TableTaiKhoan, PhongBan> phongBanCol;

    @FXML
    private JFXTextField txtTaikhoan;

    @FXML
    private JFXPasswordField txtXacNhanMatKhau;

    @FXML
    private JFXPasswordField txtMatKhau;

    @FXML
    private JFXComboBox<PhongBan> cboPhongBan;

    @FXML
    private JFXComboBox<NhanVien> cboNhanVien;

    @FXML
    private JFXButton btnTaoMoi;
    @FXML
    private JFXButton btnXoa;
    @FXML
    private JFXButton btnThem;
    @FXML
    private JFXButton btnCapNhat;

    @FXML
    private TableView<TableTaiKhoan> tblTaiKhoan;

    @FXML
    private void InsertTK(ActionEvent event) {
        if (checknull() && checkDuplication()) {
            TaiKhoan tk = getModel();
            try {
                tkDAO.insert(tk);
                loadDataToTable();
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, Share.mainStage, "Managemnet System",
                        "Thêm mới thành công ");

            } catch (Exception e) {
                CustomDialog.showAlert(Alert.AlertType.ERROR, Share.mainStage, "Managemnet System",
                        "Thêm mới thất bại ");
                e.printStackTrace();
            }
        }

    }

    @FXML
    private void updateTK(ActionEvent event) {
        TaiKhoan tk = getModel();
        try {
            tkDAO.update(tk);

            loadDataToTable();
            CustomDialog.showAlert(Alert.AlertType.INFORMATION, Share.mainStage,
                    "Managemnet System", "Cập nhật tài khoản thành công ");

        } catch (Exception e) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, Share.mainStage,
                    "Managemnet System", "Cập nhật tài khoản thất bại ");
            e.printStackTrace();
        }
    }

    @FXML
    private void DeleteTK(ActionEvent event) {
        TaiKhoan tk = getModel();
        try {
            if (tkDAO.delete(tk) > 0) {
                loadDataToTable();
                CustomDialog.showAlert(Alert.AlertType.INFORMATION, "Xóa tài khoản thành công ");

            }
        } catch (Exception ex) {
            CustomDialog.showAlert(Alert.AlertType.ERROR, "Xóa tài khoản thất bại ");
            ex.printStackTrace();
        }
    }

    @FXML
    private void clearTK(ActionEvent event) {
        setModel(new TaiKhoan());
        setStatus(true);
    }

}
