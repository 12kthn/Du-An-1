package Home.DAO;

import Home.common.Common;
import Home.common.JDBC;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.beans.binding.Bindings;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.chart.PieChart;

public class ChamCongDAO {

    public int getSoGioLamViec(int year) {
        try {
            String sql = "{call SP_SoGioLamViec(?)}";
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
        Object maPB = "GD".equals(Common.MAPB) ? (Object) null : Common.MAPB;
        try {
            String sql = "{Call SP_ChuyenCanTheoThang(?,?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, maPB, year, month);
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
        
        double tongSLNV = new NhanVienDAO().getSLNVTheoPhongBan();
        int SLNVDiLamDayDu = new ChamCongDAO().getSLNVDiLamDayDuTheoThang(year, month);
        
        chartData.add(new PieChart.Data("Số lượng nhân viên đi làm đầy đủ", SLNVDiLamDayDu));
        chartData.add(new PieChart.Data("Số lượng nhân viên đi làm không đầy đủ", tongSLNV - SLNVDiLamDayDu));
        
        chartData.forEach(data->
                data.nameProperty().bind(
                        Bindings.concat(data.getName(), ": ", data.getPieValue()/tongSLNV*100, "%")));
        
        return chartData;
    }
}
