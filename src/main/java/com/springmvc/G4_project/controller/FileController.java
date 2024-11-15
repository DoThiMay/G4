package com.springmvc.G4_project.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springmvc.G4_project.model.Document;
import com.springmvc.G4_project.responsitories.DocumentRespository;

@Controller

public class FileController {
    @Autowired
    DocumentRespository repo;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String file(ModelMap modelMap) {
        List<Document> listDocs = repo.findAll();
        modelMap.addAttribute("listDocs", listDocs);
        return "test-upload1";

    }
    
    @RequestMapping(value = "/details", method = RequestMethod.GET)
    public String showDocumentDetails(@RequestParam("id") Long id, ModelMap modelMap) {
        modelMap.addAttribute("docId", id); // Truyền id tài liệu cho JSP để sử dụng trong iframe
        return "viewDocumentLink"; // Tên của file JSP
    }



    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public void viewDocument(@RequestParam("id") Long id, HttpServletResponse response) throws Exception {
        Optional<Document> result = repo.findById(id);
        if (!result.isPresent()) {
            throw new Exception("Không tìm thấy tài liệu: " + id);
        }

        Document document = result.get();
        String filePath = document.getFilePath(); // Đảm bảo điều này là chính xác

        // Xác định loại nội dung dựa trên phần mở rộng tệp
        String fileExtension = StringUtils.getFilenameExtension(filePath);
        switch (fileExtension.toLowerCase()) {
        case "pdf":
            response.setContentType("application/pdf");
            break;
        case "doc":
        case "docx":
            response.setContentType("application/vnd.openxmlformats-officedocument.wordprocessingml.document");
            break;
        case "txt":
            response.setContentType("text/plain");
            break;
        case "jpg":
        case "jpeg":
            response.setContentType("image/jpeg");
            break;
        case "png":
            response.setContentType("image/png");
            break;
        default:
            response.setContentType("application/octet-stream");
            break;
        }

        // Thiết lập header Content-Disposition để hiển thị nội tuyến
        response.setHeader("Content-Disposition", "inline; filename=\"" + document.getName() + "\"");

        // Truyền nội dung tệp
        try (FileInputStream fileInputStream = new FileInputStream(filePath);
                ServletOutputStream outputStream = response.getOutputStream()) {

            byte[] buffer = new byte[8192];
            int bytesRead;
            while ((bytesRead = fileInputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }
            outputStream.flush(); // Đảm bảo tất cả dữ liệu được gửi đến khách hàng
        } catch (IOException e) {
            throw new Exception("Lỗi khi đọc tệp: " + filePath, e);
        }
    }

    @RequestMapping(value = "/upload", method = RequestMethod.GET)
    public String showUploadForm() {
        return "document";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String uploadFile(@RequestParam("document") MultipartFile multipartFile,
            @RequestParam("linhvuc") String linhvuc, 
            @RequestParam("description") String description, 
            RedirectAttributes ra) throws IOException {
        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());

        // Define the path to save the uploaded file
        String uploadDir = "E:/G4_project/uploads/";
        File uploadDirFile = new File(uploadDir);
        if (!uploadDirFile.exists()) {
            uploadDirFile.mkdirs(); // Create the directory if it doesn't exist
        }

        // Create a new file object for the uploaded file
        File file = new File(uploadDir + fileName);

        // Save the file to the specified location
        multipartFile.transferTo(file);

        Document document = new Document();
        document.setName(fileName);
        document.setSize(multipartFile.getSize());
        document.setUploadTime(new Date());
        document.setLinhvuc(linhvuc);
        document.setDescription(description);
        document.setFilePath(file.getAbsolutePath()); // Save the file path in the document

        repo.save(document);
        ra.addFlashAttribute("message", "The file has been uploaded successfully!");
        return "redirect:/";
    }

    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public void downloadFile(@RequestParam("id") Long id, HttpServletResponse response) throws Exception {
        Optional<Document> result = repo.findById(id);
        if (!result.isPresent()) {
            throw new Exception("Could not find document: " + id);
        }
        Document document = result.get();

        // Lấy đường dẫn tệp từ đối tượng Document
        String filePath = document.getFilePath();

        // Kiểm tra xem tệp có tồn tại không
        File file = new File(filePath);
        if (!file.exists()) {
            throw new Exception("File not found: " + filePath);
        }

        // Đặt loại nội dung cho phản hồi
        String fileExtension = StringUtils.getFilenameExtension(filePath);
        switch (fileExtension.toLowerCase()) {
        case "pdf":
            response.setContentType("application/pdf");
            break;
        case "doc":
        case "docx":
            response.setContentType("application/vnd.openxmlformats-officedocument.wordprocessingml.document");
            break;
        case "txt":
            response.setContentType("text/plain");
            break;
        case "jpg":
        case "jpeg":
            response.setContentType("image/jpeg");
            break;
        case "png":
            response.setContentType("image/png");
            break;
        default:
            response.setContentType("application/octet-stream");
            break;
        }

        // Thiết lập header cho việc tải xuống
        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=\"" + document.getName() + "\"";
        response.setHeader(headerKey, headerValue);

        // Đọc tệp và ghi vào output stream
        try (FileInputStream fileInputStream = new FileInputStream(file);
                ServletOutputStream outputStream = response.getOutputStream()) {

            byte[] buffer = new byte[4096];
            int bytesRead;
            while ((bytesRead = fileInputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }
            outputStream.flush(); // Đảm bảo tất cả dữ liệu được gửi đến client
        } catch (IOException e) {
            throw new Exception("Error reading file: " + filePath, e);
        }
    }
}
