<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eZ Vehi Care and Service Center</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/promo.css">
        <link rel="stylesheet" type="text/css" href="css/sd.css">
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <link rel="stylesheet" type="text/css" href="css/loginBox.css">
</head>
<body>
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
            </div>  
        </div>  
            <br><br>
        <div class = "loginbox">
            <center>
                <h1>Login</h1><br>
                <form action = "login" method = "POST">
                    <input type="text" name = "username" placeholder = "Username" class = "text"><br><br>
                    <input type="password" name = "password" placeholder = "Password" class = "text"><br><br>
                    <input type="submit" value="Login as Customer" name = "customer" class = "button">
                    <input type="submit" value="Login as Supplier" name = "supplier" class = "button">
                    <input type="submit" value="Login as Employee" name = "employee" class = "button">
                </form>
            </center>
        </div>
        <br><br>

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
