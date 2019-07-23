package Home.DAO;

import Home.common.Common;
import Home.common.FormatNumber;
import Home.common.JDBC;
import Home.common.XDate;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.function.Consumer;
import javafx.beans.binding.Bindings;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.chart.PieChart;

public class ChamCongDAO {

    public int getSoGioLamViecTheoNam(int year) {
        try {
            String sql = "{call SP_SoGioLamViecTheoNam(?)}";
            ResultSet rs = JDBC.executeQuery(sql, year);
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    public int getSLNVDiLamDayDuTheoThang(int year, int month) {
        try {
            String sql = "{Call SP_ChuyenCanTheoThang(?,?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, Common.MAPB, year, month);
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    public ObservableList<PieChart.Data> getDataForChuyenCanChart(int year, int month) {
        ObservableList<PieChart.Data> chartData = FXCollections.observableArrayList();
        
        double tongSLNV = new NhanVienDAO().getSLNVTheoPhongBan(Common.MAPB);
        int SLNVDiLamDayDu = new ChamCongDAO().getSLNVDiLamDayDuTheoThang(year, month);
        
        chartData.add(new PieChart.Data("Số lượng nhân viên đi làm đầy đủ", SLNVDiLamDayDu));
        chartData.add(new PieChart.Data("Số lượng nhân viên đi làm không đầy đủ", tongSLNV - SLNVDiLamDayDu));
        
        chartData.forEach(new Consumer<PieChart.Data>() {
            @Override
            public void accept(PieChart.Data data) {
                data.nameProperty().bind(
                        Bindings.concat(data.getName(), ": ", FormatNumber.formatDouble(data.getPieValue()/tongSLNV*100), "%"));
            }
        });
        
        return chartData;
    }
    
    public ObservableList<PieChart.Data> getDataForSoNgayLamViecChart(int year, int month) {
        ObservableList<PieChart.Data> chartData = FXCollections.observableArrayList();
        
        double ngayTrongThang = XDate.daysInMonth(year, month);
        int soNgayLe = XDate.holidaysInMonth(year, month);
        
        chartData.add(new PieChart.Data("Số ngày làm việc trong tháng", ngayTrongThang - soNgayLe));
        chartData.add(new PieChart.Data("Số ngày lễ và Chủ nhật", soNgayLe));
        
        chartData.forEach(new Consumer<PieChart.Data>() {
            @Override
            public void accept(PieChart.Data data) {
                data.nameProperty().bind(
                        Bindings.concat(data.getName(), ": ", FormatNumber.formatDouble(data.getPieValue()/ngayTrongThang*100), "%"));
            }
        });
        
        return chartData;
    }
}
