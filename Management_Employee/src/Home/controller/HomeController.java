package Home.controller;

import Home.DAO.BangLuongDAO;
import Home.DAO.ChamCongDAO;
import Home.DAO.NhanVienDAO;
import Home.common.FormatNumber;
import com.jfoenix.controls.JFXComboBox;
import java.net.URL;
import java.time.LocalDate;
import java.util.ResourceBundle;
import javafx.application.Platform;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.XYChart;
import javafx.scene.control.Label;

public class HomeController implements Initializable, Runnable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            nvdao = new NhanVienDAO();
            ccdao = new ChamCongDAO();
            bldao = new BangLuongDAO();
            
            loadCboNam();
            year = cboNam.getSelectionModel().getSelectedItem();
            runThread();
            loadChartTangTruongNV(year);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    private void runThread() {
        Thread thread = new Thread(this);
        thread.start();
    }

    private void loadCboNam() {
        cboNam.getItems().add(LocalDate.now().getYear());
        cboNam.getItems().add(LocalDate.now().getYear() - 1);
        cboNam.getItems().add(LocalDate.now().getYear() - 2);
        cboNam.getItems().add(LocalDate.now().getYear() - 3);
        cboNam.getSelectionModel().select(0);

        cboNam.valueProperty().addListener(new ChangeListener<Integer>() {
            @Override
            public void changed(ObservableValue ov, Integer oldValue, Integer newValue) {
                year = newValue;
                runThread();
                loadChartTangTruongNV(year);
            }
        });
    }

    private void loadChartTangTruongNV(int year) {
        chartTangTruongNV.getData().clear();
        chartTangTruongNV.setTitle("Biểu đồ số lượng nhân viên năm " + year);

        XYChart.Series series1 = new XYChart.Series<>();
        series1.setName("Giám đốc");
        series1.setData(nvdao.getSLNVTheoThoiGianVaPB("GD", year));

        XYChart.Series series2 = new XYChart.Series<>();
        series2.setName("Kỹ thuật");
        series2.setData(nvdao.getSLNVTheoThoiGianVaPB("IT", year));

        XYChart.Series series3 = new XYChart.Series<>();
        series3.setName("Kế toán");
        series3.setData(nvdao.getSLNVTheoThoiGianVaPB("KT", year));

        XYChart.Series series4 = new XYChart.Series<>();
        series4.setName("Marketing");
        series4.setData(nvdao.getSLNVTheoThoiGianVaPB("MK", year));

        XYChart.Series series5 = new XYChart.Series<>();
        series5.setName("Nhân sự");
        series5.setData(nvdao.getSLNVTheoThoiGianVaPB("NS", year));

        XYChart.Series series6 = new XYChart.Series<>();
        series6.setName("Bán hàng");
        series6.setData(nvdao.getSLNVTheoThoiGianVaPB("SL", year));

        XYChart.Series series7 = new XYChart.Series<>();
        series7.setName("Tất cả");
        series7.setData(nvdao.getSLNVTheoThoiGianVaPB("", year));

        //add series to chart
        chartTangTruongNV.getData().addAll(series1, series2, series3, series4, series5, series6, series7);
    }

    private NhanVienDAO nvdao;
    private ChamCongDAO ccdao;
    private BangLuongDAO bldao;
    private int year;

    @FXML
    private Label lblThuNhap;

    @FXML
    private Label lblSoGIoLamViec;

    @FXML
    private Label lblSLNhanVien;

    @FXML
    private LineChart chartTangTruongNV;

    @FXML
    private JFXComboBox<Integer> cboNam;

    @Override
    public void run() {
        try {
            Thread.sleep(1000);
            double plusNum1 = nvdao.getSLNVTheoPBVaNam(year)/ 20.0;
            double plusNum2 = bldao.getTongTienLuongTrongNam(year) / 20.0;
            double plusNum3 = ccdao.getSoGioLamViec(year) / 20.0;
            for (int i = 1; i <= 20; i++) {
                int value1 = (int) (i * plusNum1);
                double value2 = i * plusNum2;
                int value3 = (int) (i * plusNum3);
                Platform.runLater(new Runnable() {
                    @Override
                    public void run() {
                        lblSLNhanVien.setText(value1 + "");
                        lblThuNhap.setText(FormatNumber.formatDouble(value2, "###,###.###"));
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
