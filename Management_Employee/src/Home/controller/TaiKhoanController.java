
package Home.controller;

import Home.DAO.NhanVienDAO;
import Home.DAO.PhongBanDAO;
import Home.DAO.TableTaiKhoanDAO;
import Home.DAO.TaiKhoanDAO;
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
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
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
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }   
    
    private void loadCboPhongBan(){
        cboPhongBan.setItems(pbDAO.findByCode(null));
        
        cboPhongBan.valueProperty().addListener(new ChangeListener<PhongBan>(){
            @Override
            public void changed(ObservableValue<? extends PhongBan> observable, PhongBan oldValue, PhongBan newValue) {
                loadCboNhanVien(newValue.getMaPB());
            }
            
        });
    }
    
    private void loadCboNhanVien(String maPB){
        cboNhanVien.setItems(nvDAO.findByMaPB(maPB));
    }
    
    private void setTableColumn(){
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
    
    private void loadDataToTable(){
        tblTaiKhoan.setItems(tbl_tkDAO.getData());
    }
    
    @FXML 
    private void selectTaiKhoan(){
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
    
    private void setModel(TaiKhoan tk){
        txtTaikhoan.setText(tk.getTaiKhoan());
        txtMatKhau.setText(tk.getMatKhau());
        txtXacNhanMatKhau.setText(tk.getMatKhau());
        
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
    
    private TaiKhoan getModel(){
        TaiKhoan tk = new TaiKhoan();
        tk.setTaiKhoan(txtTaikhoan.getText());
        tk.setMatKhau(txtMatKhau.getText());
        tk.setMaNV(cboNhanVien.getSelectionModel().getSelectedItem().getMaNV());
        return tk;
    }
    
    private void setStatus(boolean insertable){
        this.insertable = insertable;
        
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
    private JFXButton btnThem;

    @FXML
    private JFXButton btnCapNhat;

    @FXML
    private JFXButton btnXoa;
    
    @FXML
    private JFXButton btnTaoMoi;

    @FXML
    private TableView<TableTaiKhoan> tblTaiKhoan;

}
