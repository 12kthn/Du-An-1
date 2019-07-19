package Home.controller;

import Home.DAO.HomeDAO;
import Home.DAO.NhanVienDAO;
import Home.common.Common;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.chart.AreaChart;
import javafx.scene.chart.LineChart;
import javafx.scene.control.Label;

public class HomeController implements Initializable, Runnable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            dao = new HomeDAO();
            Thread thread = new Thread(this);
            thread.start();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    @FXML
    private Label lblThuNhap;

    @FXML
    private Label lblSoGIoLamViec;

    @FXML
    private Label lblSLNhanVien;
    
    @FXML
    private AreaChart chartTangTruongNV;

    @FXML
    public void setGUINhanVien() {
        try {
            Common.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/NhanVien.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUIChamCong() {
        try {
            Common.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/ChamCong.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @FXML
    public void setGUIBangLuong() {
        try {
            Common.mainPane.setCenter(FXMLLoader.load(getClass().getResource("/Home/gui/BangLuong.fxml")));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    private HomeDAO dao;

    @Override
    public void run() {
        try {
            double plusNum1 = dao.getSLNhanVien() / 20.0;
            double plusNum2 = dao.getThuNhap() / 20.0;
            double plusNum3 = dao.getSoGioLamViec() / 20.0;
            for (int i = 1; i <= 20; i++) {
                int value1 = (int) (i * plusNum1);
                double value2 = i * plusNum2;
                int value3 = (int) (i * plusNum3);
                Platform.runLater(new Runnable() {
                    @Override
                    public void run() {
                        lblSLNhanVien.setText(value1 + "");
                        lblThuNhap.setText(Common.formatDouble(value2, "###,###.###"));
                        lblSoGIoLamViec.setText(value3 + "");
                        
                    }
                });

                Thread.sleep(40);
            }
        } catch (InterruptedException ex) {
            ex.printStackTrace();
        }

    }

}
