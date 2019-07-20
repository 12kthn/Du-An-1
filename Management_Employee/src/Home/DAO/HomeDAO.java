package Home.DAO;

import Home.common.JDBC;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.chart.XYChart;

public class HomeDAO {

    public int getSLNVTheoPhongBan() {
        int SLNhanVien = 0;
        try {
            String sql = "{call SP_SLNVTheoPhongBan(?)}";
            ResultSet rs = JDBC.executeQuery(sql, (Object) null);
            while (rs.next()) {
                SLNhanVien = rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return SLNhanVien;
    }

    public ObservableList getDataForChartTangTruongNV(String MaPB, int year) {
        ObservableList data = FXCollections.observableArrayList();
        int month = 12;
        if (year == LocalDate.now().getYear()) {
            month = LocalDate.now().getMonthValue();
        }
        for (int i = 1; i <= month; i++) {
            try {
                String sql = "{call SP_SLNVTheoThoiGianVaPB(?,?,?)}";
                ResultSet rs = JDBC.executeQuery(sql, MaPB, i + "", year + "");
                while (rs.next()) {
                    data.add(new XYChart.Data("Tháng " + i, rs.getInt(1)));
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return data;
    }

    public int getSoGioLamViec() {
        int SoGioLamViec = 0;
        try {
            String sql = "{call SP_SoGioLamViec(?)}";
            ResultSet rs = JDBC.executeQuery(sql, 2019);
            while (rs.next()) {
                SoGioLamViec = rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return SoGioLamViec;
    }

    public double getThuNhap() {
        double ThuNhap = 0;
        try {
            String sql = "{call SP_ThuNhap(?)}";
            ResultSet rs = JDBC.executeQuery(sql, 2019);
            while (rs.next()) {
                ThuNhap = rs.getInt(1) / 1000000000.0;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return ThuNhap;
    }
}
