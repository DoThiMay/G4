<!DOCTYPE html>
<html lang="vi">
<head>
<%@ page pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Quản trị hệ thống</title>
  <style>
    /* Reset CSS */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    /* Toàn bộ trang */
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      color: #333;
      line-height: 1.6;
    }

    /* Header */
    header {
      background-color: #2c3e50;
      color: white;
      padding: 15px 20px;
      text-align: center;
      font-size: 24px;
      position: fixed;
      top: 0;
      width: 100%;
      z-index: 1000;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    /* Container chính */
    .container {
      display: flex;
      margin-top: 70px; /* Để lùi xuống dưới header */
    }

    /* Sidebar (trái) */
    .sidebar {
      background-color: #34495e;
      color: white;
      width: 250px;
      padding: 20px 20px 20px; /* Thêm khoảng cách padding */
      padding-top: 90px; /* Đẩy xuống dưới để tránh header */
      height: calc(100vh - 70px); /* Chiều cao trừ đi chiều cao của header */
      position: fixed; /* Sidebar cố định ở bên trái */
    }

    .sidebar h2 {
      font-size: 20px;
      margin-bottom: 20px;
      text-align: center;
      text-transform: uppercase;
      letter-spacing: 1px;
    }

    .sidebar ul {
      list-style: none;
      padding: 0;
    }

    .sidebar ul li {
      margin: 15px 0;
    }

    .sidebar ul li a {
      text-decoration: none;
      color: white;
      padding: 10px 15px;
      display: block;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }

    .sidebar ul li a:hover {
      background-color: #1abc9c;
    }

    /* Nội dung chính (bên phải) */
    .main-content {
      margin-left: 270px; /* Đẩy nội dung chính sang phải để không đè lên sidebar */
      padding: 20px;
      flex: 1;
    }
  </style>
</head>
<body>
  <!-- header -->
  <header>
    <h1>Quản trị hệ thống</h1>
  </header>

  <!-- main -->
  <div class="container">
    <!-- sidebar (trái) -->
    <div class="sidebar">
      <h2>Hệ thống</h2>
      <ul>
        <li><a href="${pageContext.request.contextPath}/manageDocument">Danh mục tài liệu</a></li>
        <li><a href="${pageContext.request.contextPath}/trang-chu">Danh sách tài khoản</a></li>
        <li><a href="${pageContext.request.contextPath}/upload">Đăng tài liệu</a></li>
         <li><a href="${pageContext.request.contextPath}//logout">Đăng xuất</a></li>
      </ul>
    </div>

    <!-- Nội dung chính -->
    <div class="main-content">
      <!-- Nội dung của bạn sẽ được thêm vào đây -->
    </div>
  </div>
</body>
</html>