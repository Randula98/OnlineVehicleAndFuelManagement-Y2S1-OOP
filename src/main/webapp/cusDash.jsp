<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="service.util.*"%>
<%@ page import="com.customer.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Dashboard | eZ VehiCare Service and Filling Station</title>
<%
	String cusUserName = session.getAttribute("Susername").toString();
	
	Connection conn = null;
	Statement state = null;
	ResultSet rs = null;
	
	try{
		conn = DBConnect.getConnection();
		state = conn.createStatement();
		String sql = "select * from customer where username = '" + cusUserName + "'";
		rs = state.executeQuery(sql);
		rs.next();
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
%>
</head>
<body>
	<label><%out.print(rs.getInt(1));%></label><br>
	<label><%out.print(rs.getString(2));%></label><br>
	<label><%out.print(rs.getString(3));%></label><br>
	<label><%out.print(rs.getString(4));%></label><br>
	<label><%out.print(rs.getString(5));%></label><br>
	<label><%out.print(rs.getString(6));%></label><br>
	<label><%out.print(rs.getString(7));%></label><br>
</body>
</html>