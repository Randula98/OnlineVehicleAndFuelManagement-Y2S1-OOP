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
<link rel="stylesheet" type="text/css" href="Styles/style.css">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/promo.css">
<link rel="stylesheet" type="text/css" href="css/sd.css">
<link rel="stylesheet" type="text/css" href="css/home.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/cusDash.css">
<%
	String cusUserName = session.getAttribute("Susername").toString();
	
	
	Connection conn = null;
	Statement state = null;
	Statement state2 = null;
	Statement state3 = null;
	Statement state4 = null;
	Statement state5 = null;
	Statement state6 = null;
	ResultSet rs = null;
	ResultSet ls = null;
	ResultSet zs = null;
	ResultSet as = null;
	ResultSet fs = null;
	
	ResultSet dd = null;
	
	try{
		conn = DBConnect.getConnection();   //made connection
		state = conn.createStatement();  
		state2 =conn.createStatement();
		state3 =conn.createStatement(); 
		state4 =conn.createStatement();  //gave connection for statements
		state5 =conn.createStatement();
		state6 =conn.createStatement();
		
		String sql = "select * from customer where username = '" + cusUserName + "'";
		String sql2= "select count(*)  from customer";  // sql statemnets
		
		rs = state.executeQuery(sql);
		ls = state2.executeQuery(sql2);  // executed statements
		
		ls.next();
		rs.next();
		
		String sql3= "select count(itemID) from customer_item where cusID = '"+rs.getInt(1)+"'";  // sql statemnets
		String sql4= "select * from appointment where cusID = '"+rs.getInt(1)+"'";
		String sql5= "select * from fuel_reservations where customerID ='"+rs.getInt(1)+"'";
		String sql6= "";
		
		zs = state3.executeQuery(sql3); // executed statements
		zs.next();
		as = state4.executeQuery(sql4);
		fs = state5.executeQuery(sql5); // executed statements
		
		}
	catch(Exception e){
		e.printStackTrace();
	}
	
%>
</head>
<body>
	<div class = "container">
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
		     <b>
		      <label style="font-size:20px">Welcome Back <%out.print(rs.getString(2));%> !!!</label>
		      </b>
		</div>	
	</div>
	
	
	
		<div>
            <div>
            <table>
            	<tr>
               		<td><h3>Customer Details</h3></td>
                 </tr>
                 <tr>   
                        <td>FirstName: <b> <%out.print(rs.getString(2));%></b> </td>
               	</tr>
               	<tr>
                        <td>LastName: <b><%out.print(rs.getString(3));%></b></td>
                </tr>        
                <tr>  
                        <td>Contact Number:<b> <%out.print(rs.getString(4));%></b></td>
               </tr>
               <tr>
                        <td>Email:<b> <%out.print(rs.getString(5));%></b></td>
               </tr>
               <tr>
                        <td>UserName: <b><%out.print(rs.getString(6));%></b></td>>
				</tr>
				<tr>
                		<td><button><a href="changeCusDet.jsp">Update Details </a></button></td>
            	</tr>
            </table>
            </div>
			<br><br>
			<center>
            <div>
                <h3>Stats</h3>
                <p>
                    You are one of <b> <%out.print(ls.getInt(1));%> </b>our customers <br>
                    You Currently have <b> <%out.print(zs.getInt(1)); %> </b> orders <br>
                </p>
            </div>
			</center>
        </div>

        <div>
            <h3>
                Service Appointments
            </h3>
            <p>
            	You have the Below mentioned Appointments with our Service <br>
            </p>
            	<table>
            	<tr>
            	<td><b>Service Type</b></td>
            	<td><b>Date</b></td>
            	</tr>
                <%
             		while(as.next()){%>
             			<tr>
             			
             			<td><%out.print(as.getString(2)); %></td> 
             			<td><%out.print(as.getString(3)); %></td>
             		<!--  	<td>
             			<form action="deleteappointment" method="post">
             			<input type="text" name="id" value="<%out.print(as.getInt(1)); %>" >
             			<button><input type="submit" value="Delete Appointment" class="button"></button>
             			</form>
             			</td> -->
             			</tr><%
             		}%>
                </table>
            
        </div>

        <div>
            <h3>
                Fuel Reservations
            </h3>
            <p>
                You have the Below mentioned Fuel Reservations in our Filling Station<br>
            </p>
            <table >
            <tr>
            <td><b>Vehicle Number</b></td>
            <td><b>Fuel Amount(Litres)</b></td>
            <td><b>Fuel Type</b></td>
            <td><b>Reservation Date</b></td>
            <td><b>Vehicle Type</b></td>
            </tr>
            
            <%
            	while(fs.next()){
            %><tr>
            	<td><% out.print(fs.getString(4)); %></td>
            	<td><% out.print(fs.getInt(3)); %></td>
            	<td><% out.print(fs.getString(2)); %></td>
            	<td><% out.print(fs.getString(5)); %></td>
            	<td><% out.print(fs.getString(6)); %></td>
            	<%
            	}
            	%>
            	</tr>
            </table>
        </div>

	
	
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