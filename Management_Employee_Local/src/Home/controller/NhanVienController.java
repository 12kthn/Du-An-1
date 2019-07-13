/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Home.controller;

import Libraries.jfoenix.controls.JFXComboBox;
import com.jfoenix.controls.JFXTextField;
import java.net.URL;
import java.util.Observable;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.PieChart;
import javafx.scene.chart.XYChart;
import javafx.scene.control.TableView;

/**
 *
 * @author nucle
 */
public class NhanVienController implements Initializable{
    @FXML
    private JFXTextField txtGioiTinh;

    @FXML
    private BarChart<?, ?> chartNumberEmployees;

    @FXML
    private PieChart chartMaleFemale;

    @FXML
    private JFXTextField txtTrinhDo;

    @FXML
    private JFXTextField txtMaNV;

    @FXML
    private TableView<?> tblEmployees;

    @FXML
    private JFXTextField txtNgaySinh;

    @FXML
    private JFXTextField txtHoTen;

    @FXML
    private JFXTextField txtDiaChi;

    @FXML
    private JFXTextField txtEmail;

    @FXML
    private JFXTextField txtCMND;

    @FXML
    private JFXTextField txtSoDT;
    
    @FXML
    private JFXComboBox<?> cboPhongBan;
      
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        setPieChart();
        setBarChart();
        fillCbo();
    }
    
    private void setPieChart(){
        
        PieChart.Data slice1 = new PieChart.Data("Nữ", 16);

        PieChart.Data slice2 = new PieChart.Data("Nam", 20);
        
        chartMaleFemale.getData().add(slice1);
        chartMaleFemale.getData().add(slice2);

//        ObservableList<PieChart.Data> pieChartData = chartMaleFemale.getData();
//        pieChartData.forEach((data) -> {
//            data.nameProperty().bind(Bindings.concat(data.pieValueProperty()));
//        });
    }
    
    private void setBarChart(){
        XYChart.Series col = new XYChart.Series<>();
        
        col.getData().add(new XYChart.Data("Nhân sự", 5));
        col.getData().add(new XYChart.Data("Kế toáṇ", 4));
        col.getData().add(new XYChart.Data("Marketting̣", 8));
        col.getData().add(new XYChart.Data("Kỹ thuậṭ", 3));
        
        chartNumberEmployees.getData().add(col);
    }
    
    private void fillCbo(){
        ObservableList list = FXCollections.observableArrayList("Kế toán","Nhân sự");
        cboPhongBan.setItems(list);
    }
}
