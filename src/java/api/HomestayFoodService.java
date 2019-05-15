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
public class HomestayFoodService {
    public ArrayList<models.HomestayFood> LoadById(String Id) {
        ArrayList<models.HomestayFood> list_homestayFood = new ArrayList<models.HomestayFood>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            PreparedStatement statement = connection.prepareStatement("select * from HOMESTAYFOOD where HomestayID = ?");
            statement.setString(1, Id);
            
            ResultSet rs = statement.executeQuery();

            while (rs.next()) 
            {
                models.HomestayFood _homestay = new models.HomestayFood();
                _homestay.setId(rs.getString("HomestayFoodID"));
                _homestay.setHomestayID(rs.getString("HomestayID"));
                _homestay.setLocation(rs.getString("FoodImage"));
                _homestay.setDescription(rs.getString("FoodDescription")); 

                list_homestayFood.add(_homestay);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_homestayFood;
    }    
}
