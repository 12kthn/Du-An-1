package Home.DAO;

import Home.helper.JDBC;
import Home.model.BacThueTNCN;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class BacThueTNCNDAO {

    public ObservableList<BacThueTNCN> findByCode(String code) {
        ObservableList<BacThueTNCN> list = FXCollections.observableArrayList();
        BacThueTNCN bacThueTNCN;
        try {
            String sql = "{Call SP_FindBacThueTNCNByThuNhap(?)}";
            ResultSet rs = JDBC.executeQuery(sql, code);
            while (rs.next()) {
                bacThueTNCN = new BacThueTNCN(rs.getInt(1), rs.getDouble(2));
                list.add(bacThueTNCN);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public int insert(BacThueTNCN bttncn) {
        int result = 0;
        try {
            String sql = "{call sp_phongban(?,?,?)}";
            result = JDBC.executeUpdate(sql,
                    bttncn.getLuong(),
                    bttncn.getThue(),
                    "insert"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public int update(BacThueTNCN bttncn) {
        int result = 0;
        try {
            String sql = "{call sp_phongban(?,?,?)}";
            result = JDBC.executeUpdate(sql,
                    bttncn.getLuong(),
                    bttncn.getThue(),
                    "update"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public int delete(BacThueTNCN bttncn) {
        int result = 0;
        try {
            String sql = "{call sp_phongban(?,?,?)}";
            result = JDBC.executeUpdate(sql,
                    bttncn.getLuong(),
                    bttncn.getThue(),
                    "delete"
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
