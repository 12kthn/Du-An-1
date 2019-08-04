
package Home.DAO;

import Home.common.Common;
import Home.common.JDBC;
import Home.common.XDate;
import Home.model.BangLuong;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.chart.XYChart;

public class BangLuongDAO {
    
    //Kiểm tra có tồn tại bản ghi nào trong tháng hay không
    public Boolean banGhiTrongThang(int year, int month){
        try {
            String sql = "{call SP_BanGhiTrongThang(?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, year, month);
            while (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
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
        
    public ObservableList<Integer> getListYear(){
        ObservableList<Integer> list = FXCollections.observableArrayList();
        try {
            String sql = "{Call SP_ListYearBL}";
            ResultSet rs = JDBC.executeQuery(sql);
            while (rs.next()) {
                list.add(rs.getInt(1));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
    
    public int insert(BangLuong bl){
        try {
            String sql = "{Call SP_Insert_BangLuong(?,?,?)}";
            return JDBC.executeUpdate(sql, bl.getMaNV(), XDate.toSqlDate(bl.getNgayNhanLuong()), bl.getTrangThai());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    
    public int update(BangLuong bl){
        try {
            String sql = "{Call SP_Update_BangLuong(?,?,?)}";
            return JDBC.executeUpdate(sql, bl.getMaNV(), XDate.toSqlDate(bl.getNgayNhanLuong()), bl.getTrangThai());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

}
