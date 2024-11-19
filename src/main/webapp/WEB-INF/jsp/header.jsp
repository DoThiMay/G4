<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<%@ page pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Website nhóm 4</title>
<meta name="description" content="Website chia sẻ tài liệu học tập">
<meta name="keywords" content="tài liệu, học tập, chia sẻ">
<style>
/* Global Reset */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Body styling */
body {
	font-family: Arial, sans-serif;
	color: #333;
	background-color: #fafafa;
}

/* Navbar (Header) */
.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 15px 15px;
	background-color: #aab6c4;
	color: #062df2;
}

.navbar-left, .navbar-right {
	display: flex;
	align-items: center;
}

.navbar-right nav ul {
	display: flex;
	list-style-type: none;
}

.navbar-right nav ul li {
	margin-left: 20px;
}

.navbar-right nav ul li a {
	text-decoration: none;
	color: #050613;
	transition: color 0.3s;
}

/* Logo */
.logo {
	padding: 10px;
}

.logo img {
	max-height: 50px;
	width: 100px;
	border-radius: 50%;
	object-fit: cover;
	transition: all 0.3s ease;
}

.logo a {
	display: inline-block;
	text-decoration: none;
}

.logo img:hover {
	transform: scale(1.1);
}

/* Navbar Links */
.navbar nav a {
	color: #050613;
	margin-right: 7px;
	text-decoration: none;
	transition: color 0.3s;
}

nav ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
	display: flex;
	justify-content: center;
}

nav ul li a {
	margin: 0 40px;
	text-decoration: none;
	color: white;
	padding: 15px 20px;
	display: block;
	transition: background-color 0.3s ease;
}

nav ul li a:hover {
	background-color: #309797;
}

/* Footer */
footer {
	background-color: #2d3e50;
	color: #fff;
	padding: 5px;
}

.footer-content {
	display: flex;
	justify-content: space-around;
	padding: 20px;
}

.footer-section {
	width: 30%;
}

.footer-section h3 {
	font-size: 18px;
	margin-bottom: 10px;
}

.footer-section p {
	font-size: 14px;
	color: #bbb;
}

.footer-section a {
	font-size: 14px;
	color: #bbb;
	text-decoration: none;
}

.footer-section a:hover {
	color: #fff;
}

.footer-bottom {
	text-align: center;
	padding-top: 10px;
	border-top: 1px solid #444;
}

.footer-bottom p {
	font-size: 12px;
	color: #aaa;
}
</style>
</head>
<body>

	<!-- Header: Navbar -->
	<header>
		<div class="navbar">
			<div class="logo">
				<a href="Home.html"> <img src="Images/logo.jpg" alt="logo">
				</a>
			</div>

			<nav>
				<ul>
					<li><a href="/" class="active">Trang chủ</a></li>
					<li><a href="/lienhe">Về chúng tôi</a></li>
					<li><a href="/hello">Trang quản lý</a></li>
					<li><a href="/search">Tài liệu</a></li>
					<li><a href="/upload">Đăng tải tài liệu</a></li>
					<c:choose>
							<c:when test="${empty myDbValues}">
								<li><a href="/dangnhap">Đăng nhập</a> </li> 
								<li><a href="/trang-chu/dangky">Đăng ký</a></li>
							</c:when>
							<c:otherwise>
								<li><a>${myDbValues}</a></li>
								<li><a href="/logout">Đăng xuất</a></li>
							</c:otherwise>
						</c:choose></li>

				</ul>
			</nav>

		</div>
	</header>
</body>
</html>