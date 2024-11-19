<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="vi">
<head>
    <%@ page pageEncoding="UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách tài liệu</title>
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
    </style>
</head>
<body>
    <h1>Danh sách tài liệu</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Tên tài liệu</th>
            <th>Mô tả</th>
            <th>Kích thước</th>
            <th>Đường dẫn</th>
            <th>Thời gian</th>
            <th>Lĩnh vực</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="doc" items="${listDocs}">
            <tr>
                <td>${doc.id}</td>
                <td>${doc.name}</td>
                <td>${doc.description}</td>
                <td>${doc.size}</td>
                <td>${doc.filePath}</td>
                <td>${doc.uploadTime}</td>
                <td>${doc.linhvuc}</td>
                <td>
                    <a href="/updateDocument/${doc.id}">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div class="back-link">
        <a href="${pageContext.request.contextPath}/hello">Return</a>
    </div>
</body>
</html>
