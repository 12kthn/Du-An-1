package Home.DAO;

import Home.helper.Share;
import Home.helper.FormatNumber;
import Home.helper.JDBC;
import Home.helper.XDate;
import Home.model.ChamCong;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.function.Consumer;
import javafx.beans.binding.Bindings;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.chart.PieChart;

public class ChamCongDAO {
    
    public ChamCong findByCode(String maNV, Date ngay){
        ChamCong cc = null;
        try {
            String sql = "{Call SP_FindCCByPrimaryKey(?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, maNV, XDate.toSqlDate(ngay));
            while (rs.next()){
                return cc = new ChamCong(maNV, ngay, rs.getBoolean(3));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return cc;
    }
    
    //Phuong thuc kiem tra tháng này đã chấm công chưa
    public Boolean noRecordExist(int year, int month){
        try {
            String sql = "{Call SP_FindCCByMonth(?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, year, month);
            while (rs.next()){
                return false;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return true;
    }
    
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
        int ngayTrongThang = XDate.daysOfMonth(year, month);
        int soNgayLe = XDate.holidaysInMonth(year, month);
        int soNgayLamViecThapNhat = Integer.min(26, ngayTrongThang - soNgayLe);
        try {
            String sql = "{Call SP_ChuyenCanTheoThang(?,?,?,?)}";
            ResultSet rs = JDBC.executeQuery(sql, Share.MAPB, year, month, soNgayLamViecThapNhat);
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
        
        double tongSLNV = new NhanVienDAO().getSLNVTheoPBVaThang(Share.MAPB, year, month);
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
        
        double ngayTrongThang = XDate.daysOfMonth(year, month);
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
    
    public ObservableList<Integer> getListYear(){
        ObservableList<Integer> list = FXCollections.observableArrayList();
        try {
            String sql = "{Call SP_ListYearCC}";
            ResultSet rs = JDBC.executeQuery(sql);
            while (rs.next()) {
                list.add(rs.getInt(1));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
    
    public int insert(ChamCong cc){
        try {
            String sql = "{Call SP_ChamCong(?,?,?,?)}";
            return JDBC.executeUpdate(sql, cc.getMaNV(), XDate.toSqlDate(cc.getNgay()), cc.getTinhTrang(), "Insert");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    
    public int update(ChamCong cc){
        try {
            String sql = "{Call SP_ChamCong(?,?,?,?)}";
            return JDBC.executeUpdate(sql, cc.getMaNV(), XDate.toSqlDate(cc.getNgay()), cc.getTinhTrang(), "Update");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    
    public int delete(ChamCong cc){
        try {
            String sql = "{Call SP_ChamCong(?,?,?,?)}";
            return JDBC.executeUpdate(sql, cc.getMaNV(), XDate.toSqlDate(cc.getNgay()), cc.getTinhTrang(), "Delete");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
}
