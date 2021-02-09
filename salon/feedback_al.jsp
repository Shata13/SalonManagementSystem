<html>
<body>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="mystyle1.css">
<title>The Trim House : Login page</title>
<style>
html {
  scroll-behavior: smooth;
}
#section1 {
  height:700px;
  background-color:black;
  background-image:url("spa6.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
 
}
#section2 {
  height:100px;
  background-color:white;
  }
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 25%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
  border-bottom: 2px solid CornflowerBlue;
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

.container {
  border-radius: 5px;
  background-color:Lavender;
  padding: 20px;
}
#section3 {
  height:100px;
  background-color:white;
}
.footer {
  position: relative;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: black;
  color: white;
  text-align: center;
}

</style>
<ul>
<li><a href="test_al.html">Home</a></li>
  <li><a href="booking.jsp">Book Now</a></li>
  <li><a href="contact_al.html">Contact</a></li>
  <li><a href="feedback_al.jsp">Feedback</a></li>
  <li><a href="services_al.html">Services</a></li>
  <li style="float:right"><a  href="test.html" >Logout</a></li>
   <li style="float:right"><a  href="profile.jsp" >My profile</a></li>
  
</ul>
<h2>What our Customers says about us..</h2>
</head>
<%@ page import = "java.sql.*,java.util.*" %>
 <%Connection con=null;
		try{
			
		
		 Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
		 PreparedStatement st=con.prepareStatement("select * from ratings");
		 ResultSet rs=st.executeQuery();
		 while(rs.next())
		 {
			 %>
			 <p><%out.println(rs.getString(2)+"\n");%><br><%
				out.println(rs.getString(3));
					%></p>
					<%
		 }
            
		}
		catch(Exception e)
		{
			out.println(e);
		}
%>



<!DOCTYPE html>

<hr>
<h2><center>Let Us Know Your Experience</center></h2>
<form action="feedback1_al.jsp">
Enter your name<br>
<input type="text" name="name1"><br>
Please enter your valuable review <br>
<textarea id="review" name="review" rows="4" cols="50">
</textarea><br>
<input type="submit">
</form>
<div class="main" id="section3">
<center><img src="logoo.jpg" width="100" height="100"></center>
  <address><b>Email id:</b><a href="thetrimhousesalon@gmail.com">THE TRIM HOUSE</a></address>
  <b>Contact number:</b> +91-9130568553  /  +91-7767091844<br>
  <b>Address:</b> Mayur Colony,Near Balshikshan School, Kothrud Pune 411038 
<hr>
</div>  
</html>
