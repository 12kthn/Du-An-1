package Home.controller;

import Home.DAO.ChucVuDAO;
import Home.DAO.NhanVienDAO;
import Home.DAO.PhongBanDAO;
import Home.DAO.TableChucVuDAO;
import Home.DAO.TablePhongBanDAO;
import Home.common.Common;
import Home.common.FormatNumber;
import Home.model.ChucVu;
import Home.model.NhanVien;
import Home.model.PhongBan;
import Home.model.table.TableChucVu;
import Home.model.table.TablePhongBan;
import com.jfoenix.controls.JFXTextField;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
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
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

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

    private void loadDataToTblPhongBan() {
        //tạo data
        data_PB = tbl_PBdao.getData();
        // thêm data vào bảng
        tblPhongBan.setItems(data_PB);
    }

    private void loadDataToTblChucVu() {
        //tạo data
        data_CV = tbl_CVdao.getData();
        // thêm data vào bảng
        tblChucVu.setItems(data_CV);
    }

    public void setModel(PhongBan pb) {
        txtMaPB.setText(pb.getMaPB());
        txtTenPB.setText(pb.getTenPB());
    }

    public void setModel(ChucVu cv) {
        txtMaCV.setText(cv.getMaCV());
        txtTenCV.setText(cv.getTenCV());
        txtPhuCap.setText(FormatNumber.formatDouble(cv.getPhuCap()));
    }

    //Khai báo các lớp DAO
    private NhanVienDAO nvdao;
    private PhongBanDAO pbdao;
    private ChucVuDAO cvdao;
    private TablePhongBanDAO tbl_PBdao;
    private TableChucVuDAO tbl_CVdao;
    
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

    //Khai báo  biến chứa danh sách Nhân viên cho cboNhanVien
    private ObservableList<NhanVien> listNhanVien;
    
    //Khai báo  các biến vá phương thức trong file FXML
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
    
    @FXML
    private void selectPhongBan(MouseEvent event) {
        TablePhongBan tableModel = tblPhongBan.getSelectionModel().getSelectedItem();
        PhongBan pb = pbdao.findByCode(tableModel.getMaPB()).get(0);
        setModel(pb);
    }

    @FXML
    private void selectChucVu(MouseEvent event) {
        TableChucVu tableModel = tblChucVu.getSelectionModel().getSelectedItem();
        ChucVu cv = cvdao.findByCode(tableModel.getMaCV()).get(0);
        setModel(cv);
    }
}
