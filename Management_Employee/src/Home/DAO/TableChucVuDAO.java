
package Home.DAO;

import Home.common.FormatNumber;
import Home.common.JDBC;
import Home.model.table.TableChucVu;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;

public class TableChucVuDAO {

    public ObservableList<TableChucVu> getData(){
        ObservableList<TableChucVu> data = FXCollections.observableArrayList();
        try {
            String sql = "{Call SP_FindChucVuByCode(?)}";
            ResultSet rs = JDBC.executeQuery(sql, (Object) null);
            while (rs.next()){
                TableChucVu cv = new TableChucVu(rs.getString(1), rs.getString(2), FormatNumber.formatDouble( rs.getDouble(3)) + "%");
                
                data.add(cv);
                cv.getDelete().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
                        data.remove(cv);
                    }
                });
                cv.getUpdate().setOnAction(new EventHandler<ActionEvent>() {
                    @Override
                    public void handle(ActionEvent event) {
//                        Common.tcController.setModel(new ToChucDAO().findPhongBanByCode(pb.getMaPB()).get(0));
                    }
                });
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return data;
    }
}
