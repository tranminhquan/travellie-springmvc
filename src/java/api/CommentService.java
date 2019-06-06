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

    public String generateID() {
        StringBuilder id = new StringBuilder();
        try
        {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            Statement statement = connection.createStatement();
            String sql = "SELECT MAX(CommentId) AS CommentId FROM COMMENT ";
            ResultSet rs = statement.executeQuery(sql);
            Integer firstID = 0;
                   
            while(rs.next()) {
                firstID = Integer.parseInt(rs.getString("CommentId").substring(3)) + 1;
            }
            if (firstID < 10) {
                id.append("CID000000" + firstID.toString());
            } else if (firstID < 100) {
                id.append("CID00000" + firstID.toString());
            } else if (firstID < 1000) {
                id.append("CID0000" + firstID.toString());
            } else if (firstID < 10000) {
                id.append("CID000" + firstID.toString());
            } else if (firstID < 100000) {
                id.append("CID00" + firstID.toString());
            } else if (firstID < 1000000) {
                id.append("CID0" + firstID.toString());
            } else {
                id.append("CID" + firstID.toString());
            }

            connection.close();
        }
        catch(Exception e) {}
        
        return id.toString();
    }
    
    public void InsertComment(Comment comment) {
        try
        {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            PreparedStatement statement = connection.prepareStatement("insert into comment values( ? , ? , ? , ? , ? )");
            statement.setString(1, comment.getId());
            statement.setString(2, comment.getHomestayID());
            statement.setString(3, comment.getUserID());
            statement.setDate(4, comment.getDate());
            statement.setString(5, comment.getContent());

            statement.executeUpdate();
            connection.close();
        }
        catch(Exception e) {}
    }
    
    public ArrayList<models.Comment> LoadById(String Id) {
        ArrayList<models.Comment> list_comment = new ArrayList<models.Comment>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            PreparedStatement statement = connection.prepareStatement("select * from COMMENT where HomestayID = ?");
            statement.setString(1, Id);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                models.Comment _comment = new models.Comment();
                _comment.setId(rs.getString("CommentID"));
                _comment.setHomestayID(rs.getString("HomestayID"));
                _comment.setUserID(rs.getString("UserID"));
                
                Statement subStatement = connection.createStatement();
                String sql = "select UserName, UserImage from ENDUSER where UserID = " + "'" + rs.getString("UserID") + "'";

                ResultSet sub = subStatement.executeQuery(sql);
                while (sub.next()) {
                    _comment.setUserName(sub.getString("UserName"));
                    _comment.setUserImage(sub.getString("UserImage"));
                }
                
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
