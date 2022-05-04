<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Dashboard | eZ VehiCare Service and Filling Station</title>
</head>
<body>

	<h1>Hello world</h1>
	
	<c:forEach var="cus" items="${cusDetails}">
	
	${cus.id}<br>
	${cus.firstName}<br>
	${cus.lastName}<br>
	${cus.contact}<br>
	${cus.email}<br>
	${cus.username}<br>
	${cus.password}<br>
	
	</c:forEach>
	
	<c:forEach var="cus" items="${cusDetails}">
	</c:forEach>
</body>
</html>