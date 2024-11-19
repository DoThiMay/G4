package com.springmvc.G4_project.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping(path = "hello")
public class AdminController {
    @GetMapping("")
    public String trangAdmin(Model model) {
        // Dữ liệu cần hiển thị trong view
        String message = "Chào mừng bạn đến với trang quản trị hệ thống!";
        
        // Thêm dữ liệu vào Model
        model.addAttribute("message", message);

        // Trả về tên file JSP
        return "admin";  // Tên của file JSP sẽ là admin.jsp
    }
}
