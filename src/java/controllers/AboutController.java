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
import api.UserService;
import javax.servlet.http.HttpSession;
import models.Homestay;
import models.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AboutController {

    UserService _userService;
                
    public AboutController() {
        _userService = new UserService();
    }
    
    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String AboutAction(ModelMap modelmap) {
        modelmap.addAttribute("homestay", new Homestay());
        modelmap.addAttribute("user", new User());
        return "about";
    }
}
