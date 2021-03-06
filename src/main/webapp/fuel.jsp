<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="service.util.*"%>
<%@ page import="com.customer.*"%>
<!DOCTYPE html>
<html>
	<meta charset="utf-8">
	<title>Fuel Reservation Form | eZ Vehicare Service</title>
	<link rel="stylesheet" type="text/css" href="Styles/style.css">
  <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/promo.css">
  <link rel="stylesheet" type="text/css" href="css/sd.css">
  <link rel="stylesheet" type="text/css" href="css/home.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  
  
<%
	String cusUserName = session.getAttribute("Susername").toString();
	
	
	Connection conn = null;
	Statement state = null;
	ResultSet rs = null;
	
	try{
		conn = DBConnect.getConnection();   //made connection
		state = conn.createStatement();
		
		String sql = "select * from customer where username = '" + cusUserName + "'";
		
		rs = state.executeQuery(sql);
		rs.next();
	}catch(Exception X){
		X.printStackTrace();
	}
	%>
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

            <!-- Form starts here-->
            <center>
                <h2> Fuel Reservation Form</h2> <!-- reffered from labsheets-->
            </center>
            <center>
                <form class="form1" action="insertFuel" method="POST" onsubmit="return checkPassword()">
                <label for="vehicleNo">Vehicle Number</label>
                <input type="text" placeholder="Enter Vehicle Number" name="vehicleNo" required><br><br>
                <label for="Fueltype">Select Fuel Type</label>
                <select name="fueltype" id="fueltype">
                    <option value="Octane92">Octane 92</option>
                    <option value="Octane95">Octane 95</option>
                    <option value="superdiesel">Super Diesel</option>
                    <option value="autodiesel">Auto Diesel</option>
                    <option value="kerosene">Kerosene</option>
                  </select>
                <br><br>
                <label for="vehicletype">Select Vehicle Type</label>
                <select name="vehicleType" id="vehicleType">
                    <option value="Car">Car</option>
                    <option value="SUV">SUV</option>
                    <option value="Van">Van</option>
                    <option value="Bike">Bike</option>
                    <option value="Lorry">Lorry</option>
                    <option value="Tuk">Tuk Tuk</option>
                    <option value="Jeep">Jeep</option>
                    <option value="LV">Long Vehicle</option>
                  </select>
                <br><br>


                
                <label for="Amount">Amount</label>:
                <input type="text" name = "amount"> Litres <br><br>
                
                
                
                Date Of Collection : <br/>
                <input type="date" name="cod" required><br/>
                <input type="text" name="hiddenid" value = "<% out.print(rs.getInt(1));%>" style = "visibility:hidden;" required><br/>
                
                <input type="checkbox" class="inputStyle" id="checkbox" onclick="enableButton()">I have Read the conditions and I Accept Privacy Policy and Terms.<br/>
                </center>
                
                
                <center>
                <input type="submit" id="submitBtn" value="submit">
                </center>
                </form>
    
         

		<br>
		
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
  </div>  
      
</body>
</html>