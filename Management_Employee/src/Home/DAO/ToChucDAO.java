
package Home.DAO;

import Home.common.JDBC;
import Home.model.PhongBan;
import Home.model.table.TablePhongBan;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;

public class ToChucDAO {
    NhanVienDAO nvdao = new NhanVienDAO();
    public ObservableList<TablePhongBan> getDataForTblPhongBan(){
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
//                        setModel(new NhanVienDAO().findByCode(pb.getMaNV()));
                    }
                });
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }
    
    public ObservableList<PhongBan> findPhongBanByCode(String code){
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
