
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
                phongBan = new PhongBan(rs.getString(1), rs.getString(2));
                list.add(phongBan);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
    
    public void InsertPB(PhongBan pb){
        
        String sql = "{call sp_phongban(?,?,?)}";
        JDBC.executeUpdate(sql,
                pb.getMaPB(),
                pb.getTenPB(),
                "insert"
                );
    }
    
    public void UpdatePB(PhongBan pb){
        String sql = "{call sp_phongban(?,?,?)}";
        JDBC.executeUpdate(sql,
                pb.getMaPB(),
                pb.getTenPB(),
                "update"
                );
    }
    
    public void DeletePB(PhongBan pb){
        String sql = "{call sp_phongban(?,?,?)}";
        JDBC.executeUpdate(sql,
                pb.getMaPB(),
                pb.getTenPB(),
                "delete"
                );
    }
}
