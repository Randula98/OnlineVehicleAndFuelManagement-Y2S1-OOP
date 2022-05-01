<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	       <h1>eZ Vehi Care and Service Center</h1>
        <hr>
        <table border="1">
            <tr>
                <td>Home</td>
                <td>Services</td>
                <td>Reserve Fuel</td>
                <td>Make Appointment</td>
                <td>Login</td>
            </tr>
        </table>
        <hr>
        <h2>Login</h2>
        <table border="1">
            <tr>
                <form action="POST">
                    UserName <input type="text"><br>
                    Password <input type="password"><br>
                    <input type="submit" value="Login as Customer">
                    <input type="submit" value="Login as Supplier">
                    <input type="submit" value="Login as Employee">
                </form>
                <p>Login as <a href>Employee</a><br>
                Login as <a href>Supplier</a></p>
            </tr>
        </table>

</body>
</html>