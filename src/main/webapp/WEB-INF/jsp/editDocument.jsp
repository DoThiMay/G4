<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<%@ page pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<title>Đăng Nhập</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: linear-gradient(135deg, #6a89cc, #b8e994);
	color: #333;
	margin: 0;
	padding: 0;
}

.container {
	background: #ffffff;
	border-radius: 10px;
	max-width: 400px;
	margin: 50px auto;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	padding: 20px 30px;
}

h3 {
	text-align: center;
	font-size: 28px;
	color: #34495e;
	margin-bottom: 20px;
}

label {
	font-weight: bold;
	color: #34495e;
}

.form-group {
	margin-bottom: 15px;
}

input, textarea, select {
	border: 1px solid #ced4da;
	padding: 10px;
	font-size: 16px;
	border-radius: 5px;
	width: 100%;
}

input:focus {
	border-color: #3498db;
	outline: none;
	box-shadow: 0 0 5px rgba(52, 152, 219, 0.5);
}

.btn {
	background: #2ecc71;
	color: white;
	padding: 10px 15px;
	font-size: 16px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 100%;
}

.btn:hover {
	background: #27ae60;
}

.error {
	color: red;
	font-size: 12px;
	margin-top: -10px;
}

.navbar {
	display: flex;
	justify-content: center;
	padding: 15px 0;
	background-color: #34495e;
}

.navbar ul {
	display: flex;
	list-style: none;
}

.navbar ul li a {
	color: #ecf0f1;
	text-decoration: none;
	margin: 0 15px;
	font-size: 16px;
	transition: color 0.3s;
}

.navbar ul li a:hover {
	color: #1abc9c;
}
</style>
</head>
<body>
	<header>
		<div class="navbar">
			<ul>
				<li><a href="/">Trang chủ</a></li>
				<li><a href="./About.html">Về chúng tôi</a></li>
				<li><a href="/search">Tài liệu</a></li>
				<li><a href="/upload">Đăng tải tài liệu</a></li>
				<c:choose>
					<c:when test="${empty myDbValues}">
						<li><a href="/dangnhap">Đăng nhập</a></li>
						<li><a href="/trang-chu/dangky">Đăng ký</a></li>
					</c:when>
					<c:otherwise>
						<li><a>${myDbValues}</a></li>
						<li><a href="/logout">Đăng xuất</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</header>
	<div class="container">
		<h3>
			<b>Chỉnh sửa tài liệu</b>
		</h3>
		<form
			action="${pageContext.request.contextPath}/updateDocument/${document.id}"
			method="POST">
			<input type="hidden" name="id" value="${document.id}" />
			<!-- Giữ lại ID của tài liệu -->

			<div>
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" value="${document.name}" readonly />
			</div>

			<div>
				<label for="linhvuc">Chọn lĩnh vực:</label> <select name="linhvuc"
					id="linhvuc" required>
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
			</div>

			<div>
				<label for="description">Mô tả:</label>
				<textarea id="description" name="description" required>${document.description}</textarea>
			</div>

			<button type="submit">Update Document</button>
		</form>
	</div>
</body>
</html>

