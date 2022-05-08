<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<meta charset="utf-8">
	<title>Our Services | eZ Vehicare Service</title>
	<link rel="stylesheet" type="text/css" href="Styles/style.css">
  <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        <hr>
        <table border="1">
            <tr>
                <td>
                    <h3><b>V.I.P Service</b></h3>
                </td>
            </tr>
            <tr>
                <td>
                    Full Body CheckUp
                </td>
            </tr>
            <tr>
                <td>
                    Full Oil CleanUp
                </td>
            </tr>
            <tr>
                <td>
                    Full Body Wash
                </td>
            </tr>
            <tr>
                <td>
                    Full Body Wax
                </td>
            </tr>
            <tr>
                <td>
                    Refilled Fuel Tank
                </td>
            </tr>
            <tr>
                <td>
                    Fully Repump Tires With Nitrogen
                </td>
            </tr>
            <tr>
                <td>
                    Change All Filters
                </td>
            </tr>
            <tr>
                <td>
                    <button><a href="makebook.jsp">Make A Booking</a></button>
                </td>
            </tr>
        </table>

        <table border="1">
            <tr>
                <td>
                    <h3><b>Full Service</b></h3>
                </td>
            </tr>
            <tr>
                <td>
                    Full Body Wash
                </td>
            </tr>
            <tr>
                <td>
                    Change All Filters
                </td>
            </tr>
            <tr>
                <td>
                    Full Oil CleanUp
                </td>
            </tr>
            <tr>
                <td>
                    Full Body Wax
                </td>
            </tr>
            <tr>
                <td>
                    <button><a href="makebook.jsp">Make A Booking</a></button>
                </td>
            </tr>
        </table>
        <table border="1">
            <tr>
                <th>
                    <h3><b>Body Wash</b></h3>
                </th>
            </tr>
            <tr>
                <td>
                    Full Body Wash
                </td>
            </tr>
            <tr>
                <td>
                    Full Body Wax
                </td>
            </tr>
            <tr>
                <td>
                    <button><a href="makebook.jsp">Make A Booking</a></button>
                </td>
            </tr>
        </table>
        <table border="1">
            <tr>
                <td>
                    <h3><b>Come N Go</b></h3>
                </td>
            </tr>
            <tr>
                
                <td>Journey Through Automatic Car Wash</td>
            </tr>
            <tr>
                <td>
                    <button><a href="makebook.jsp">Make A Booking</a></button>
                </td>
            </tr>
        </table>
        <br>
            <hr>
            <hr>
        <div>
            <table>
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