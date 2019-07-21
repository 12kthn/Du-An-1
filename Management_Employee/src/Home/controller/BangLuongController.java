
package Home.controller;

import Home.DAO.BangLuongDAO;
import Home.DAO.TableBangLuongDAO;
import Home.model.table.TableBangLuong;
import java.net.URL;
import java.util.Date;
import java.util.ResourceBundle;
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
            loadChart();
            setColumnModel();
            loadTable(2019, 6);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    private void loadChart(){
        chartPhanHoaTienLuong.getData().add(bldao.getDataForChartPhanHoaTienLuong());
        chartTienLuongTheoPhongBan.getData().add(bldao.getDataForChartTienLuongTheoPhongBan());
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
    private BarChart<?,?> chartPhanHoaTienLuong;
    @FXML
    private BarChart<?,?> chartTienLuongTheoPhongBan;
    @FXML
    private TableView<TableBangLuong> tblBangLuong;
}
