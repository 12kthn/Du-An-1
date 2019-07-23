
package Home.DAO;

import Home.common.Common;
import Home.common.JDBC;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.scene.chart.XYChart;

public class BangLuongDAO {
    
    public double getTongTienLuongTrongNam(int year) {
        double TongTienLuong = 0;
        try {
            String sql = "{call SP_TongTienLuongTrongNam(?)}";
            ResultSet rs = JDBC.executeQuery(sql, year);
            while (rs.next()) {
                TongTienLuong = rs.getInt(1) / 1000000000.0;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return TongTienLuong;
    }
    
    public XYChart.Series getDataForChartPhanHoaTienLuong(int year, int month) {
        XYChart.Series data = new XYChart.Series<>();
        try {
            String sql = "{call SP_PhanHoaTienLuong(?,?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, Common.MAPB, year, month);
            while (rs.next()) {
                data.getData().add(new XYChart.Data("Cao nhất", rs.getDouble(1)));
                data.getData().add(new XYChart.Data("Thấp nhất", rs.getDouble(2)));
                data.getData().add(new XYChart.Data("Trung bình", rs.getDouble(3)));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }
    
    public XYChart.Series getDataForChartTienLuongTheoPhongBan(int year, int month) {
        XYChart.Series data = new XYChart.Series<>();
        double tongTien = 0;
        int soPhongBan = 0;
        
        try {
            String sql = "{call SP_TongTienLuongVaPBTheoThang(?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, year, month);
            while (rs.next()) {
                data.getData().add(new XYChart.Data(rs.getString(1), rs.getDouble(2)));
                tongTien += rs.getDouble(2);
                soPhongBan++;
            }
            if (tongTien > 0) {
                data.getData().add(new XYChart.Data("Trung bình", tongTien/soPhongBan));
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }
}
