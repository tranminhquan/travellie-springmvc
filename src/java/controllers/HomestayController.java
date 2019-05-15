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
import models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class HomestayController {
    HomestayService _homestayService;
    HomestayImageService _homestayImageService;
    HomestayOverviewService _homestayOverviewService;
    HomestayFoodService _homestayFoodService;
    HomestayTourImageService _homestayTourImageService;
    HomestayTourDescriptionService _homestayTourDescriptionService;
    HomestayRuleService _homestayRuleService;
    
    public HomestayController()
    {
        _homestayService = new HomestayService();
        _homestayImageService = new HomestayImageService();
        _homestayOverviewService = new HomestayOverviewService();
        _homestayFoodService = new HomestayFoodService();
        _homestayTourImageService = new HomestayTourImageService();
        _homestayTourDescriptionService = new HomestayTourDescriptionService();
        _homestayRuleService = new HomestayRuleService();
    }
    @RequestMapping(value="/homestays", method = RequestMethod.GET)
    public String HomestayAction(ModelMap modelmap) {
        ArrayList<Homestay> list_homestay = _homestayService.Load();
        modelmap.put("homestays", list_homestay);
        
        return "listHomestay";
    }
    
    @RequestMapping(value = "/homestays/{homestayId}", method = RequestMethod.GET)
    public String HomestayDetail(ModelMap modelmap,@PathVariable("homestayId") String homestayId)
    {
            Homestay _homestay = _homestayService.LoadById(homestayId);
            modelmap.put("detailHomestays", _homestay);
            
            ArrayList<Homestay> list_homestay = _homestayService.Load();
            modelmap.put("homestays", list_homestay);
            
            ArrayList<HomestayImage> list_homestayImage = _homestayImageService.LoadById(homestayId);
            modelmap.put("detailHomestaysImage", list_homestayImage);

            ArrayList<HomestayOverview> list_homestayOverview = _homestayOverviewService.LoadById(homestayId);
            modelmap.put("detailHomestaysOverview", list_homestayOverview);
            
            ArrayList<HomestayFood> list_homestayFood = _homestayFoodService.LoadById(homestayId);
            modelmap.put("detailHomestaysFood", list_homestayFood);
            
            ArrayList<HomestayTourImage> list_homestayTourImage = _homestayTourImageService.LoadById(homestayId);
            modelmap.put("detailHomestaysTourImage", list_homestayTourImage);
            
            ArrayList<HomestayTourDescription> list_homestayTourDescription = _homestayTourDescriptionService.LoadById(homestayId);
            modelmap.put("detailHomestaysTourDescription", list_homestayTourDescription);
            
            ArrayList<HomestayRule> list_homestayRule = _homestayRuleService.LoadById(homestayId);
            modelmap.put("detailHomestaysRule", list_homestayRule);
            
            return "detailHomestay";
    }
    
//    public static void main(String[] args) {
//        ArrayList<Homestay> list_homestay;
//        list_homestay = new HomestayService().Load();
//        for (int i = 0; i<list_homestay.size();i++){
//            System.out.println(list_homestay.get(i).getFullAddress());
//        }
//        ArrayList<HomestayImage> list_homestayImage;
//        list_homestayImage = new HomestayImageService().LoadById("HID0000001");
//        for (int i = 0; i<list_homestayImage.size();i++){
//            System.out.println(list_homestayImage.get(i).getDescription());
//        }
//    }
 
    public static void checkConnectionStatus(Connection connection) throws SQLException {
        if (connection.isClosed()) {
            System.out.println("Hiện tại Không có kết nối đến Hệ Quản trị Cơ sở dữ liệu");
        } else {
            System.out.println("Hiện tại Đang có kết nối đến Hệ quản trị CSDL");
        }
    }
 
}
