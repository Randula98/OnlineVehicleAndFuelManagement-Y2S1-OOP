<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<meta charset="utf-8">
	<title>SignUp | eZ Vehicare Service</title>
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
  	  	<center><a href="index.php"><img src="images/index/logo.png" width="250px"></a></center>
        <h1 class="topic" align="center">eZ Vehi Care</h1>
  		<nav class="top">
  			<ul>
  				<li><a href="index.php">Home</a></li>
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
			        <button class="category" id="services" onclick="window.location.href=">Our Services</button>
			        <button class="category" id="book" onclick="window.location.href=">Book Services</button>
			        <button class="category" id="fuel" onclick="window.location.href=">Reserve Fuel</button>
			        <button class="category" id="spare" onclick="window.location.href=">Spare Parts</button>
		        	<button class="category" id="oil" onclick="window.location.href=">Oil</button>
		        	

			        <br>
		      </div></div>
		      <hr class="new1">

            <!-- Form starts here-->
            <div>
                <div>
                    <h2>
                        SignUp As A Customer
                    </h2>
                    <p>
                        Join as a customer to our family and obtain all the priviledges that our service provide. You can get our highly recognized vehicle service by making an appointment through our system and save every minute of your valuable time, we know how valuable every minute of your time. Adjoining to that, we bid welcome to experience the first ever ONLINE FUEL RESERVATION, by this, you can reserve fuel allocated to you and collect them at the time of your preference. Not to forget you can also order spare parts through our system and have them installed by our highly qualified mechanics in our eZvehi care family.

                    </p>
                    <br>
                    <img src="images/hand.jpg" alt="">
                    <br><br>
                    <button><a href="cusReg.jsp">Sign Up As Customer</a></button>
                </div>
                <div>
                    <h2>
                        SignUp As A Employee
                    </h2>
                    <p>
                        Become a part of our eZvehi Care Family. Work in a stress free and Advanced work environment. Love every second that you work in here. And also stand a chance to obtain to get Emlpoyee-discounts by getting your jobs done through our service.

                    </p>
                    <br>
                    <img src="images/emp.jpg" alt="">
                    <br><br>
                    <button><a href="empReg.jsp">Sign Up As Employee</a></button>
                </div>
                <div>
                    <h2>
                        SignUp As A Supplier
                    </h2>
                    <p>
                        Become a proud subset of our supplying family. We value the high quality products that you have to offer to us. All it takes is to go through a quality checking done by our mechanics and your company is good to go. We are looking forward for a bright and wealthy journey ahead of us.

                    </p>
                    <br>
                    <img src="images/supp.jpg" alt="">
                    <br><br>
                    <button><a href="supReg.jsp">Sign Up As Supplier</a></button>
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
  </div>  
      
</body>
</html>