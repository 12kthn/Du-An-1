
package Home.DAO;

import Home.common.JDBCMaster;

public class KhoiPhucDAO {
    public void restoreDB(String fullPath, String diffPath){
        try {
            String sql = "{Call SP_RESTOREQLNS(?,?)}";
            JDBCMaster.execute(sql,fullPath, diffPath);
            JDBCMaster.closeConnection();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
