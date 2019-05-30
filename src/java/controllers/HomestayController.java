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
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import models.*;
import org.jboss.weld.module.web.HttpSessionBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
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
    CommentService _commentService;

    public HomestayController() {
        _homestayService = new HomestayService();
        _homestayImageService = new HomestayImageService();
        _homestayOverviewService = new HomestayOverviewService();
        _homestayFoodService = new HomestayFoodService();
        _homestayTourImageService = new HomestayTourImageService();
        _homestayTourDescriptionService = new HomestayTourDescriptionService();
        _homestayRuleService = new HomestayRuleService();
        _commentService = new CommentService();
    }

    @RequestMapping(value = "/homestays", method = RequestMethod.GET)
    public String HomestayAction(ModelMap modelmap) {
        ArrayList<Homestay> list_homestay = _homestayService.Load();
        modelmap.put("homestays", list_homestay);
        modelmap.addAttribute("homestay", new Homestay());
        return "listHomestay";
    }

    @RequestMapping(value = "/homestaysFilter", method = RequestMethod.POST)
    public String HomestayFilterPost(@ModelAttribute(value="homestay") Homestay hs, ModelMap modelmap) {
        ArrayList<Homestay> list_homestay = _homestayService.LoadByAdressDurationTime(hs.getAddress(), hs.getNumberDays(), hs.getTimeStart(), hs.getTimeEnd(), hs.getNumberPeople());
        modelmap.addAttribute("homestay", new Homestay());
//        if (list_homestay.isEmpty()) {
//            list_homestay = _homestayService.Load();
//        }
        modelmap.put("homestays", list_homestay);
        
        return "listHomestay";
    }
    
    @RequestMapping(value = "/homestays/{homestayId}", method = RequestMethod.GET)
    public String HomestayDetail(ModelMap modelmap, @PathVariable("homestayId") String homestayId) {
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

        ArrayList<Comment> list_comment = _commentService.LoadById(homestayId);
        modelmap.put("comments", list_comment);
        modelmap.addAttribute("comment", new Comment());
        
        return "detailHomestay";
    }

    @RequestMapping(value = "/homestays/{homestayId}", method = RequestMethod.POST)
    public String HomestayComment(@ModelAttribute(value="comment") Comment comment, ModelMap modelmap, @PathVariable("homestayId") String homestayId) {
        Comment _comment = new Comment();
        _comment.setId(_commentService.generateID());
        _comment.setHomestayID(homestayId);
        _comment.setUserName("Admin");
        _comment.setUserImage("https://iupac.org/cms/wp-content/uploads/2018/05/default-avatar.png");
        _comment.setDate(java.sql.Date.valueOf(LocalDate.now()));
        _comment.setContent(comment.getContent());
        _commentService.InsertComment(_comment);

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

        ArrayList<Comment> list_comment = _commentService.LoadById(homestayId);
        modelmap.put("comments", list_comment);
        
        return "detailHomestay";
    }
    
    @ModelAttribute("addressList") 
    public Map<String, String> getAddressList() 
    { 
        Map<String, String> addressList = new HashMap<String, String>(); 
        
        addressList.put("an giang", "An Giang"); 
        addressList.put("ba ria - vung tau", "Bà Rịa - Vũng Tàu"); 
        addressList.put("bac lieu", "Bạc Liêu"); 
        addressList.put("bac kan", "Bắc Kạn"); 
        addressList.put("bac giang", "Bắc Giang"); 
        addressList.put("bac ninh", "Bắc Ninh"); 
        addressList.put("ben tre", "Bến Tre"); 
        addressList.put("binh duong", "Bình Dương"); 
        addressList.put("binh dinh", "Bình Định"); 
        addressList.put("binh phuoc", "Bình Phước"); 
        addressList.put("binh thuan", "Bình Thuận"); 
        addressList.put("ca mau", "Cà Mau"); 
        addressList.put("cao bang", "Cao Bằng"); 
        addressList.put("can tho", "Cần Thơ"); 
        addressList.put("da nang", "Đà Nẵng"); 
        addressList.put("dak lak", "Đắk Lắk"); 
        addressList.put("dak nong", "Đắk Nông"); 
        addressList.put("dien bien", "Điện Biên"); 
        addressList.put("dong nai", "Đồng Nai"); 
        addressList.put("dong thap", "Đồng Tháp"); 
        addressList.put("gia lai", "Gia Lai"); 
        addressList.put("ha giang", "Hà Giang"); 
        addressList.put("ha nam", "Hà Nam"); 
        addressList.put("ha noi", "Hà Nội"); 
        addressList.put("ha tay", "Hà Tây"); 
        addressList.put("ha tinh", "Hà Tĩnh"); 
        addressList.put("hai duong", "Hải Dương"); 
        addressList.put("hai phong", "Hải Phòng"); 
        addressList.put("hoa binh", "Hòa Bình"); 
        addressList.put("ho chi minh", "Hồ Chí Minh"); 
        addressList.put("hau giang", "Hậu Giang"); 
        addressList.put("hung yen", "Hưng Yên"); 
        addressList.put("khanh hoa", "Khánh Hòa"); 
        addressList.put("kien giang", "Kiên Giang"); 
        addressList.put("kon tum", "Kon Tum"); 
        addressList.put("lai chau", "Lai Châu"); 
        addressList.put("lao cai", "Lào Cai"); 
        addressList.put("lang son", "Lạng Sơn"); 
        addressList.put("lam dong", "Lâm Đồng"); 
        addressList.put("long an", "Long An"); 
        addressList.put("nam dinh", "Nam Định"); 
        addressList.put("nghe an", "Nghệ An"); 
        addressList.put("ninh binh", "Ninh Bình"); 
        addressList.put("ninh thuan", "Ninh Thuận"); 
        addressList.put("phu tho", "Phú Thọ"); 
        addressList.put("phu yen", "Phú Yên"); 
        addressList.put("quang binh", "Quảng Bình"); 
        addressList.put("quang nam", "Quảng Nam"); 
        addressList.put("quang ngai", "Quảng Ngãi"); 
        addressList.put("quang ninh", "Quảng Ninh"); 
        addressList.put("quang tri", "Quảng Trị"); 
        addressList.put("soc trang", "Sóc Trăng"); 
        addressList.put("son la", "Sơn La"); 
        addressList.put("tay ninh", "Tây Ninh"); 
        addressList.put("thai binh", "Thái Bình"); 
        addressList.put("thai nguyen", "Thái Nguyên"); 
        addressList.put("thanh hoa", "Thanh Hóa"); 
        addressList.put("thua thien - hue", "Thừa Thiên - Huế"); 
        addressList.put("tien giang", "Tiền Giang"); 
        addressList.put("tra vinh", "Trà Vinh"); 
        addressList.put("tuyen quang", "Tuyên Quang"); 
        addressList.put("vinh long", "Vĩnh Long"); 
        addressList.put("vinh phuc", "Vĩnh Phúc"); 
        addressList.put("yen bai", "Yên Bái"); 
    
        return addressList; 
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
