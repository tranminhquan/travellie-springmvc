package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLServerConnUtils_JTDS {
	// Kết nối vào SQL Server.
    // (Sử dụng thư viện SQLJDBC)
    public static Connection getSQLServerConnection_SQLJDBC() //
            throws ClassNotFoundException, SQLException {
 
        // Chú ý: Thay đổi các thông số kết nối cho phù hợp.
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
 
        // Cấu trúc URL Connection dành cho SQLServer
        String connectionURL = "jdbc:sqlserver://kafein.database.windows.net:1433;database=TRAVELIE;"
                + "user=kafeinadmin@kafein;password={Kafeinabsoluke123};"
                + "encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;";

        String localConnectionURL = "jdbc:sqlserver://" + "localhost" + ":1433" //
                + ";instance=" + "AQUINOZ" + ";databaseName=" + "TRAVELIE";
//        Connection conn = DriverManager.getConnection(connectionURL);
        Connection conn = DriverManager.getConnection(localConnectionURL, "sa", "123456");
        return conn;
        
    }
}
