package com.springmvc.G4_project.controller;

import java.math.BigInteger;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.G4_project.model.User;
import com.springmvc.G4_project.responsitories.UserRespository;


@Controller
@RequestMapping(path = "trang-chu")
public class TrangchuController {
    @Autowired
    UserRespository userRe;
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String Test(ModelMap modelMap) {
        Iterable<User> user = userRe.findAll();
        modelMap.addAttribute("user", user);
        return "User";
    }
    
    @RequestMapping(value = "/dangky", method = RequestMethod.GET)
    public String dangky(ModelMap modelMap) {
        modelMap.addAttribute("user", new User());
        return "dangky";

    }
    @RequestMapping(value = "/dangky", method = RequestMethod.POST)
    public String dangky(ModelMap modelMap, @Validated @ModelAttribute("user") User user,
            BindingResult BindingResult // validation
    ) {
        if (BindingResult.hasErrors()) {
            return "dangky";
        }try {
            String uuid = String.format("%040d", new BigInteger(UUID.randomUUID().toString().replace("-", ""), 16));
            String userIdRandom = uuid.substring(uuid.length() - 4);
            user.setUserId(userIdRandom);
//            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//            String encodedPassword = passwordEncoder.encode(user.getPassword());
//            user.setPassword(encodedPassword);
            userRe.save(user);
            return "redirect:/trang-chu";
        } catch (Exception e) {
            modelMap.addAttribute("error", e.toString());
            return "dangky";
        }
    }
}