<%@page import="java.sql.*"%>
<html>
<head> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="mystyle1.css">
<title>The Trim House : COVID-19 Information page</title>
<style>
.container{
	font-family: Arial;
	color: black;
}

input[type=text], select, textarea {
  width: 35%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
  border-bottom: 2px solid DarkBlue;
  background-color:Linen;
}

input[type=submit] {
  background-color: black;
  color: white;
  padding: 15px 25px;
  border: none;
  border-radius: 4px;
  width: 12%;
  cursor: pointer;
  font-size:18px;
}

input[type=submit]:hover {
  background-color:MistyRose;
  color:black;
}
#section1 {
  height:100px;
  background-color:white;
  }
  div.a {
  height:900px;
  background-color: LightSteelBlue;
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
String email=(String)session.getAttribute("email");
PreparedStatement st=con.prepareStatement("select * from reg where email=?");
st.setString(1,email);
ResultSet rs=st.executeQuery();

if(rs.next())
{
String name=rs.getString(2);
long phoneno= rs.getLong(6);
String address = rs.getString(5);


%>
<center><img src="logoo.jpg" width="100" height="100"></center>
<ul>
<li><a href="test_al.html">Home</a></li>
  <li><a href="booking.jsp">Book Now</a></li>
  <li><a href="contact_al.html">Contact</a></li>
  <li><a href="feedback_al.jsp">Feedback</a></li>
  <li style="float:right"><a  href="profile.jsp" >Profile</a></li> 
</ul>
<div class="sidenav">
  <a href="userinfo.jsp">Update Information</a><br>
  <a href="changepwd.jsp">Change Password</a><br>
  <a href="selectedservice.html">Selected Services</a><br>
  <a href="covid19.html">COVID 19 Safety</a><br>
  <a href="test.html">Logout</a><br>
</div>
<div class="main" id="a">
<h2><center>Want To Update Information ?</center></h2>
<form action="userinfo1.jsp">
<center><p style="color:black">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" value=<%out.println(name);%>></p><br>

<p style="color:black">Phone Number<input type="text" name="phoneno" value=<%out.println(phoneno);%>></p><br>
<p style="color:black">Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address" value=<%out.println(address);%>></p><br>
<br>
</p><br></center>
<center><input type="submit" value="Update"></center>
</form>
</div>
<hr>
<div class="main" id="section1">
<center><img src="logoo.jpg" width="100" height="100"></center>
  <address><b>Email id:</b><a href="thetrimhousesalon@gmail.com">THE TRIM HOUSE</a></address>
  <b>Contact number:</b> +91-9130568553  /  +91-7767091844<br>
  <b>Address:</b> Mayur Colony,Near Balshikshan School, Kothrud Pune 411038 
<hr>
</div> 
<%}
}
catch(Exception e)
{
	out.println(e);
}
%>    
</body>
</html>