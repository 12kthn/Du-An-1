package Home.DAO;

import Home.helper.JDBCMaster;
import java.sql.PreparedStatement;
import java.sql.SQLWarning;

public class KhoiPhucDAO {

    public boolean restoreDB(String fullPath, String diffPath) {
        try {
            String sql = "{Call SP_RESTOREQLNS(?,?)}";
            PreparedStatement pstm = JDBCMaster.prepareStatement(sql, fullPath, diffPath);
            pstm.execute();
            SQLWarning warning = pstm.getWarnings();
            while (warning != null) {
                JDBCMaster.closeConnection();
                return false;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
        JDBCMaster.closeConnection();
        return true;
    }
}
