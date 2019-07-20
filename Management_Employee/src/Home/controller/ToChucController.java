
package Home.controller;

import Home.DAO.NhanVienDAO;
import Home.DAO.ToChucDAO;
import Home.model.NhanVien;
import Home.model.PhongBan;
import Home.model.table.TablePhongBan;
import com.jfoenix.controls.JFXComboBox;
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

public class ToChucController implements Initializable{

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        tcdao = new ToChucDAO();
        nvdao = new NhanVienDAO();
        setTableColumn();
        loadDataToTblPhongBan();
    }
    
    private void loadCboNhanVien(String maPB){
        listNhanVien = nvdao.findNVByPB(maPB);
        cboNhanVien.setItems(listNhanVien);
    }
    
    private void setTableColumn(){
        //Khai bao cot
        deleteColumn = new TableColumn<>("");
        deleteColumn.setCellValueFactory(new PropertyValueFactory<>("Delete"));
        deleteColumn.setStyle("-fx-alignment: CENTER-RIGHT; -fx-border-width: 1 0 1 1;");
        
        updateColumn = new TableColumn<>("");
        updateColumn.setCellValueFactory(new PropertyValueFactory<>("Update"));
        updateColumn.setStyle("-fx-alignment: CENTER-LEFT;");
                
        col1 = new TableColumn<>("Mã PB");
        col1.setCellValueFactory(new PropertyValueFactory<>("MaPB"));
        col1.setPrefWidth(100);
        
        col2 = new TableColumn<>("Tên PB");
        col2.setCellValueFactory(new PropertyValueFactory<>("TenPB"));
        col2.setPrefWidth(100);
        
        col3 = new TableColumn<>("Trưởng phòng");
        col3.setCellValueFactory(new PropertyValueFactory<>("TruongPhong"));
        col3.setPrefWidth(180);
        
        tblPhongBan.getColumns().addAll(deleteColumn, updateColumn, col1, col2, col3);
    }
    
    private void loadDataToTblPhongBan(){
        data = tcdao.getDataForTblPhongBan();
        tblPhongBan.setItems(data);
    }
    
    @FXML
    private void selectPhongBan(MouseEvent event){
        TablePhongBan tablePhongBan = tblPhongBan.getSelectionModel().getSelectedItem();
        PhongBan pb = tcdao.findPhongBanByCode(tablePhongBan.getMaPB()).get(0);
        setModel(pb);
    }
    
    private void setModel(PhongBan pb){
        txtMaPB.setText(pb.getMaPB());
        txtTenPB.setText(pb.getTenPB());
        loadCboNhanVien(pb.getMaPB());
        for (NhanVien nv : listNhanVien) {
            if (nv.getMaNV().equals(pb.getMaTruongPhong())) {
                cboNhanVien.getSelectionModel().select(nv);
            }
        }
    }
    
    private ToChucDAO tcdao;
    private NhanVienDAO nvdao;
    private TableColumn<TablePhongBan, Button> deleteColumn;
    private TableColumn<TablePhongBan, Button> updateColumn;
    private TableColumn<TablePhongBan, String> col1;
    private TableColumn<TablePhongBan, String> col2;
    private TableColumn<TablePhongBan, String> col3;
    private ObservableList<TablePhongBan> data;
    private ObservableList<NhanVien> listNhanVien;
    @FXML
    private JFXTextField txtPhuCap;

    @FXML
    private JFXTextField txtTenCV;
    @FXML
    private JFXComboBox<NhanVien> cboNhanVien;

    @FXML
    private JFXTextField txtMaCV;

    @FXML
    private JFXTextField txtMaPB;

    @FXML
    private JFXTextField txtTenPB;

    @FXML
    private TableView<TablePhongBan> tblPhongBan;
    @FXML
    private TableView<?> tblChucVu;
}
