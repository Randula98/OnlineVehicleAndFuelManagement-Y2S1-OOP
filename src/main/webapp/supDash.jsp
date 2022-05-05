<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="service.util.*"%>
<%@ page import="com.supplier.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Dashboard</title>
<%
	String supUserName = session.getAttribute("supName").toString();
	
	Connection conn = null;
	Statement state = null;
	ResultSet rs = null;
	
	  try {
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select * from supplier where username = '" + supUserName + "'";
			rs = state.executeQuery(sql);
	        rs.next();
	        
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
%>
</head>
<body>
	<h1>Hello</h1>
	<label><%out.print(supUserName);%></label><br>
	<label><%out.print(rs.getInt(1));%></label><br>
	<label><%out.print(rs.getString(2));%></label><br>
	<label><%out.print(rs.getString(3));%></label><br>
	<label><%out.print(rs.getString(4));%></label><br>
	<label><%out.print(rs.getString(5));%></label><br>
	<label><%out.print(rs.getString(6));%></label><br>
</body>
</html>