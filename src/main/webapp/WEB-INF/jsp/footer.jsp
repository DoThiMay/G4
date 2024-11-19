<!DOCTYPE html>
<html>
<head>
  <%@ page pageEncoding="UTF-8" %>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

  <!-- Footer -->
  <footer>
    <div class="footer-content">
      <!-- Section 1: About Us -->
      <div class="footer-section">
        <h3>Về chúng tôi</h3>
        <p><a href="About.html">Chi tiết</a></p>
      </div>

      <!-- Section 2: Contact -->
      <div class="footer-section">
        <h3>Liên hệ</h3>
        <p>Email: <a href="mailto:blabla@gmail.com">blabla@gmail.com</a></p>
        <p>Số điện thoại: <a href="tel:0123456789">0123456789</a></p>
      </div>

      <!-- Section 3: Follow Us -->
      <div class="footer-section">
        <h3>Theo dõi chúng tôi</h3>
        <p><a href="fb">Facebook</a> | <a href="li">LinkedIn</a> | <a href="ins">Instagram</a></p>
      </div>
    </div>

    <div class="footer-bottom">
      <p>&copy; 2024</p>
    </div>
  </footer>
</body>
</html>
