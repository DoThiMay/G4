<!DOCTYPE html>
<html xmlns:th="https://www.thymeleaf.org">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<%@ page pageEncoding="UTF-8"%>
<title>Document Manager</title>
<link rel="stylesheet" type="text/css"
	href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
<!-- Add FontAwesome -->
<style>
/* Custom Styles for the page */
body {
	font-family: Arial, sans-serif;
	color: #333;
	background-color: #fafafa;
}

.container-fluid {
	padding: 30px;
}

h1 {
	font-size: 36px;
	color: #3a506b;
	margin-bottom: 30px;
}

.text-success {
	margin-bottom: 20px;
	color: #4CAF50;
}

.row {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
	gap: 20px;
}

.col {
	background-color: white;
	padding: 15px;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	width: 300px; /* Adjusted column width */
	text-align: center;
	margin-bottom: 20px;
}

.col img {
	width: 100%;
	height: auto;
	max-height: 150px; /* Limit image height */
	object-fit: cover;
	margin-bottom: 15px;
}

.col a {
	display: block;
	font-size: 18px;
	color: #309797;
	text-decoration: none;
	margin-bottom: 10px;
	font-weight: bold;
}

.col a:hover {
	color: #4CAF50;
}

.col .btn, .col .download-btn {
	font-size: 14px;
	padding: 5px 12px;
	background-color: #4CAF50;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s ease;
	margin-top: 10px;
	width: 120px;
	text-align: center;
	display: block;
	margin-left: auto;
	margin-right: auto;
}

.col .btn:hover, .col .download-btn:hover {
	background-color: #45a049;
}

.download-btn {
	background-color: #007bff;
}

.download-btn:hover {
	background-color: #0056b3;
}

.download-btn i {
	margin-right: 5px;
}

.upload-btn {
	display: inline-block;
	padding: 10px 20px;
	background-color: #309797;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	margin-top: 30px;
	text-align: center;
}

.upload-btn:hover {
	background-color: #4CAF50;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/jsp/header.jsp"%>
	<h1>Liên hệ</h1>
	<p>Hãy liên hệ với chúng tôi qua sđt:123456789</p>
	<%@include file="/WEB-INF/jsp/footer.jsp"%>
</body>
</html>
