
package Home.DAO;

import Home.common.JDBC;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ChamCongDAO {
    public int getSoGioLamViec(int year) {
        int SoGioLamViec = 0;
        try {
            String sql = "{call SP_SoGioLamViec(?)}";
            ResultSet rs = JDBC.executeQuery(sql, year);
            while (rs.next()) {
                SoGioLamViec = rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return SoGioLamViec;
    }
}
