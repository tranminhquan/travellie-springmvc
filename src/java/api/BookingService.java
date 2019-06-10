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
public class BookingService {

    public String generateID() {
        StringBuilder id = new StringBuilder();
        try
        {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            Statement statement = connection.createStatement();
            String sql = "SELECT MAX(BookingID) AS BookingID FROM BOOKING ";
            ResultSet rs = statement.executeQuery(sql);
            Integer firstID = 0;
                   
            while(rs.next()) {
                firstID = Integer.parseInt(rs.getString("BookingID").substring(3)) + 1;
            }
            if (firstID < 10) {
                id.append("BID000000" + firstID.toString());
            } else if (firstID < 100) {
                id.append("BID00000" + firstID.toString());
            } else if (firstID < 1000) {
                id.append("BID0000" + firstID.toString());
            } else if (firstID < 10000) {
                id.append("BID000" + firstID.toString());
            } else if (firstID < 100000) {
                id.append("BID00" + firstID.toString());
            } else if (firstID < 1000000) {
                id.append("BID0" + firstID.toString());
            } else {
                id.append("BID" + firstID.toString());
            }

            connection.close();
        }
        catch(Exception e) {}
        
        return id.toString();
    }
    
    public void InsertBookingTour(Booking booking) {
        try
        {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            PreparedStatement statement = connection.prepareStatement("insert into Booking values( ? , ? , ? , ? , ? , ? )");

            statement.setString(1, booking.getId());
            statement.setString(2, booking.getHomestayID());
            statement.setString(3, booking.getUserID());
            statement.setDate(4, booking.getCheckin());
            statement.setInt(5, booking.getQuantity());
            statement.setString(6, "");

            statement.executeUpdate();
            connection.close();
        }
        catch(Exception e) {}
    }
    
    public ArrayList<Booking> LoadById(String Id) {
        ArrayList<Booking> list_booking = new ArrayList<Booking>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            PreparedStatement statement = connection.prepareStatement("select * from BOOKING where HomestayID = ?");
            statement.setString(1, Id);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                Booking _booking = new Booking();
                _booking.setId(rs.getString("BookingID"));
                _booking.setHomestayID(rs.getString("HomestayID"));
                _booking.setUserID(rs.getString("UserID"));
                
                Statement subStatement = connection.createStatement();
                String sql = "select UserName, UserImage from ENDUSER where UserID = " + "'" + rs.getString("UserID") + "'";

                ResultSet sub = subStatement.executeQuery(sql);
                while (sub.next()) {
                    _booking.setUserName(sub.getString("UserName"));
                }
                
                _booking.setCheckin(rs.getDate("Checkin"));
                _booking.setQuantity(rs.getInt("NumberPeople"));

                list_booking.add(_booking);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_booking;
    }
}
