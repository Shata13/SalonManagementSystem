<html>
<head> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="mystyle1.css">
<title>The Trim House : Login page</title>
<style>
html {
  scroll-behavior: smooth;
}
#section1 {
  height:600px;
  background-color:gold;
  background-image:url("massage5.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
 
}
#section2 {
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
</head>
<body>

<!--<ul>
	<li><img src="logoo.jpg" alt="My Image" height="60px"></li>
  <li><a href="test.html">Home</a></li>
  <li><a href="news.asp">Book Now</a></li>
  <li><a href="contact.asp">Contact</a></li>
  <li><a href="about.asp">Feedback</a></li>
  <li style="float:right"><a  href="login1.html" >LogIn</a></li>
  <li style="float:right"><a  href="profile.php" >Profile</a></li>
  </ul>-->
<center><img src="logoo.jpg" width="100" height="100"></center>
<ul>
<li><a href="test.html">Home</a></li>
  <li><a href="booking.html">Book Now</a></li>
  <li><a href="contact.html">Contact</a></li>
  <li><a href="feedback.html">Feedback</a></li>
  <li style="float:right"><a  href="login1.html" >Login</a></li>
  <li style="float:right"><a  href="signup.html" >Sign Up</a></li>
</ul><hr>
  <!-- <hr color="#FFCA33" size="30">
  <hr color="black" size="30">-->
 <div class="main" id="section1">
<h1><center> Welcome to The Trim House!!</center><br> Login below to continue.  </h1>
<br><br>
<form action="val2.jsp">
<p style="color:white">Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username"></p><br>
<p style="color:white">Password<input type="password" name="password"></p><br>

<button type="submit" class="button">Login</button><br>
<button type="button" class="cancelbtn">Cancel</button><br>
<span class="psw">Forgot <a href="forgetpwd.html">password?</a></span>
</div>
</form>
<div class="main" id="section2">
<center><img src="logoo.jpg" width="100" height="100"></center>
  <address><b>Email id:</b><a href="thetrimhousesalon@gmail.com">THE TRIM HOUSE</a></address>
  <b>Contact number:</b> +91-9130568553  /  +91-7767091844<br>
  <b>Address:</b> Mayur Colony,Near Balshikshan School, Kothrud Pune 411038 
<hr>
</div>

<!--<div class="footer">
  <p class="a">The Trim House</p>
</div>-->
</body>
</html>