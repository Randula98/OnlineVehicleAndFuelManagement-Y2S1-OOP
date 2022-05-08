<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="service.util.*"%>
<%@ page import="com.employee.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Dashboard</title>
<link rel="stylesheet" type="text/css" href="Styles/style.css">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/promo.css">
<link rel="stylesheet" type="text/css" href="css/sd.css">
<link rel="stylesheet" type="text/css" href="css/home.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/empDash.css">

<%
	String empUserName = session.getAttribute("Empname").toString();
	
	Connection conn = null;
	Statement state = null;
	ResultSet rs = null;
	
	try{
		conn = DBConnect.getConnection();
		state = conn.createStatement();
		String sql = "select * from employee where username ='"+empUserName+"'";
		rs = state.executeQuery(sql);
		rs.next();
		
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
%>
<style type="text/css">
</style>
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
		
		<br>
		<div class = "dashboard">
              <h1><%out.print(rs.getString(2)); %>'s Dashboard</h1>

              <div class = "cards self-details"><!--own details-->
              	<img alt="" src="images/user.png">
              	
                <p>Employee ID - <%out.print(rs.getInt(1));%> | <%out.print(rs.getString(7));%></p>
                <p><%out.print(rs.getString(2));%> <%out.print(rs.getString(3));%></p>
                <p><%out.print(rs.getString(4));%></p>
                <p>
                <% if(rs.getString(5).equals("admin")) out.print("System Administrator");
                else if(rs.getString(5).equals("supervior")) out.print("Supervisor");
                else if(rs.getString(5).equals("mechanic")) out.print("Mechanic");
                else if(rs.getString(5).equals("assistant_mechanic")) out.print("Assistant Mechanic");
                else if(rs.getString(5).equals("car_detailer")) out.print("Car Detailer");
                else if(rs.getString(5).equals("recieption")) out.print("Reception");
                %></p>
                <p>Net Salary of - <%out.print(rs.getDouble(6));%></p>
                
               <button><a href = "empdashempupdate.jsp?id=<%out.print(rs.getInt(1));%>">Update Employee Detials</a></button>
               
              </div>

              <div class = "cards site-details"><!--site details-->
              <%
             	 ResultSet countCus = null;
           		 ResultSet countEmp = null;
           		 ResultSet countSup = null;
           		 ResultSet countItem = null;
           	
           		 Statement state1 = null;
          		 Statement state2 = null;
          		 Statement state3 = null;
          	 	 Statement state4 = null;
           	
          	
              	try{
              		
                 	state1 = conn.createStatement();  
                 	String sql1 = "select count(*) from customer";
                 	countCus = state1.executeQuery(sql1);
                 	countCus.next();
                 	
                 	state2 =conn.createStatement();
                 	String sql2 = "select count(*) from employee";
                 	countEmp = state2.executeQuery(sql2);
                 	countEmp.next();
                 	
            		state3 =conn.createStatement(); 
                 	String sql3 = "select count(*) from supplier";
                 	countSup = state3.executeQuery(sql3);
                 	countSup.next();
                 	
            		state4 =conn.createStatement();
                 	String sql4 = "select count(*) from item";
                 	countItem = state4.executeQuery(sql4);
                 	countItem.next();
              	}catch(Exception e){
            		e.printStackTrace();
            	}
       
              %>
                <div class = "cards site-creds">
                	<img src="images/dash/cus.png" alt="">
					<p>Number of Registered Customers</p>
					<p class = "number"><%out.print(countCus.getInt(1));%></p>
					<img src="images/dash/emp.png" alt="">
					<p>Number of Registered Employees</p>
					<p class = "number"><%out.print(countEmp.getInt(1));%></p>
                </div>
                <div class = "cards site-creds">
                	<img src="images/dash/service.png" alt="">
                  	<p>Number of Registered Shops</p>
					<p class = "number"><%out.print(countSup.getInt(1));%></p>
					<img src="images/dash/items.png" alt="">
					<p>Number of Posted <br>Items</p>
					<p class = "number"><%out.print(countItem.getInt(1));%></p>
                </div>

              </div>

              <div class = "cards list"><!--emp details-->
                <div class = "list_head"><h1>Employee List</h1></div>
                
				 <table>
                	<thead>
                		<tr>
                			<th>ID</th>
                			<th>First Name</th>
                			<th>Last Name</th>
                			<th>Role</th>
                		</tr>
                	</thead>
                	
                	<tbody>
                		
                			<%
            				int i = 0;
                			try{
                				conn = DBConnect.getConnection();
                				state = conn.createStatement();
                				String sql = "select * from employee";
                				rs = state.executeQuery(sql);
                				
                				while(rs.next()){%>
                					<% i++;if(i>3)break;%>
                					<tr><td><%out.print(rs.getInt(1)); %></td>
                					<td><%out.print(rs.getString(2)); %></td>
                					<td><%out.print(rs.getString(3)); %></td>
                					<td><%out.print(rs.getString(5)); %></td>
                					</tr>
                				<%}
                				
                				
                			}catch(Exception e)
                			{
                				e.printStackTrace();
                			}
                			%>
                		
                	</tbody>
                	
                </table><br>
                <button><a href = "empdashemplist.jsp">See More...</a></button>
              </div>
              <div class = "cards list"><!--cus details-->
                <div class = "list_head"><h1>Customer List</h1></div>
                <table>
                	<thead>
                		<tr>
                			<th>ID</th>
                			<th>First Name</th>
                			<th>Last Name</th>
                			<th>Email</th>
                		</tr>
                	</thead>
                	
                	<tbody>
                		<tr>
                			<%
            				i = 0;
            				
                			try{
                				conn = DBConnect.getConnection();
                				state = conn.createStatement();
                				String sql = "select * from customer";
                				rs = state.executeQuery(sql);
                				
                				while(rs.next()){%>
                					<% i++;if(i>3)break;%>
                					<td><%out.print(rs.getInt(1)); %></td>
                					<td><%out.print(rs.getString(2)); %></td>
                					<td><%out.print(rs.getString(3)); %></td>
                					<td><%out.print(rs.getString(5)); %></td>
                					</tr>
                				<%}
                				
                				
                			}catch(Exception e)
                			{
                				e.printStackTrace();
                			}
                			%>
                		
                	</tbody>
                	
                </table><br>
				<button><a href = "empdashcuslist.jsp">See More...</a></button>
              </div>
              <div class = "cards list"><!--sup details-->
                <div class = "list_head"><h1>Supllier List</h1></div>
				  <table>
                	<thead>
                		<tr>
                			<th>ID</th>
                			<th>Comapany Name</th>
                			<th>Branch Name</th>
                			<th>Username</th>
                		</tr>
                	</thead>
                	
                	<tbody>
                		<tr>
                			<%
            				i = 0;
            				
                			try{
                				conn = DBConnect.getConnection();
                				state = conn.createStatement();
                				String sql = "select * from supplier";
                				rs = state.executeQuery(sql);
                				
                				while(rs.next()){%>
                					<% i++;if(i>3)break;%>
                					<td><%out.print(rs.getInt(1)); %></td>
                					<td><%out.print(rs.getString(2)); %></td>
                					<td><%out.print(rs.getString(3)); %></td>
                					<td><%out.print(rs.getString(5)); %></td>
                					</tr>
                				<%}
                				
                				
                			}catch(Exception e)
                			{
                				e.printStackTrace();
                			}
                			%>
                		
                	</tbody>
                </table><br>
                <button><a href = "empdashsuplist.jsp">See More...</a></button>
              </div>
              
              <div class = "cards item-list"><!--item details-->
                <div class = "list_head"><h1>Item List</h1></div>
					<%
            				i = 0;
            				
                			try{
                				conn = DBConnect.getConnection();
                				state = conn.createStatement();
                				String sql = "select * from item";
                				rs = state.executeQuery(sql);
                				
                				while(rs.next()){%>
                					<% i++;if(i>8)break;%>
                					<div class = "item-box">
										<p>Item ID - <%out.print(rs.getInt(1)); %></p>
										<p><%out.print(rs.getString(2));%> </p>
										<p>Rs.<%out.print(rs.getDouble(3));%>0</p>
									</div>
                				<%}
                				
                				
                			}catch(Exception e)
                			{
                				e.printStackTrace();
                			}
                			%><br><br>
						<button><a href = "empdashitemlist.jsp">See More...</a></button>
					</div>
              </div>

            </div>

            <br><br>
		
		
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