/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

/**
 *
 * @author Admin
 */
import database.SQLServerConnUtils_JTDS;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class HomestayController {
    @RequestMapping(value="/homestays", method = RequestMethod.GET)
    public String HomestayAction(ModelMap modelmap) {
        String[] windows = new String[]{"Windows XP", "Windows 7", "Windows 8", "Windows mobile"};
        modelmap.put("windows", windows);
        modelmap.put("h1", "Homestay test");

        return "listHomestay";
    }
    
    public static void main(String[] args) throws SQLException {
//        Connection connection;
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");
            checkConnectionStatus(connection);

            PreparedStatement statement = connection.prepareStatement("select * from HOMESTAY where Rating like ?");
            statement.setString(1, "5");	

            ResultSet rs = statement.executeQuery();

            while (rs.next()) 
            {
                System.out.println(rs.getString("HomestayName"));
            }
            connection.close();
            checkConnectionStatus(connection);
        } catch (ClassNotFoundException e) {
                e.printStackTrace();
        } catch (SQLException e) {
                e.printStackTrace();
        }
    }
 
    public static void checkConnectionStatus(Connection connection) throws SQLException {
        if (connection.isClosed()) {
            System.out.println("Hiện tại Không có kết nối đến Hệ Quản trị Cơ sở dữ liệu");
        } else {
            System.out.println("Hiện tại Đang có kết nối đến Hệ quản trị CSDL");
        }
    }
 
}
