<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<meta charset="utf-8">
	<title>eZVehiCare Service and Filling Station</title>
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
  				<!-- if no session - Susername from customer-->
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
  				
  				<li><a href="contactUs.jsp">Contact Us</a></li>
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


          <!-- App slide show --> <br><br>
    <h1><center>HOME</center></h1>
  <section class="slide-show"> <!-- https://www.youtube.com/watch?v=0wvrlOyGlq0&ab_channel=CodingSnow--> 
    <div class="slider">
       <div class="slide active" style="background-image: url('images/guy.jpg')">
         <div class="container">
           <div class="caption">
             <h1>Our Services</h1>
             <p>Professional services for affordable prices.</p>
             <a href="" style="background-color: #ec2724;">More...</a>
           </div>
         </div>
       </div>
       <div class="slide" style="background-image: url('images/book.jpg')">
         <div class="container">
           <div class="caption">
             <h1 >Book Services</h1>
             <p style="color:black">Save every minute of your valuable time.</p>
             <a href="" style="background-color: #ec2724;">More...</a>
           </div>
         </div>
       </div>
       <div class="slide" style="background-image: url('images/spare.jpg')">
      <div class="container">
        <div class="caption">
          <h1>Spare Parts</h1>
          <p>Keep 'em running.</p>
          <a href="" >More...</a>
        </div>
      </div>
    </div>
    <div class="slide" style="background-image: url('images/fuel.jpg')">
         <div class="container">
           <div class="caption">
             <h1 style="color:black">Fuel Reservations</h1>
             <p style="color:black">Good fuel.Quality journey.</p>
             <a href="" style="background-color: #ec2724;">More...</a>
           </div>
         </div>
       </div>
    <div class="slide" style="background-image: url('images/oil change.jpg')">
      <div class="container">
        <div class="caption">
          <h1>Oil Changes</h1>
          <p>Oiling makes you perfect</p>
          <a href="" style="background-color: white; color: black;">More...</a>
        </div>
      </div>
    </div>
    </div>
    
     <!-- controls  -->
     <div class="controls">
       <div class="prev">&#10094;</div>
       <div class="next">&#10095;</div>
     </div>
   
     <!-- indicators -->
     <div class="indicator">
     </div>
   
   </section>
   <script src = "Scripts/catslider.js"></script>

  
<br><br><br><br><br><br><br><br><br><br><br>
<div>
    <center>
      <img src="images/pormo2.jfif" alt="promo2 image" class="mainImage"> <
      <img src="images/blond.jpg" alt="promo6 image" class="mainImage">
      <br>
      <img src="images/serv.jpg" alt="promo6 image" class="banner">
    
    <hr>
    <br><br><br>
    <div class="imgFooter">
      <img src="images/piston.jpg" alt="" class="image"> 
      <img src="images/fuel-1.jpg" alt="" class="image">
      <img src="images/hapcus.jpg" alt="" class="image"> 
      <img src="images/whee.jpg" alt="" class="image"> 
    </div>
    </center>
  </div>

    

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
      
</body>
</html>