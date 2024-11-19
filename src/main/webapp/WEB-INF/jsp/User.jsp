<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="vi">
<head>
    <%@ page pageEncoding="UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Danh sách người dùng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 20px;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
        }

        table, th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #34495e;
            color: white;
            font-size: 16px;
        }

        td {
            font-size: 14px;
        }

        a {
            color: #1abc9c;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #16a085;
        }

        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            font-size: 16px;
        }

        .btn-delete {
            background-color: #d9534f;
            color: white;
            border: none;
            padding: 6px 12px;
            cursor: pointer;
            border-radius: 4px;
        }

        .btn-delete:hover {
            background-color: #c9302c;
        }
    </style>
</head>
<body>
    <h1>Danh sách người dùng</h1>

    <table>
        <tr>
            <th>USERNAME</th>
            <th>PASSWORD</th>
            <th>ACTION</th>
        </tr>
        <c:forEach var="user" items="${user}">
            <tr>
                <td>${user.getUsername()}</td>
                <td>${user.getPassword()}</td>
                <td>
                    <form action="/trang-chu/deleteUser/${user.userId}" method="post">
                        <button type="submit" class="btn-delete">Xóa</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="back-link">
        <a href="${pageContext.request.contextPath}/hello">Return</a>
    </div>
</body>
</html>
