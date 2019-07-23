
package Home.controller;

import Home.DAO.BangLuongDAO;
import Home.DAO.TableBangLuongDAO;
import Home.common.XDate;
import Home.model.table.TableBangLuong;
import com.jfoenix.controls.JFXComboBox;
import java.net.URL;
import java.time.LocalDate;
import java.util.Date;
import java.util.ResourceBundle;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.chart.BarChart;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

public class BangLuongController implements Initializable{

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            bldao = new BangLuongDAO();
            tbl_bldao = new TableBangLuongDAO();
            
            loadCboNam();
            year = cboNam.getSelectionModel().getSelectedItem();
            loadCboThang();
            month = cboThang.getSelectionModel().getSelectedItem();
            addListener();
            
            loadChart();
            
            setColumnModel();
            loadTable(2019, 6);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    //Them du lieu vao cboNam
    private void loadCboNam() {
        cboNam.getItems().clear();

        cboNam.getItems().add(LocalDate.now().getYear());//năm hiện tại
        cboNam.getItems().add(LocalDate.now().getYear() - 1);
        cboNam.getItems().add(LocalDate.now().getYear() - 2);
        cboNam.getItems().add(LocalDate.now().getYear() - 3);
        cboNam.getSelectionModel().select(0);

    }

    //Them du lieu vao cboThang
    private void loadCboThang() {
        cboThang.getItems().clear();
        for (int i = 1; i <= XDate.monthOfYear(year); i++) {
            cboThang.getItems().add(i);
        }
        //mặc định cboThang chọn tháng hiện tại nếu năm đang chọn là năm hiện tại
        //nếu không chọn tháng 1
        if (year == LocalDate.now().getYear()) {
            cboThang.getSelectionModel().select(XDate.monthOfYear(year) - 2);
        } else {
            cboThang.getSelectionModel().select(0);
        }
    }
    
    //Them su kien cho Combobox
    private void addListener() {

        cboNam.valueProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue ov, Integer oldValue, Integer newValue) {
                year = newValue;
                loadCboThang();
            }
        });

        cboThang.valueProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue ov, Integer oldValue, Integer newValue) {
                try {
                    month = newValue;
                } catch (Exception e) {
                }
                loadChart();
            }
        });
    }
    
    private void loadChart(){
        chartPhanHoaTienLuong.getData().clear();
        chartPhanHoaTienLuong.getData().add(bldao.getDataForChartPhanHoaTienLuong(year, month));
        
        chartTienLuongTheoPhongBan.getData().clear();
        chartTienLuongTheoPhongBan.getData().add(bldao.getDataForChartTienLuongTheoPhongBan(year, month));
    }
    
    private void setColumnModel(){
        //Khai bao cot
        col1 = new TableColumn<>("Mã nhân viên");
        col1.setCellValueFactory(new PropertyValueFactory<>("MaNV"));
        col2 = new TableColumn<>("Họ tên");
        col2.setCellValueFactory(new PropertyValueFactory<>("HoTen"));
        col3 = new TableColumn<>("Phòng ban");
        col3.setCellValueFactory(new PropertyValueFactory<>("TenPB"));
        col4 = new TableColumn<>("Chức vụ");
        col4.setCellValueFactory(new PropertyValueFactory<>("TenCV"));
        col5 = new TableColumn<>("Ngày phát lương");
        col5.setCellValueFactory(new PropertyValueFactory<>("NgayPhatLuong"));
        col6 = new TableColumn<>("Lương chính");
        col6.setCellValueFactory(new PropertyValueFactory<>("LuongChinh"));
        col7 = new TableColumn<>("Ngày công");
        col7.setCellValueFactory(new PropertyValueFactory<>("NgayCong"));
        col8 = new TableColumn<>("Phụ cấp trách nhiệm");
        col8.setCellValueFactory(new PropertyValueFactory<>("PC_TrachNhiem"));
        col9 = new TableColumn<>("Thu nhập");
        col9.setCellValueFactory(new PropertyValueFactory<>("ThuNhap"));
        col10 = new TableColumn<>("BHXH");
        col10.setCellValueFactory(new PropertyValueFactory<>("BHXH"));
        col11 = new TableColumn<>("BHYT");
        col11.setCellValueFactory(new PropertyValueFactory<>("BHYT"));
        col12 = new TableColumn<>("BHTN");
        col12.setCellValueFactory(new PropertyValueFactory<>("BHTN"));
        col13 = new TableColumn<>("Phụ thuộc");
        col13.setCellValueFactory(new PropertyValueFactory<>("PhuThuoc"));
        col14 = new TableColumn<>("Thuế TNCN");
        col14.setCellValueFactory(new PropertyValueFactory<>("TNCN"));
        col15 = new TableColumn<>("Tạm ứng");
        col15.setCellValueFactory(new PropertyValueFactory<>("TamUng"));
        col16 = new TableColumn<>("Thực lãnh");
        col16.setCellValueFactory(new PropertyValueFactory<>("ThucLanh"));
        col17 = new TableColumn<>("Trạng thái");
        col17.setCellValueFactory(new PropertyValueFactory<>("TrangThai"));
        
        tblBangLuong.getColumns().addAll(col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11, col12, col13,
                                        col14, col15, col16, col17);
    }
    
    private void loadTable(int year, int month){
        tblBangLuong.setItems(tbl_bldao.getData(year, month));
    }
    
    private BangLuongDAO bldao;
    private TableBangLuongDAO tbl_bldao;
    private int year;
    private int month;
    
    private TableColumn<TableBangLuong, String> col1;
    private TableColumn<TableBangLuong, String> col2;
    private TableColumn<TableBangLuong, String> col3;
    private TableColumn<TableBangLuong, String> col4;
    private TableColumn<TableBangLuong, Date> col5;
    private TableColumn<TableBangLuong, Integer> col6;
    private TableColumn<TableBangLuong, Integer> col7;
    private TableColumn<TableBangLuong, Integer> col8;
    private TableColumn<TableBangLuong, Integer> col9;
    private TableColumn<TableBangLuong, Integer> col10;
    private TableColumn<TableBangLuong, Integer> col11;
    private TableColumn<TableBangLuong, Integer> col12;
    private TableColumn<TableBangLuong, Integer> col13;
    private TableColumn<TableBangLuong, Integer> col14;
    private TableColumn<TableBangLuong, Integer> col15;
    private TableColumn<TableBangLuong, Integer> col16;
    private TableColumn<TableBangLuong, String> col17;
    
    @FXML
    private JFXComboBox<Integer> cboNam;
    @FXML
    private JFXComboBox<Integer> cboThang;
    @FXML
    private BarChart<?,?> chartPhanHoaTienLuong;
    @FXML
    private BarChart<?,?> chartTienLuongTheoPhongBan;
    @FXML
    private TableView<TableBangLuong> tblBangLuong;
}
