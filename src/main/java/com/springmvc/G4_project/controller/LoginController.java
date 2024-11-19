package com.springmvc.G4_project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.G4_project.model.User;
import com.springmvc.G4_project.responsitories.UserRespository;



@Controller
public class LoginController {
    @Autowired
    UserRespository userRepo;
    @RequestMapping(value = "/dangnhap", method = RequestMethod.GET)
    public String dangnhap(ModelMap modelMap) {
        modelMap.addAttribute("user", new User());
        return "dangnhap";
    }
    @RequestMapping(value = "/dangnhap", method = RequestMethod.POST)
 String dangnhap(ModelMap modelMap, @Valid @ModelAttribute("user") User user, BindingResult BindingResult // validation
            , HttpServletRequest request) {
        if (BindingResult.hasErrors()) {
            return "dangnhap";
        }
        try {
//            User existingUser = userRepo.CheckUser(user.getUserId());
            User existingUser = userRepo.getUserByUsername(user.getUsername());
            if (existingUser != null) {
                return "redirect:/";
            } else {
                modelMap.addAttribute("error", "Tai khoan chua ton tai");
                return "dangnhap";
            }
        } catch (Exception e) {
            modelMap.addAttribute("error", e.toString());
            return "dangnhap";
        }
    }
}
