
package Home.DAO;

import Home.common.JDBC;
import Home.model.ChucVu;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class ChucVuDAO {
    
    public ObservableList<ChucVu> findByCode(String code){
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
}
