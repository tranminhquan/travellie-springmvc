/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

/**
 *
 * @author Admin
 */
import api.HomestayService;
import database.SQLServerConnUtils_JTDS;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import models.Homestay;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class HomestayController {
    HomestayService _homestayService;
    public HomestayController()
    {
            _homestayService = new HomestayService();
    }
    @RequestMapping(value="/homestays", method = RequestMethod.GET)
    public String HomestayAction(ModelMap modelmap) {
        String[] windows = new String[]{"Windows XP", "Windows 7", "Windows 8", "Windows mobile"};
        ArrayList<Homestay> list_homestay = _homestayService.Load();
        ArrayList<String> arrListString = new ArrayList<>(3);
        arrListString.add("test3");
        arrListString.add("test1");
        arrListString.add("test2");
        modelmap.put("test", windows);
        modelmap.put("h1", "Homestay test");
        modelmap.put("homestays", list_homestay);
        
        return "listHomestay";
    }
    
//    public static void main(String[] args) throws SQLException {
//        ArrayList<Homestay> list_homestay;
//        list_homestay = new HomestayService().Load();
//        for (int i = 0; i<list_homestay.size();i++){
//            System.out.println(list_homestay.get(i).getFullAddress());
//        }
////        try {
////            Connection connection = SQLServerConnUtils_JTDS.getSQLServerConnection_SQLJDBC();
////            System.out.println("Kết nối Hệ quản trị Cơ sở dữ liệu thành công");
////            checkConnectionStatus(connection);
////
////            PreparedStatement statement = connection.prepareStatement("select * from HOMESTAY");
//////            statement.setString(1, "5");	
////
////            ResultSet rs = statement.executeQuery();
////            ArrayList<Homestay> list_hs = new ArrayList<>();
////            
////            while (rs.next()) {     
////                list_hs.add(new Homestay(rs.getString("HomestayID"), 
////                        rs.getString("HomestayName"), 
////                        rs.getString("HomestayAddress"), 
////                        rs.getString("FullAddress"), 
////                        rs.getString("Distance"), 
////                        rs.getInt("NumberPeople"), 
////                        rs.getInt("NumberDays"), 
////                        rs.getInt("TimeStart"), 
////                        rs.getInt("TimeEnd"), 
////                        rs.getInt("Rating"), 
////                        rs.getString("OwnerImage"), 
////                        rs.getString("OwnerName"), 
////                        rs.getDate("OwnerDoB"), 
////                        rs.getInt("OwnerGender"), 
////                        rs.getString("OwnerPhone"), 
////                        rs.getString("OwnerCareer"), 
////                        rs.getString("Video"), 
////                        rs.getString("RoomTypeID"), 
////                        rs.getString("LocationTypeID"), 
////                        rs.getString("VacationTypeID"), 
////                        rs.getString("CuisineID"), 
////                        rs.getString("LifeStyleID"))); 
////            }
////            
////            for (int i = 0; i<list_hs.size();i++){
////                System.out.println(list_hs.get(i).getHomestayImageID());
////            }
////            connection.close();
////            checkConnectionStatus(connection);
////        } catch (ClassNotFoundException e) {
////                e.printStackTrace();
////        } catch (SQLException e) {
////                e.printStackTrace();
////        }
//    }
 
    public static void checkConnectionStatus(Connection connection) throws SQLException {
        if (connection.isClosed()) {
            System.out.println("Hiện tại Không có kết nối đến Hệ Quản trị Cơ sở dữ liệu");
        } else {
            System.out.println("Hiện tại Đang có kết nối đến Hệ quản trị CSDL");
        }
    }
 
}
