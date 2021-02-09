
<html>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Calendar"%>


<head>
<style>

input[type=text], input[type=password] {
  width: 45%;
  font-family:verdana;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background:  #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ffff33;
  outline: none;
}

h1 {text-align:center;
font-family:verdana;
font-size:50px;
letter-spacing: 10px;
line-height: 1.7;
color: #000033;
}

h3 {text-align:center;
line-height: 0.2;
font-size:25px;
font-family:verdana;
letter-spacing: 4px;
color: #000033; 
}
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
  
}
p{
color: #000033;
font-family:verdana;
font-size:20px;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #000000;
}

li {
  float: left;
  font-family:verdana;
}

li a {
  display: block;
  color:#ffffff ;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color:#ffff00;
  color:black;
}

.img1{
	float:right;
	
}

figure {
position: absolute;
  top: 100px;
  right: 0px;
  width:45%;

}
img.scaled {
  width: 100%;
}	
</style>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<ul>
<li style="float:right"><a  href="admin.jsp" >LOGOUT</a></li>
<li style="float:right"><a  href="admin2.jsp" >ALL RECORDS</a></li>
</ul>
<div class="container">
<div class="col-lg-12">
<br><br>

	
<%
try
{

Date dt=new Date();


Class.forName("com.mysql.jdbc.Driver");
Connection con=null;
java.sql.Date d2= new java.sql.Date( dt.getTime() );

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
PreparedStatement ps=con.prepareStatement("select * from slots where date_time=?");
ps.setDate(1,d2);
ResultSet rs=ps.executeQuery();
out.println(d2);


if(!rs.next())
{%>
 <h1 class='text-center' style='color:blue' >NO Bookings</h1>
<%}
else
{%>
<h1 class="text-center" style="color:blue" >BOOKING RECORDS</h1>
<table class="table table-striped table-hover table-bordered">
<tr>
<th>Booking id</th>
<th>Name</th>
<th>Email</th>
<th>Slot</th>
<th>Date</th>
<th>Delete</th>
</tr>	
<%
while(rs.next())
{
	
 %>
<tr>
<td><%out.println(rs.getInt(1));%></td>
<td><%out.println(rs.getDate(2));%></td>
<td><%out.println(rs.getString(3));%></td>
<td><%out.println(rs.getString(4));%></td>
<td><%out.println(rs.getString(5));%></td>
<td><button class="btn-danger btn"><a href="delete.jsp?id=<%out.println(rs.getInt(1));%>">Delete</a></button></td>
</tr>
<%
}
}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>