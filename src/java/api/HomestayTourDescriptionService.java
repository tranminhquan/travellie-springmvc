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
public class HomestayTourDescriptionService {
    public ArrayList<models.HomestayTourDescription> LoadById(String Id) {
        ArrayList<models.HomestayTourDescription> list_homestayTourDescription = new ArrayList<models.HomestayTourDescription>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            PreparedStatement statement = connection.prepareStatement("select * from HOMESTAYTOURDESCRIPTION where HomestayID = ?");
            statement.setString(1, Id);
            
            ResultSet rs = statement.executeQuery();

            while (rs.next()) 
            {
                models.HomestayTourDescription _homestay = new models.HomestayTourDescription();
                _homestay.setId(rs.getString("HomestayTourDescriptionID"));
                _homestay.setHomestayID(rs.getString("HomestayID"));
                _homestay.setDescription(rs.getString("Descriptions"));

                list_homestayTourDescription.add(_homestay);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_homestayTourDescription;
    }    
}
