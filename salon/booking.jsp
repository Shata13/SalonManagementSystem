<!DOCTYPE html>

<html>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<% Date dt=new Date();
DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
Calendar cal = Calendar.getInstance();
Date today = cal.getTime();
cal.add(Calendar.YEAR, 1); // to get previous year add -1
Date nextYear = cal.getTime();%>
<head>
<title>The Trim House: Booking page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--<link rel="stylesheet" href="booking.css">-->
<style>
body, html{
  height: 100%;
  margin:0;
  padding:0;
}
.container{
	font-family: Arial;
	color: black;
}

html {
  scroll-behavior: smooth;
}
#section1 {
  height: 615px;
  background-color:black;
  background-image:url("spa26.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
}

#section2 {
  height:600px;
  background-color:black;
  background-image:url("haircut6.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
 
}
#section3 {
  height:650px;
  background-color:black;
  background-image:url("massage10.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
  }
#section4 {
  height:600px;
  background-color:black;
  background-image:url("massage9.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
  }
  #section5 {
  height:600px;
  background-color:black;
  background-image:url("spa23.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
  }
  #section6 {
  height:620px;
  background-color:black;
  background-image:url("scrub9.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
  }
 #section7 {
  height:100px;
  background-color:white;
  }
  .button {
  background-color: black;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

#section8 {
  height:100px;
  background-color:white;
}

* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color:;
  padding: 1%;
  text-align: center;
  font-size: 20px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 15%;
  height: 300px; /* only for demonstration, should be removed */
  background: black;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
  background-color:black;
}

article {
  float: left;
  padding: 20px;
  width: 85%;
  background-color:gold;
  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

<!--/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}-->

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
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
  background-color:#FFCA33;
  color:black;
}
div.a {
  background-color: transparent;
  width: 750px;
  border: 3px solid Plum;
  padding: 10px;
  margin: 20px;
}
#sec{
  height: 600px;
  background-color:black;
  background-image:url("white.png");
  width:55%;
  margin:auto;
  background-size: 90% 90%;
}
</style>

</head>

<center><img src="logoo.jpg" width="100" height="100"></center>

<ul>
<li><a href="test_al.html">Home</a></li>
  <li><a href="booking.jsp">Book Now</a></li>
  <li><a href="contact_al.html">Contact</a></li>
  <li><a href="feedback_al.jsp">Feedback</a></li>
  <li><a href="services_al.html">Services</a></li>
  <li style="float:right"><a  href="test.html" >Logout</a></li>
  <li style="float:right"><a  href="profile.jsp" >My profile</a></li>
</ul>
  
 <div class="main" id="section1">
 <hr>
 <div class="main" id="sec">
  <hr>
  <center><h1 style="color:SlateBlue">BOOK  YOUR  APPOINTMENT  HERE !</h1></center><br>
  
  <form action="book11.jsp">
  <h2><center><b>Are you booking for a :</b></center></h2>
  <center><input type="radio" id="male" name="gender" value="male">
  <label for="male" ><b>Male</b></label>
  <input type="radio" id="female" name="gender" value="female">
  <label for="female" ><b>Female</b></label></center><br><br>
  
  <center><label for="booking"><b><h2>Select Date:</h2></b></label>
  <input type="date" id="booking" name="booking" min=<%out.println(df.format(dt));%> max=<%out.println(df.format(nextYear));%>>
  <br><br><br>
  <center><div class="a">
  <center><h2 style="background-color:Thistle">Select Your Service From Our Menu</h2></center> 
  
  <center><input type="radio" id="haircut" name="service" value="haircut">
  <label for="haircut" ><b>HAIRCUT</b></label><br>
  
  <input type="radio" id="massage" name="service" value="massage">
  <label for="massage" ><b>MASSAGE</b></label><br>
  
  <input type="radio" id="facial" name="service" value="facial">
  <label for="facial" ><b>FACIAL</b></label><br>
  
  <input type="radio" id="spa" name="service" value="spa">
  <label for="spa" ><b>SPA</b></label><br>
  
  <input type="radio" id="scrub" name="service" value="scrub">
  <label for="scrub"><b>SCRUB</b></label><br></center>
  </div></center>
  <input type="submit"></center>
  </div>
  </div>
  <hr>
  <div class="main" id="section2"><br>
<h2>HAIRCUT</h2>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<h2 style="color:MistyRose"><b>We provide different types of haircuts you want.<br>We also have stylists 
for hair dressing,hair coloring and<br> other hair services. For a hair service it takes 30-45 minutes <br>depending on 
which hair service you choose.</h2></b>
</p>
</div>

<hr>

<div class="main" id="section3">
<h2>MASSAGE</h2>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<h2 style="color:black"><b>We have Thai Massage,Full body massage,head massage,<br>pain relief massage, massage 
without oil in our menu.<br>We also use various sented,natural oils for massage.<br>Depending upon customer's 
choice maximum time for massage is 45-60 minutes.</h2>
</b></p>
</div> 

<hr> 

<div class="main" id="section4">
<h2>FACIAL</h2>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<h2 style="color:Orchid "><b>We use natural ingredients based facial kits<br>We have Skin smoothning, Skin brightning
,<br> Skin glowing facials in our menu.<br>Depending upon customer's 
choice maximum time for<br> facial is 45-60 minutes.</h2>
</div>

<hr>

<div class="main" id="section5">
<h2>SPA</h2>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<h2 style="color:Azure"><b><br>We have pain relief massage and spa in our menu.<br>We use steam,and natural gel like aloe vera for spa.
<br>Depending upon customer's 
choice maximum time<br> for spa is 45-60 minutes.</h2>
</div>

<hr>

<div class="main" id="section6">
<h2>SCRUB</h2>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<h2 style="color:DimGray "><b>Our Coffee scrub is our speciality.<br>With coffee we have other natural ingredients 
for scrub.<br>Avacoda,fruit,mixture of fruits and almonds is also there in our menu.<br>Depending upon customer's 
choice maximum time<br> for body scrub is 45-60 minutes.</h2>
</div>

<hr>
</form>

<div class="main" id="section8">
<center><img src="logoo.jpg" width="100" height="100"></center>
  <address><b>Email id:</b><a href="thetrimhousesalon@gmail.com">THE TRIM HOUSE</a></address>
  <b>Contact number:</b> +91-9130568553  /  +91-7767091844<br>
  <b>Address:</b> Mayur Colony,Near Balshikshan School, Kothrud Pune 411038 
<hr>
</div>
</html>