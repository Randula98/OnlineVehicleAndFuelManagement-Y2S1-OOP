<%@ page="import java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Dashboard</title>

<%
String EmpName = session.getAttribute("Empname").toString();
%>
</head>
<body><!--  
	<h1>Employee Dashboard</h1>
	
	<c:forEach var="emp" items="${empDetails}">
	
	${emp.employeeID}<br>
	${emp.firstName}<br>
	${emp.lastName}<br>
	${emp.contactNo}<br>
	${emp.role}<br>
	$(emp.salary)<br>
	${emp.username}<br>
	${emp.password}<br>
	
	</c:forEach>
	<p></p>-->
	<label><%out.print(EmpName);%>></label>
</body>
</html>