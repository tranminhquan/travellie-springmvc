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

import models.HomestayImage;

/**
 *
 * @author Admin
 */
public class HomestayImageService {

    public ArrayList<models.HomestayImage> LoadById(String Id) {
        ArrayList<models.HomestayImage> list_homestayImage = new ArrayList<models.HomestayImage>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            PreparedStatement statement = connection.prepareStatement("select * from HOMESTAYIMAGES where HomestayID = ?");
            statement.setString(1, Id);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                models.HomestayImage _homestay = new models.HomestayImage();
                _homestay.setId(rs.getString("HomestayImageID"));
                _homestay.setHomestayID(rs.getString("HomestayID"));
                _homestay.setLocation(rs.getString("ImageLocation"));
                _homestay.setDescription(rs.getString("ImageDescription"));

                list_homestayImage.add(_homestay);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_homestayImage;
    }
}
