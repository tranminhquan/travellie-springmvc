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
public class HomestayRuleService {

    public ArrayList<models.HomestayRule> LoadById(String Id) {
        ArrayList<models.HomestayRule> list_homestayRule = new ArrayList<models.HomestayRule>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            PreparedStatement statement = connection.prepareStatement("select * from HOMESTAYRULE where HomestayID = ?");
            statement.setString(1, Id);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                models.HomestayRule _homestay = new models.HomestayRule();
                _homestay.setId(rs.getString("HomestayRuleID"));
                _homestay.setHomestayID(rs.getString("HomestayID"));
                _homestay.setRules(rs.getString("Rules"));

                list_homestayRule.add(_homestay);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_homestayRule;
    }
}
