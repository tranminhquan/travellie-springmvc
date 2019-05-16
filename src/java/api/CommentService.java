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
public class CommentService {
    public ArrayList<models.Comment> LoadById(String Id) {
        ArrayList<models.Comment> list_comment = new ArrayList<models.Comment>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            PreparedStatement statement = connection.prepareStatement("select * from COMMENT where HomestayID = ?");
            statement.setString(1, Id);
            
            ResultSet rs = statement.executeQuery();

            while (rs.next()) 
            {
                models.Comment _comment = new models.Comment();
                _comment.setId(rs.getString("CommentID"));
                _comment.setHomestayID(rs.getString("HomestayID"));
                _comment.setUserName(rs.getString("UserName"));
                _comment.setUserImage(rs.getString("UserImage")); 
                _comment.setDate(rs.getDate("CommentDate"));
                _comment.setContent(rs.getString("Content")); 
                
                list_comment.add(_comment);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_comment;
    }    
}
