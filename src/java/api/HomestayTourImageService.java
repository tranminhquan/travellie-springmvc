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
public class HomestayTourImageService {
    public ArrayList<models.HomestayTourImage> LoadById(String Id) {
        ArrayList<models.HomestayTourImage> list_homestayTourImage = new ArrayList<models.HomestayTourImage>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            PreparedStatement statement = connection.prepareStatement("select * from HOMESTAYTOURIMAGE where HomestayID = ?");
            statement.setString(1, Id);
            
            ResultSet rs = statement.executeQuery();

            while (rs.next()) 
            {
                models.HomestayTourImage _homestay = new models.HomestayTourImage();
                _homestay.setId(rs.getString("HomestayTourImageID"));
                _homestay.setHomestayID(rs.getString("HomestayID"));
                _homestay.setLocation(rs.getString("ImageLocation"));

                list_homestayTourImage.add(_homestay);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_homestayTourImage;
    }    
}
