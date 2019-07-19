
package Home.DAO;

import Home.common.JDBC;
import java.sql.ResultSet;
import java.sql.SQLException;

public class HomeDAO {
    public int getSLNhanVien() {
        int SlNhanVien = 0;
        try {
            String sql = "{call SP_SLNhanVien(?)}";
            ResultSet rs = JDBC.executeQuery(sql, (Object) null);
            while (rs.next()) {
                SlNhanVien =  rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return SlNhanVien;
    }
    
    public int getSoGioLamViec() {
        int SoGioLamViec = 0;
        try {
            String sql = "{call SP_SoGioLamViec(?)}";
            ResultSet rs = JDBC.executeQuery(sql, 2019);
            while (rs.next()) {
                SoGioLamViec =  rs.getInt(1);
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
                ThuNhap =  rs.getInt(1)/1000000000.0;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return ThuNhap;
    }
}

