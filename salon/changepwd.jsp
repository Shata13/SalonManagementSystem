<html>
<head> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="mystyle1.css">
<script type= "text/javascript">
function val()
{var pa,cp;
pa=document.form1.password.value;
cp=document.form1.password1.value;
if(pa.length<4)
{
	alert("password too short");
	return false;
}
var l=pa.localeCompare(cp);

if(l!==0)
{
	alert("password not equal");
	return false;
}
}
function y()
{
var x = document.getElementById("i");
var x1 = document.getElementById("i1");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
  if (x1.type === "password") {
    x1.type = "text";
  } else {
    x1.type = "password";
  }
}
</script>
<style>
#section1 {
  height:500px;
  background-color:gold;
  background-image:url("massage5.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
 
}
#section2 {
  height:100px;
  background-color:white;
  <!--background-image:url("haircut.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;-->
 
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

<center><img src="logoo.jpg" width="100" height="100"></center>
<ul>
<li><a href="test_al.html">Home</a></li>
  <li><a href="booking.jsp">Book Now</a></li>
  <li><a href="contact_al.html">Contact</a></li>
  <li><a href="feedback.jsp">Feedback</a></li>
  <li><a href="services_al.html">Services</a></li>
  <li style="float:right"><a  href="test.html" >Logout</a></li>
  <li style="float:right"><a  href="profile.jsp" >My profile</a></li>
</ul><hr>
 <div class="main" id="section1">
<h1> <center>Welcome to The Trim House!!</center><br> Change your password here </h1>
<br><br>
<form name="form1" action="changepwd1.jsp" onsubmit="return(val());">
<p style="color:white">Enter new Password<input type="password" name="password" id="i"></p><br>
<p style="color:white">Enter password again<input type="password" name="password1" id="i1"></p><br>
<p style="color:white"> Show password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"  name="p" style="margin-bottom:15px" onclick="y()"> 

<button type="submit" class="button">Change Password</button><br>
</form><br>
<br>
<br>
</div>
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