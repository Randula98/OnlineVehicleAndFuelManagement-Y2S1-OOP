<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eZ Vehi Care - Contact Us</title>
<link rel="stylesheet" type="text/css" href="css/promo.css">
  	<link rel="stylesheet" type="text/css" href="css/sd.css">
  	<link rel="stylesheet" type="text/css" href="css/home.css">
  	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
 <div class="container">
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

        <div>
            <center>
            <h1>Contact Details</h1>
            <table class="tab10" style="border-color:black;" border="1">
                <tr>
                    <td>
                        Manager
                    </td>
                    <td>
                        +94 193746825
                    </td>
                </tr>
                <tr>
                    <td>
                        Assistant Manager
                    </td>
                    <td>
                        +94 123789456
                    </td>
                </tr>
                <tr>
                    <td>
                        Customer Service
                    </td>
                    <td>
                        +94 852196347
                    </td>
                </tr>
                <tr>
                    <td>
                        Supervisor
                    </td>
                    <td>
                        +94 873219456
                    </td>
                </tr>
                <tr>
                    <td>
                        HR Department
                    </td>
                    <td>
                        +94 852852794
                    </td>
                </tr>
                <tr>
                    <td>
                    Complaints
                    </td>
                    <td>
                        +94 696955555
                    </td>
                </tr>
                <tr>
                    <td>
                        Fuel Department
                    </td>
                    <td>
                        +94 888224628
                    </td>
                </tr>
                <tr>
                    <td>
                        Service Department
                    </td>
                    <td>
                        +94 565612128
                    </td>
                </tr>
            </table>
            </center>
        </div>
        <div>
            <center>
            <table class="tab10">
                <tr>
                    <td>
                        <a href="https://www.instagram.com/"><img id="pic11" src="images/contactUs/IG.png"  alt=""></a>
                    </td>
                    <td>
                        <a href="https://www.facebook.com/"><img id="pic12" src="images/contactUs/fb.png" alt=""></a>
                    </td>
                    <td>
                        <a href="https://twitter.com/i/flow/login"><img id="pic13" src="images/contactUs/tw.png" alt=""></a>
                    </td>
                </tr>
            </table>
            </center>
        </div>
        <br>
            <hr>
            <hr>
        <div>
            <table class="tab20">
                <tr>
                    <td>Services</td>
                    <td>Fuel Reservations</td>
                    <td>Order Parts</td>
                    <td>Contact Us</td>
                </tr>
                <tr>
                    <td>V.I.P Service</td>
                    <td>Petrol Octane...</td>
                    <td>Geniune Parts</td>
                    <td>Manager</td>
                </tr>
                <tr>
                    <td>Full Service</td>
                    <td>Petrol Octane</td>
                    <td>Reconditioned Parts</td>
                    <td>Assistant Manager</td>
                </tr>
                <tr>
                    <td>Body Wash</td>
                    <td>Super Diesel</td>
                    <td></td>
                    <td>Supervisiors</td>
                </tr>
                <tr>
                    <td>Come N Go </td>
                    <td>Diesel</td>
                    <td></td>
                    <td>Assistant Supervisor</td>
                </tr>
            </table>
        </div>
        </div>
</body>
</html>