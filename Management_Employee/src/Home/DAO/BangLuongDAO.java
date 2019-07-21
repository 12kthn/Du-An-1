
package Home.DAO;

import Home.common.JDBC;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BangLuongDAO {
    
    public double getTongTienLuong() {
        double TongTienLuong = 0;
        try {
            String sql = "{call SP_ThuNhap(?)}";
            ResultSet rs = JDBC.executeQuery(sql, 2019);
            while (rs.next()) {
                TongTienLuong = rs.getInt(1) / 1000000000.0;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return TongTienLuong;
    }
    
}
