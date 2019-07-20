
package Home.DAO;

import Home.common.Common;
import Home.common.JDBC;
import Home.model.table.TablePhongBan;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;

public class TablePhongBanDAO {
    
    NhanVienDAO nvdao = new NhanVienDAO();
    PhongBanDAO pbdao = new PhongBanDAO();
    
    public ObservableList<TablePhongBan> getData(){
        ObservableList<TablePhongBan> data = FXCollections.observableArrayList();
        try {
            String sql = "{Call SP_FindPhongBanByCode(?)}";
            ResultSet rs = JDBC.executeQuery(sql, (Object) null);
            while (rs.next()){
                TablePhongBan pb = new TablePhongBan(rs.getString(1), rs.getString(2), nvdao.findByCode(rs.getString(3)));
                
                data.add(pb);
                pb.getDelete().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        data.remove(pb);
                    }
                });
                pb.getUpdate().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        Common.tcController.setModel(pbdao.findByCode(pb.getMaPB()).get(0));
                    }
                });
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }
}
