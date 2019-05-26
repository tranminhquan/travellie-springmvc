/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package api;

import database.SQLServerConnUtils_JTDS;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import models.*;

/**
 *
 * @author Admin
 */
public class UserService {

    public String generateID() {
        StringBuilder id = new StringBuilder();
        try
        {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            Statement statement = connection.createStatement();
            String sql = "SELECT MAX(UserID) AS UserID FROM ENDUSER";
            ResultSet rs = statement.executeQuery(sql);
            Integer firstID = 0;
                   
            while(rs.next()) {
                firstID = Integer.parseInt(rs.getString("UserID").substring(3)) + 1;
            }
            if (firstID < 10) {
                id.append("UID000000" + firstID.toString());
            } else if (firstID < 100) {
                id.append("UID00000" + firstID.toString());
            } else if (firstID < 1000) {
                id.append("UID0000" + firstID.toString());
            } else if (firstID < 10000) {
                id.append("UID000" + firstID.toString());
            } else if (firstID < 100000) {
                id.append("UID00" + firstID.toString());
            } else if (firstID < 1000000) {
                id.append("UID0" + firstID.toString());
            } else {
                id.append("UID" + firstID.toString());
            }

            connection.close();
        }
        catch(Exception e) {}
        
        return id.toString();
    }
    
    public void SignUp(User user) {
        try
        {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            PreparedStatement statement = connection.prepareStatement("insert into ENDUSER values( ? , ? , ? , ? , ? , ? )");
            statement.setString(1, user.getID());
//            statement.setString(2, comment.getHomestayID());
//            statement.setString(3, comment.getUserName());
//            statement.setString(4, comment.getUserImage());
//            statement.setDate(5, comment.getDate());
//            statement.setString(6, comment.getContent());

            statement.executeUpdate();
            connection.close();
        }
        catch(Exception e) {}
    }
    
    public boolean SignIn(String email, String password) {
        try
        {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            Statement statement = connection.createStatement();

            String sql = "select UserEmail, UserPassword from ENDUSER";

            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                if (email.equals(rs.getString("UserEmail")) && password.equals(rs.getString("UserPassword"))) {
                    return true;
                }
            }
            connection.close();
        }
        catch(Exception e) {}
        return false;
    }      
}
