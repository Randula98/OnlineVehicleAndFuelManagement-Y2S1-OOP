<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fuck Me</title>
</head>
<body>
	<h1>Big Titties</h1>
	
	<c:forEach var="emp" items="${empDetails}">
	
	${emp.id}<br>
	${emp.firstName}<br>
	${emp.lastName}<br>
	${emp.contactNo}<br>
	${emp.role}<br>
	$(emp.salary)<br>
	${emp.username}<br>
	${emp.password}<br>
	</c:forEach>
	<p></p>
	
</body>
</html>