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
public class HomestayOverviewService {
    public ArrayList<models.HomestayOverview> LoadById(String Id) {
        ArrayList<models.HomestayOverview> list_homestayOverview = new ArrayList<models.HomestayOverview>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            PreparedStatement statement = connection.prepareStatement("select * from HOMESTAYOVERVIEW where HomestayID = ?");
            statement.setString(1, Id);
            
            ResultSet rs = statement.executeQuery();

            while (rs.next()) 
            {
                models.HomestayOverview _homestay = new models.HomestayOverview();
                _homestay.setId(rs.getString("HomestayOverviewID"));
                _homestay.setHomestayID(rs.getString("HomestayID"));
                _homestay.setOverview(rs.getString("Overview"));

                list_homestayOverview.add(_homestay);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_homestayOverview;
    }
}
