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

import models.Homestay;

/**
 *
 * @author Admin
 */
public class HomestayService {

    public ArrayList<Homestay> Load() {
        ArrayList<models.Homestay> list_homestay = new ArrayList<models.Homestay>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            Statement statement = connection.createStatement();
            String sql = "select * from HOMESTAY";

            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                models.Homestay _homestay = new models.Homestay();
                _homestay.setId(rs.getString("HomestayID"));
                _homestay.setName(rs.getString("HomestayName"));
                _homestay.setAddress(rs.getString("HomestayAddress"));
                _homestay.setFullAddress(rs.getString("FullAddress"));
                _homestay.setDistance(rs.getString("Distance"));
                _homestay.setNumberPeople(rs.getInt("NumberPeople"));
                _homestay.setNumberDays(rs.getInt("NumberDays"));
                _homestay.setTimeStart(rs.getInt("TimeStart"));
                _homestay.setTimeEnd(rs.getInt("TimeEnd"));
                _homestay.setRating(rs.getInt("Rating"));
                _homestay.setFeatureImage(rs.getString("FeatureImage"));
                _homestay.setOwnerImage(rs.getString("OwnerImage"));
                _homestay.setOwnerName(rs.getString("OwnerName"));
                _homestay.setOwnerDoB(rs.getDate("OwnerDoB"));
                if (rs.getInt("OwnerGender") == 0) {
                    _homestay.setOwnerGender("Female");
                } else {
                    _homestay.setOwnerGender("Male");
                }           
                _homestay.setOwnerPhone(rs.getString("OwnerPhone"));
                _homestay.setOwnerCareer(rs.getString("OwnerCareer"));
                _homestay.setVideo(rs.getString("Video"));
                _homestay.setRoomTypeID(rs.getString("RoomTypeID"));
                _homestay.setLocationTypeID(rs.getString("LocationTypeID"));
                _homestay.setVacationTypeID(rs.getString("VacationTypeID"));
                _homestay.setCuisineID(rs.getString("CuisineID"));
                _homestay.setLifeStyleID(rs.getString("LifeStyleID"));

                list_homestay.add(_homestay);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_homestay;
    }

    public Homestay LoadById(String Id) {
        ArrayList<models.Homestay> list_homestay = new ArrayList<models.Homestay>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            PreparedStatement statement = connection.prepareStatement("select * from HOMESTAY where HomestayID = ?");
            statement.setString(1, Id);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                models.Homestay _homestay = new models.Homestay();
                _homestay.setId(rs.getString("HomestayID"));
                _homestay.setName(rs.getString("HomestayName"));
                _homestay.setAddress(rs.getString("HomestayAddress"));
                _homestay.setFullAddress(rs.getString("FullAddress"));
                _homestay.setDistance(rs.getString("Distance"));
                _homestay.setNumberPeople(rs.getInt("NumberPeople"));
                _homestay.setNumberDays(rs.getInt("NumberDays"));
                _homestay.setTimeStart(rs.getInt("TimeStart"));
                _homestay.setTimeEnd(rs.getInt("TimeEnd"));
                _homestay.setRating(rs.getInt("Rating"));
                _homestay.setFeatureImage(rs.getString("FeatureImage"));
                _homestay.setOwnerImage(rs.getString("OwnerImage"));
                _homestay.setOwnerName(rs.getString("OwnerName"));
                _homestay.setOwnerDoB(rs.getDate("OwnerDoB"));
                if (rs.getInt("OwnerGender") == 0) {
                    _homestay.setOwnerGender("Female");
                } else {
                    _homestay.setOwnerGender("Male");
                }  
                _homestay.setOwnerPhone(rs.getString("OwnerPhone"));
                _homestay.setOwnerCareer(rs.getString("OwnerCareer"));
                _homestay.setVideo(rs.getString("Video"));
                _homestay.setRoomTypeID(rs.getString("RoomTypeID"));
                _homestay.setLocationTypeID(rs.getString("LocationTypeID"));
                _homestay.setVacationTypeID(rs.getString("VacationTypeID"));
                _homestay.setCuisineID(rs.getString("CuisineID"));
                _homestay.setLifeStyleID(rs.getString("LifeStyleID"));

                list_homestay.add(_homestay);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_homestay.get(0);
    }
    
    public ArrayList<Homestay> LoadByAdressDurationTime(String address, Integer duration, Integer timeStart, Integer timeEnd) {
        ArrayList<models.Homestay> list_homestay = new ArrayList<models.Homestay>();
        try {
            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");

            StringBuilder query = new StringBuilder();
            Integer count = 0, temp1 = 0, temp2 = 0, temp3 = 0, temp4 = 0;
            query.append("select * from HOMESTAY");
            
            if (!address.isEmpty() || duration != null || timeStart != null || timeEnd != null)
                query.append(" where");
            
            if (!address.isEmpty()) {
                query.append(" HomestayAddress = ? and");
                temp1 = ++count;
            }
            if (duration != null) {
                query.append(" NumberDays = ? and");
                temp2 = ++count;
            }
            if (timeStart != null) {
                query.append(" TimeStart = ? and");
                temp3 = ++count;
            }
            if (timeEnd != null) {
                query.append(" TimeEnd = ? and");
                temp4 = ++count;
            }
            if (!address.isEmpty() || duration != null || timeStart != null || timeEnd != null)
                query.delete(query.length() - 3, query.length());

            PreparedStatement statement = connection.prepareStatement(query.toString());
            
            if (!address.isEmpty())
                statement.setString(temp1, address);
            if (duration != null)
                statement.setInt(temp2, duration);
            if (timeStart != null)
                statement.setInt(temp3, timeStart);
            if (timeEnd != null)
                statement.setInt(temp4, timeEnd);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                models.Homestay _homestay = new models.Homestay();
                _homestay.setId(rs.getString("HomestayID"));
                _homestay.setName(rs.getString("HomestayName"));
                _homestay.setAddress(rs.getString("HomestayAddress"));
                _homestay.setFullAddress(rs.getString("FullAddress"));
                _homestay.setDistance(rs.getString("Distance"));
                _homestay.setNumberPeople(rs.getInt("NumberPeople"));
                _homestay.setNumberDays(rs.getInt("NumberDays"));
                _homestay.setTimeStart(rs.getInt("TimeStart"));
                _homestay.setTimeEnd(rs.getInt("TimeEnd"));
                _homestay.setRating(rs.getInt("Rating"));
                _homestay.setFeatureImage(rs.getString("FeatureImage"));
                _homestay.setOwnerImage(rs.getString("OwnerImage"));
                _homestay.setOwnerName(rs.getString("OwnerName"));
                _homestay.setOwnerDoB(rs.getDate("OwnerDoB"));
                if (rs.getInt("OwnerGender") == 0) {
                    _homestay.setOwnerGender("Female");
                } else {
                    _homestay.setOwnerGender("Male");
                }  
                _homestay.setOwnerPhone(rs.getString("OwnerPhone"));
                _homestay.setOwnerCareer(rs.getString("OwnerCareer"));
                _homestay.setVideo(rs.getString("Video"));
                _homestay.setRoomTypeID(rs.getString("RoomTypeID"));
                _homestay.setLocationTypeID(rs.getString("LocationTypeID"));
                _homestay.setVacationTypeID(rs.getString("VacationTypeID"));
                _homestay.setCuisineID(rs.getString("CuisineID"));
                _homestay.setLifeStyleID(rs.getString("LifeStyleID"));

                list_homestay.add(_homestay);
            }

            connection.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_homestay;
    }
}