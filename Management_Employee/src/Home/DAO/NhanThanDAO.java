package Home.DAO;

import Home.common.JDBC;
import Home.model.ThanNhan;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class NhanThanDAO {

     public ObservableList<ThanNhan> findByCode(int code) {
        ObservableList<ThanNhan> list = FXCollections.observableArrayList();
      ThanNhan thanNhan;
        try {
            String sql = "{Call FindNTByCode(?)}";
            ResultSet rs = JDBC.executeQuery(sql, code);
            while (rs.next()) {
                thanNhan = new ThanNhan(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getBoolean(6));
                list.add(thanNhan);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
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
