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
<body><div class="container">
  	<div class="navbar">
  	  <div class="logo">
  	  	<center><a href="home.jsp"><img src="images/index/logo.png" width="250px"></a></center>
        <h1 class="topic" align="center">eZ Vehi Care</h1>
  		<nav class="top">
  			<ul>
  				<li><a href="home.jsp">Home</a></li>
  				<!-- if no session -->
  				<%
  				if((session.getAttribute("Susername") == null) && (session.getAttribute("Empname")== null) && (session.getAttribute("supName")== null)) {
  				%><li><a href="login.jsp">Log In</a></li><% 
  						} 
  				else {
  				%><li><a href="logout.jsp">Log Out</a></li><% 
  						} 
  				%> <!-- if session -->
  				<li><a href="regselection.jsp">Sign Up</a></li>
  				<li><a href="contactUs.jsp">Help</a></li>
  			</ul><br>
      
  			  <form method="GET" action="/action_page.php">
     		    <input  class="navigation" type="text" placeholder="Search.." name="search" >
      		  <button class="navigation" type="submit"><i class="fa fa-search"></i></button>
    		  </form>
  		</nav>
  	  </div>
  	      <div align="center">		
			        <button class="category" id="services" onclick="window.location.href='services.jsp'">Our Services</button>
			        <button class="category" id="book" onclick="window.location.href='makebook.jsp'">Book Services</button>
			        <button class="category" id="fuel" onclick="window.location.href='fuel.jsp'">Reserve Fuel</button>
			        <button class="category" id="spare" onclick="window.location.href='spare.jsp'">Spare Parts</button>
		        	<button class="category" id="oil" onclick="window.location.href='oil.jsp'">Oil</button>
		        	

			        <br>
		      </div>
		</div>
		      <hr class="new1">
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