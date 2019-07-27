
package Home.common;

import static Home.common.JDBC.prepareStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCMaster {
    private static String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static String dburl = "jdbc:sqlserver://localhost:1433;databaseName=master";
    private static String username = "sa";
    private static String password = "fpolyduan1";
    private static Connection connection;
    //Nạp driver
    static {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }
    
    /**
     * Xây dựng PreparedStatement
     *
     * @param sql là câu lệnh SQL chứa có thể chứa tham số. Nó có thể là một lời
     * gọi thủ tục lưu
     * @param args là danh sách các giá trị được cung cấp cho các tham số trong
     * câu lệnh sql
     * @return PreparedStatement tạo được
     */
    public static PreparedStatement prepareStatement(String sql, Object... args) {
        PreparedStatement pstmt = null;
        try {
            connection = DriverManager.getConnection(dburl, username, password);   
            if (sql.trim().startsWith("{")) {
                pstmt = connection.prepareCall(sql);
            } else {
                pstmt = connection.prepareStatement(sql);
            }
            for (int i = 0; i < args.length; i++) {
                pstmt.setObject(i + 1, args[i]);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return pstmt;
    }
    
    /**
     * Thực hiện câu lệnh SQL hoặc thủ tục lưu
     *
     * @param sql là câu lệnh SQL chứa có thể chứa tham số. Nó có thể là một lời
     * gọi thủ tục lưu
     * @param args là danh sách các giá trị được cung cấp cho các tham số trong
     * câu lệnh sql
     */
    public static void execute(String sql, Object... args) {
        try {
            PreparedStatement pstm = prepareStatement(sql, args);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    /**
     * Đóng kết nối
     */
    public static void closeConnection(){
        try {
            connection.close();
        } catch (SQLException ex) {
            throw new RuntimeException();
        }
    }
}
