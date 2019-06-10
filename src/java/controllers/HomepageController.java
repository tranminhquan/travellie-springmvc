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
import java.util.ArrayList;
import models.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
    
    @RequestMapping(value = "/searchHomestay", method = RequestMethod.POST)
    public String SearchHomestayAction (@ModelAttribute(value="homestay") Homestay hs, ModelMap modelmap) {
        ArrayList<Homestay> list_homestay = _homestayService.LoadByName(hs.getName());
        modelmap.put("homestays", list_homestay);
        
        return "listHomestay";
    }
}
