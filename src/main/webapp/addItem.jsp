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
<link rel="stylesheet" type="text/css" href="Styles/style.css">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/sd.css">
<link rel="stylesheet" type="text/css" href="css/home.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/supDash.css">
<link rel="stylesheet" type="text/css" href="css/form1.css">
<title>Add items</title>
<%
	String supUserName = session.getAttribute("supName").toString();
	
	Connection conn = null;
	Statement state1 = null;
	ResultSet rs1 = null;
	
	
		try{
			conn = DBConnect.getConnection();
			state1 = conn.createStatement();
			String sql1 = "select * from supplier where userName = '" + supUserName + "';";
			rs1 = state1.executeQuery(sql1);
			rs1.next();
	        
	        int supID = rs1.getInt(1);
		}
		catch(Exception e){
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
  				%><li><a href="login.jsp">Log In</a></li>
  				<li><a href="regselection.jsp">Sign Up</a></li><% 
  						} 
  				else {
  				%><li><a href="logout.jsp">Log Out</a></li><% 
  					if(session.getAttribute("Susername") != null){
  						%><li><a href="cusDash.jsp">Dashboard</a></li><% 
  						}
  					else if(session.getAttribute("Empname") != null){
						%><li><a href="empDash.jsp">Dashboard</a></li><% 
						}
  					else if(session.getAttribute("supName") != null){
						%><li><a href="supDash.jsp">Dashboard</a></li><% 
						}
  					} 
  				%> <!-- if session -->
  				
  				<li><a href="contactUs.jsp">Help</a></li>
  			</ul><br>
      
  			  <form method="GET" action="">
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
		      <center>
		        <form action="insertItem" method="POST" class="form1">
                
                <label >Item:</label><br>
                <input type="text" placeholder="item name" name="item" class = "text" required><br><br>
                <label >Price per unit:</label><br>
                <input type="text" placeholder="RS." name="price" class = "text" required><br><br>
                <label >Available quantity:</label><br>
                <input type="text" placeholder="quantity" name="quantity" class = "text" required><br><br>
                <input type="text" style="visibility:hidden;" name="supID" class = "text" value="<% out.print(rs1.getInt(1)); %>"><br><br>
               
                </center>
                
                <center>
                <input type="submit" id="submitBtn" value="Add" >
                </center>
                </form>
		      </center>		      
	<footer>
      	<hr class="new1"><nav class="foot">
      	  <ul class="foot">
  				<li><a href="home.jsp">Home</a></li>
  				<li><a href="about.jsp">About Us</a></li>
  				<li><a href="contactUs.jsp">Contact Us</a></li>
  			</ul></nav>
      	<hr class="new1">
        <table class="t1" width="100%">
          <tr>
            <th>Online Vehicle Service <br>and<br> Fuel Station Management System</th>
            <th >Find Brands</th>
            <th>More</th>
          </tr>
          <tr>
            <td>
              <li>Promotion</li>
              <li>About Us</li>
              <li>Contact Us</li>
              <li>Category</li>
            </td>
            <td style="border-right: solid 1px grey; border-left: solid 1px grey;">
              <div class="fut">
             <li><a href="https://www.toyota.lk/">Toyota</a></li>
             <li><a href="https://www.nissan-global.com/EN/">Nisan</a></li>
             <li><a href="https://www.bmw.com/en/index.html">BMW</a></li>
             <li><a href="https://www.mitsubishicars.com/">Mitsubishi</a></li>
             <li><a href="https://cars.mclaren.com/en">McLaren</a></li>
             <li><a href="https://www.mazda.com/">Mazda</a></li>
             <li><a href="https://www.globalsuzuki.com/automobile/">Suzuki</a></li>
             <li><a href="https://global.honda/">Honda</a></li>
             <li><a href="https://www.carlogos.org/car-brands/">Other</a></li></div>
            </td>
            <td><center>
              <a href=""><img src="images/youtube.png" alt="Youtube"></a>
              <a href=""><img src="images/fb.png" alt="Facebook"></a><br><br>
              <a href=""><img src="images/twitter.png" alt="Twitter"></a>
              <a href=""><img src="images/whatsapp.png" alt="Whatsapp"></a></center>
            </td>
          </tr>
        </table>
      </footer>
</body>
</html>