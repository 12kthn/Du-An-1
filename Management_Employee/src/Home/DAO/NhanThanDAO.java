package Home.DAO;

import Home.common.JDBC;
import Home.model.ThanNhan;
import java.sql.ResultSet;

public class NhanThanDAO {

    public ThanNhan findNTbycode(String code ) {
ThanNhan thanNhan = null;
        try {
            String sql = "{call FindNTByCode}";
            ResultSet rs = JDBC.executeQuery(sql, code);
            while(rs.next()){
                thanNhan = new ThanNhan(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getBoolean(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return thanNhan;
    }

    public int insertNT(ThanNhan NT) {
        try {
            String sql = "{ call SP_ThanNhan(?,?,?,?,?,?,?)}";
            return JDBC.executeUpdate(sql,
                    NT.getMaTN(),
                    NT.getHoTen(),
                    NT.getNgheNghiep(),
                    NT.getMoiQuanHe(),
                    NT.getMaNV(),
                    NT.getGiamTruPhuThuoc(), "insert");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int updateNT(ThanNhan NT) {
        try {
            String sql = "{ call SP_ThanNhan(?,?,?,?,?,?,?)}";
            return JDBC.executeUpdate(sql,
                    NT.getMaTN(),
                    NT.getHoTen(),
                    NT.getNgheNghiep(),
                    NT.getMoiQuanHe(),
                    NT.getMaNV(),
                    NT.getGiamTruPhuThuoc(), "update");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
