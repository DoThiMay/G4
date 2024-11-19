package com.springmvc.G4_project.controller;

import java.math.BigInteger;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.G4_project.model.Role;
import com.springmvc.G4_project.model.User;
import com.springmvc.G4_project.model.User_role;
import com.springmvc.G4_project.responsitories.RoleRespository;
import com.springmvc.G4_project.responsitories.UserRespository;
import com.springmvc.G4_project.responsitories.User_roleRespository;


@Controller
@RequestMapping(path = "trang-chu")
public class TrangchuController {
    @Autowired
    UserRespository userRe;
    @Autowired
    RoleRespository roleRe;
    @Autowired
    User_roleRespository user_roleRe;
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
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            String encodedPassword = passwordEncoder.encode(user.getPassword());
            user.setPassword(encodedPassword);
            userRe.save(user);
            Role userRole = roleRe.findByName("USER");
            User_role user_role = new User_role (user.getUserId(), userRole.getRoleId());
            user_roleRe.save(user_role);
            return "redirect:/trang-chu";
        } catch (Exception e) {
            modelMap.addAttribute("error", e.toString());
            return "dangky";
        }
    }
    
    @RequestMapping(value = "/deleteUser/{userId}", method = RequestMethod.POST)
    public String deleteUser(ModelMap modelMap, @PathVariable Long userId) {
        try {
            // Xóa dữ liệu liên quan trong bảng User_role trước
            user_roleRe.deleteById(userId);
            
            // Sau đó xóa user trong bảng User
            userRe.deleteById(userId);
            return "redirect:/trang-chu"; // Trở lại trang chủ sau khi xóa thành công
        } catch (Exception e) {
            modelMap.addAttribute("error", "Xóa user thất bại: " + e.getMessage());
            return "User"; // Trả về trang hiện danh sách user nếu lỗi
        }
    }

}