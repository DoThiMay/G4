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
		<div>
			<h1>Document Manager</h1>
		</div>
		<div class="text-success">
			<h3>${message}</h3>
		</div>
		<div class="row border rounded">
			<c:forEach var="doc" items="${listDocs}">
				<th:block>
					<div class="col">
						<div>
							<img src="/images/img.jpg" width="50" />
						</div>
						<div>
							<a href="/download?id=${doc.id}">${doc.name}</a>
						</div>
						<div>(${doc.getSize()} bytes)</div>
						<div>${doc.getLinhvuc()}</div>
						<div>${doc.getDescription()}</div>
						<div>
                        <a href="/details?id=${doc.id}" class="btn btn-primary">Xem chi tiết</a>
                    </div>
					</div>
				</th:block>
			</c:forEach>
		</div>
	</div>
	<a href="/upload"> Dang tai lieu </a>
</body>
</html>
