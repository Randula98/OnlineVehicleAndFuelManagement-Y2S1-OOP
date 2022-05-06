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
  				<li><a href="logout.php">Logout</a></li>
  				<li><a href="sellerRequestForm.php">Become a seller</a></li>
  				<li><a href="contactUs.php">Help</a></li>
  				<li><a href="cart.php">My Cart</a></li>
  			</ul><br>
      
  			  <form method="GET" action="/action_page.php">
     		    <input  class="navigation" type="text" placeholder="Search.." name="search" >
      		  <button class="navigation" type="submit"><i class="fa fa-search"></i></button>
    		  </form>
  		</nav>
  	  </div>
  	      <div align="center">		
			        <button class="category" id="services" ><a href="services.jsp">Our Services</a></button>
			        <button class="category" id="book" ><a href="makebook.jsp">Book Services</a></button>
			        <button class="category" id="fuel" onclick="window.location.href=">Reserve Fuel</button>
			        <button class="category" id="spare" onclick="window.location.href=">Spare Parts</button>
		        	<button class="category" id="oil" onclick="window.location.href=">Oil</button>
		        	

			        <br>
		      </div></div>
		      <hr class="new1">
        <hr>
        <table>
            <tr>
                <td>
                    <h3>V.I.P Service</h3>
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

        <table>
            <tr>
                <td>
                    <h3>Full Service</h3>
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
        <table>
            <tr>
                <th>
                    <h3>Body Wash</h3>
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
        <table>
            <tr>
                <td>
                    <h3>Come N Go</h3>
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
</body>
</html>