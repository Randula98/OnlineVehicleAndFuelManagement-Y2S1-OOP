<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eZ Vehi Care and Service Center</title>
<link rel="stylesheet" href="css/login.css" />
</head>
<body>
	<div class="a">
	       <h1 id="mainhead">eZ Vehi Care Service Center and Fuel Station</h1>
        <hr>
        <div class="c">
        <table>
            <tr>
                <td>Home</td>
                <td>Services</td>
                <td>Reserve Fuel</td>
                <td>Make Appointment</td>
                <td>Login</td>
            </tr>
        </table>
        </div>
  	</div>
  	
  	<div>
  		<br>
        <hr>
        <h2>Login</h2>
        <table border="1">
            <tr>
            	<td>
                	<form action = "login" method = "POST">
                    	UserName <input type="text" name = "username"><br>
                    	Password <input type="password" name = "password"><br>
                    	<input type="submit" value="Login as Customer" name = "customer">
                    	<input type="submit" value="Login as Supplier" name = "supplier">
                    	<input type="submit" value="Login as Employee" name = "employee">
                	</form>
                <p>Login as <a href>Employee</a><br>
                	Login as <a href>Supplier</a></p>
                </td>
            </tr>
        </table>
  	</div>
        <hr>
        <br>
        <br>   
        

</body>
</html>
