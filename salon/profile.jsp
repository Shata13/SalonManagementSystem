<html>
<head> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="mystyle1.css">
<title>The Trim House : User Profile page</title>
<%@page import="java.sql.*"%>











<style>

html {
  scroll-behavior: smooth;
}
#section1 {
  height:100px;
  background-color:white;
  }
  #section2 {
  height:600px;
  background-color:LightSteelBlue;
  }
.sidenav {
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 1;
  top: 162;
  left: 0;
  background-color: LightSteelBlue;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 22px;
  color: black;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 200px; /* Same as the width of the sidenav */
  padding: 0px 10px;
  background-color:LightSteelBlue;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 10px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>
<%
Connection con=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
String username=(String)session.getAttribute("email");
PreparedStatement ps=con.prepareStatement("select * from reg where email=?");
ps.setString(1,username);
ResultSet rs= ps.executeQuery();





%>


<center><img src="logoo.jpg" width="100" height="100"></center>
<ul>
<li><a href="test_al.html">Home</a></li>
  <li><a href="booking.jsp">Book Now</a></li>
  <li><a href="contact_al.html">Contact</a></li>
  <li><a href="feedback_al.jsp">Feedback</a></li>
  <li style="float:right"><a  href="test.html">Logout</a></li>
  <li style="float:right"><a  href="profile.jsp">My Profile</a></li>
</ul>
<div class="sidenav">
  <a href="userinfo.jsp">Update Information</a><br>
  <a href="changepwd.jsp">Change Password</a><br>
  <a href="selectedservice.html">Selected Services</a><br>
  <a href="covid19.html">COVID 19 Safety</a><br>
  <a href="test.html">Logout</a><br>
</div>
<%
if(rs.next())
{
%>
<div class="main" id="section2" >
<h2><center>Welcome !</center></h2>
<h3>Your name:<%out.println(rs.getString(2));%></h3><br>
<h3>Your Mobile no:<%out.println(rs.getLong(6));%></h3><br>
<h3>Your Address:<%out.println(rs.getString(5));%></h3><br>
<h3>Your Email Id:<%out.println(rs.getString(3));%></h3><br>
</div>
<% }
}
catch(Exception e)
{
	out.println("exception");
}
%>
<hr>
<div class="main" id="section1">
<center><img src="logoo.jpg" width="100" height="100"></center>
  <address><b>Email id:</b><a href="thetrimhousesalon@gmail.com">THE TRIM HOUSE</a></address>
  <b>Contact number:</b> +91-9130568553  /  +91-7767091844<br>
  <b>Address:</b> Mayur Colony,Near Balshikshan School, Kothrud Pune 411038 
<hr>
</div> 
</body>
</html>