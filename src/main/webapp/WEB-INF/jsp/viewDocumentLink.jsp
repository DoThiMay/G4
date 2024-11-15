<!DOCTYPE html>
<html xmlns:th="https://www.thymeleaf.org">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="UTF-8"> 
<title>Document Manager</title>
<link rel="stylesheet" type="text/css"
	href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<div class="container-fluid text-center">
        <h1>Chi tiết tài liệu</h1>
        <div class="row border rounded">
            <!-- iframe để hiển thị nội dung của tài liệu -->
            <iframe src="/view?id=${docId}" style="width: 60%; height: 300px; border: none;"></iframe>

        </div>
    </div>
</body>
</html>
