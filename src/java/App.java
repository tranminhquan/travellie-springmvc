/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
import database.SQLServerConnUtils_JTDS;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class App {
 
    public static void main(String[] args) throws SQLException {
        Connection connection;
        try {
                connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
                System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");
                checkConnectionStatus(connection);
                connection.close();
                checkConnectionStatus(connection);
        } catch (ClassNotFoundException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
        }
//        Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
    }
 
    public static void checkConnectionStatus(Connection connection) throws SQLException {
        if (connection.isClosed()) {
            System.out.println("Hiện tại Không có kết nối đến Hệ Quản trị Cơ sở dữ liệu");
        } else {
            System.out.println("Hiện tại Đang có kết nối đến Hệ quản trị CSDL");
        }
    }
 
}
 
// Kết quả:
 
// Kết nối Hệ quản trị Cơ sở dữ liệu thành công
// Hiện tại Đang có kết nối đến Hệ quản trị CSDL
// Hiện tại Không có kết nối đến Hệ Quản trị Cơ sở dữ liệu
