package Home.DAO;

import Home.helper.JDBC;
import Home.model.ChucVu;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class ChucVuDAO {

    public ObservableList<ChucVu> findByCode(String code) {
        ObservableList<ChucVu> list = FXCollections.observableArrayList();
        ChucVu cv;
        try {
            String sql = "{Call SP_FindChucVuByCode(?)}";
            ResultSet rs = JDBC.executeQuery(sql, code);
            while (rs.next()) {
                cv = new ChucVu(rs.getString(1), rs.getString(2), rs.getDouble(3));
                list.add(cv);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public int insert(ChucVu cv) {
        try {
            String sql = "{call sp_chucvu(?,?,?,?)}";
            return JDBC.executeUpdate(sql,
                    cv.getMaCV(),
                    cv.getTenCV(),
                    cv.getPhuCap(),
                    "insert"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    public int update(ChucVu cv) {
        try {
            String sql = "{call sp_chucvu(?,?,?,?)}";
            return JDBC.executeUpdate(sql,
                    cv.getMaCV(),
                    cv.getTenCV(),
                    cv.getPhuCap(),
                    "Update"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    public int delete(ChucVu cv) {
        try {
            String sql = "{call sp_chucvu(?,?,?,?)}";
            return JDBC.executeUpdate(sql,
                    cv.getMaCV(),
                    cv.getTenCV(),
                    cv.getPhuCap(),
                    "Delete"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }
}
