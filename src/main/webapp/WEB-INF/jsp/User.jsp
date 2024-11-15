<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>User list</title>
<style>
    table,
    th,
    td {
       border: 1px solid black;
       }
    </style>
</head>
<body>
    <h1>User list</h1>
    <!-- <h1>Name = ${name}, age = ${age}</h1> -->
    <!-- Display categories here, inside a Table -->
    <!--for better UI, let's use Bootstrap-->
     <table class="table table-striped">
     <thead>
        <tr>
            <th>USERNAME</th>
            <th>PASSWORD</th>
          </tr>
     </thead>
     <tbody>
          <c:forEach var="user" items="${user}">
              <tr>
                  <td>${user.getUsername()}</td>
                  <td>${user.getPassword()}</td>
              </tr>
          </c:forEach>
     </tbody>
    </table>
</body>
</html>