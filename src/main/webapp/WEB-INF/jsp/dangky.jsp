<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Document</title>
<style>
.error {
    color: red;
}
</style>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
</head>
<body>
    <h2>DANG KY</h2>
    <form:form method="POST" action="/trang-chu/dangky"
        modelAttribute="user">
            <div class="form-group">
                <label for="username">Name:</label>
                <form:input type="text" class="form-control"
                placeholder="Enter user's name" value="${user.getUsername()}"
                path="username" />
            </div>
            <form:errors path="username" cssClass="error" />         
            <div class="form-group">
  				<label for="password">Password:</label>
                <form:input type="password" class="form-control"
                placeholder="Enter user's password" value="${user.getPassword()}"
                path="password" />
            </div>
            <form:errors path="password" cssClass="error" />
            <p class="error">${error}</p>
            <div class="container">
            <input type="submit" class="btn btn-info" value="Dangky" />
            </div>
    </form:form>
    </body>
    </html>