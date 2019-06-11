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
import javax.servlet.http.HttpSession;
import models.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    UserService _userService;

    public LoginController() {
        _userService = new UserService();
    }

    @RequestMapping(value = "/signin", method = RequestMethod.POST)
    public String SignInAction (@ModelAttribute(value="user") User user, ModelMap modelmap, HttpSession session) {
        if (_userService.SignIn(user.getEmail(), user.getPassword())) {
            modelmap.put("message", "Login success!");
            User loginUser = _userService.getUserByEmail(user.getEmail());
            session.setAttribute("userinfo", loginUser);

            return "redirect:/index.html";
        } else {
            modelmap.put("message", "failed");
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
        if (user.getImage().equals("")) {
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
    
    @RequestMapping(value = "/signout", method = RequestMethod.POST)
    public String SignOutAction (ModelMap modelmap, HttpSession session) {
        session.invalidate();
        modelmap.put("message", "sign out sucess!");
        
        return "redirect:/index.html";
    }
}
