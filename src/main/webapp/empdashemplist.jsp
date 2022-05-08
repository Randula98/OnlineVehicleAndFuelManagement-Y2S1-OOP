<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="service.util.*"%>
<%@ page import="com.employee.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
<link rel="stylesheet" type="text/css" href="Styles/style.css">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/promo.css">
<link rel="stylesheet" type="text/css" href="css/sd.css">
<link rel="stylesheet" type="text/css" href="css/home.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/empDash.css">

</head>
<body>
       <div class="navbar">
              <div class="logo">
                  <center><a href="index.php"><img src="images/index/logo.png" width="250px"></a></center>
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
  				<li><a href="regselection.jsp">Sign Up</a></li>
  				<li><a href="contactUs.jsp">Help</a></li>
  			</ul><br>
            
                      <form method="GET" action="/action_page.php">
                       <input  class="navigation" type="text" placeholder="Search.." name="search" >
                      <button class="navigation" type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </nav>
              </div>  
            </div> 
            <br>
        <div class="container emplist"> 
        	<div class = "listin">
        		<%
        			Connection conn = null;
        			Statement state = null;
        			ResultSet rs = null;
                	
        			try{
                		conn = DBConnect.getConnection();
                		state = conn.createStatement();
                		String sql = "select * from employee";
                		rs = state.executeQuery(sql);
        			
						while(rs.next())
						{
							String id = Integer.toString(rs.getInt(1));
							String fname = rs.getString(2);
							String lname = rs.getString(3);
							%><div class = "item-box emp-list-box">
							<p><%out.print(rs.getInt(1)); %> - <%out.print(rs.getString(2)); %> <%out.print(rs.getString(3)); %></p>
							<p><%out.print(rs.getString(4)); %></p>
							<p><%out.print(rs.getString(5)); %></p>
							<p><%out.print(rs.getString(6)); %></p>
							<p><%out.print(id); %></p>
							
							
							<button><a href = "empdashempupdate.jsp?id=<%out.print(rs.getInt(1)); %>">Edit Employee</a></button>
							<button><a href = "empdashempdelete.jsp?id=<%out.print(rs.getInt(1)); %>">Delete Employee</a></button>

							
							</div><%
						}
        			}
        			catch(Exception e){
        				e.printStackTrace();
        			}
        			
        			%>
                	
        		
        	</div>
        	
        </div> 
	<br>
        <footer>
            <hr class="new1"><nav class="foot">
              <ul class="foot">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="promotions.php">Promotions</a></li>
                    <li><a href="aboutUs.php">About Us</a></li>
                    <li><a href="contactUs.php">Contact Us</a></li>
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
               <li><a href="">Nisan</a></li>
               <li><a href="">BMW</a></li>
               <li><a href="">Mitsubishi</a></li>
               <li><a href="">McLaren</a></li>
               <li><a href="">Mazda</a></li>
               <li><a href="">Suzuki</a></li>
               <li><a href="">Honda</a></li>
               <li><a href="">Other</a></li></div>
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