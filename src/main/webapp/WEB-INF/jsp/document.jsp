<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Document Manager</title>
    <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <title>Đăng tài liệu</title>
    <style>
        h1 {
            text-align: center;
            color: black;
            font-size: 36px;
        }

        body {
            font-family: 'Times New Roman', Times, serif;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
            padding: 20px;
            border-radius: 8px;
        }

        input, textarea, select {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <img src="https://cdn.prod.website-files.com/62045da4270c887c4de9c45f/6206f72af2bab0767eeb1690_digitaldocument.jpeg" width="100%">
    
    <div class="container">
        <h1><b>Đăng tài liệu</b></h1>
        
          <form action="/upload" method="POST" enctype="multipart/form-data" accept-charset="UTF-8" style="max-width: 600px; margin: 0 auto">
       <p>
                    <label for="description">Mô Tả:</label> 
                    <input type="text" class="form-control" placeholder="Mô tả" name="description" required />
                </p>
            
            <p>
                    <label for="linhvuc">Chọn lĩnh vực:</label> 
                    <select name="linhvuc" id="linhvuc" required>
                        <option value="">Tài liệu thuộc lĩnh vực</option>
                        <option value="yte">Y tế</option>
                        <option value="kinhte">Kinh tế</option>
                        <option value="taichinh">Tài chính</option>
                        <option value="ngonngu">Ngôn ngữ</option>
                        <option value="marketing">Marketing</option>
                        <option value="moitruong">Môi trường</option>
                        <option value="kinhdoanh">Kinh doanh</option>
                        <option value="chinhtri">Chính trị - Pháp luật</option>
                        <option value="vanhoa">Văn hóa - Xã hội</option>
                        <option value="khoahoc">Khoa học</option>
                        <option value="khac">Khác</option>
                    </select>
                </p>
            
           <p>
                    <input type="file" name="document" required />
                </p>
            <p>
                    <input type="submit" value="Upload" class="btn btn-primary" />
                </p>
        </form>
    </div>
</body>
</html>