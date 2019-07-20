
package Home.DAO;

import Home.common.JDBC;
import Home.model.PhongBan;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class PhongBanDAO {
    
    public ObservableList<PhongBan> findByCode(String code){
        ObservableList<PhongBan> list = FXCollections.observableArrayList();
        PhongBan phongBan;
        try {
            String sql = "{Call SP_FindPhongBanByCode(?)}";
            ResultSet rs = JDBC.executeQuery(sql, code);
            while (rs.next()) {                
                phongBan = new PhongBan(rs.getString(1), rs.getString(2), rs.getString(3));
                list.add(phongBan);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
}
