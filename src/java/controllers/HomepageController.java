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
import api.*;
import database.SQLServerConnUtils_JTDS;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import models.*;
import net.sf.cglib.core.Constants;
import org.jboss.logging.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomepageController {

    HomestayService _homestayService;
    UserService _userService;

    public HomepageController() {
        _homestayService = new HomestayService();
        _userService = new UserService();
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String HomestayAction(ModelMap modelmap) {
        ArrayList<Homestay> list_homestay = _homestayService.Load();
        modelmap.put("homestays", list_homestay);
        modelmap.addAttribute("user", new User());
        modelmap.addAttribute("homestay", new Homestay());
        return "index";
    }
    
    @RequestMapping(value = "/signin", method = RequestMethod.POST)
    public String SignInAction (@ModelAttribute(value="user") User user, ModelMap modelmap, HttpSession session) {
        if (_userService.SignIn(user.getEmail(), user.getPassword())) {
            modelmap.put("message", "Login success!");
            User loginUser = _userService.getUserByEmail(user.getEmail());
            session.setAttribute("userinfo", loginUser);

            return "redirect:/index.html";
        } else {
            modelmap.put("message", "Login failed!");
            return "redirect:/index.html";
        }
    }
    
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String SignUpAction (@ModelAttribute(value="user") User user, ModelMap modelmap) {
        User _user = new User();
        _user.setID(_userService.generateID());
        _user.setEmail(user.getEmail());
        _user.setPassword(user.getPassword());
        _user.setName(user.getName());
        if (user.getImage() == null) {
            _user.setImage("https://iupac.org/cms/wp-content/uploads/2018/05/default-avatar.png");
        } else {
            _user.setImage(user.getImage());
        }
        if (_userService.checkEmailValid(user.getEmail()) == true) {
            _userService.SignUp(_user);
            modelmap.put("message", "signup sucess!");
        } else {
            modelmap.put("message", "Email duplicate! Please use another email");
        }

        return "redirect:/index.html";
    }
    
    @RequestMapping(value = "/searchHomestay", method = RequestMethod.POST)
    public String SearchHomestayAction (@ModelAttribute(value="homestay") Homestay hs, ModelMap modelmap) {
        ArrayList<Homestay> list_homestay = _homestayService.LoadByName(hs.getName());
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
