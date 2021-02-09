<html>
<body>
<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Calendar"%>

<head>
<style>
.democlass {
   margin:4px;
    background-color:#ff0000;
    border-radius:10px;
    border:1px solid #D0D0D0;
    overflow:auto;
    float:left;
}
div label input {
   margin-right:100px;
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
body {
    font-family:sans-serif;
}

#ck-button {
    margin:4px;
    background-color:#EFEFEF;
    border-radius:10px;
    border:1px solid #D0D0D0;
    overflow:auto;
    float:left;
}
#ck-button label {
    float:left;
    width:7.0em;
}

#ck-button label span {
    text-align:center;
    padding:3px 0px;
    display:block;
    border-radius:4px;
}

#ck-button label input {
    position:absolute;
    top:-20px;
}

#ck-button input:hover + span {
    background-color:#efE0E0;
}

#ck-button input:checked + span {
    background-color:#00ff00;;
    color:#fff;
}

#ck-button input:checked:hover + span {
    background-color:#c11;
    color:#fff;
}
button {
  background-color:#4CAF50 ;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 35%;
  opacity: 0.9;
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
footer{
      
      padding: 5px 20px;
      background: black;
      color: white;
}
p.a{color: white;
font-family:verdana;
font-size:20px;
}
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
</style>
<script type="text/javascript">
window.onload=function()
{
	


<%
Connection con=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");


DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
String dt=request.getParameter("booking");
  Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(dt);//selected date
int year=date1.getYear()+1900;
int da=date1.getDate();
int month=date1.getMonth()+1;
String dt1=String.valueOf(year)+"-"+String.valueOf(month)+"-"+String.valueOf(da+1);
  Date date2=new SimpleDateFormat("yyyy-MM-dd").parse(dt1);//next date
String dt2=String.valueOf(year)+"-"+String.valueOf(month)+"-"+String.valueOf(da+2);
  Date date3=new SimpleDateFormat("yyyy-MM-dd").parse(dt2);// date after 2 days
  String dt3=String.valueOf(year)+"-"+String.valueOf(month)+"-"+String.valueOf(da+3);
    Date date4=new SimpleDateFormat("yyyy-MM-dd").parse(dt3);//date after 3 days
session.setAttribute("date1",date1);
session.setAttribute("date2",date2);
session.setAttribute("date3",date3);
session.setAttribute("date4",date4);
java.sql.Date date1 = new java.sql.Date(date1.getTime() );

  
 SimpleDateFormat sf = new SimpleDateFormat("EEEE");//to get day name
PreparedStatement ps=con.prepareStatement("select * from slots where date_time=?");
ps.setDate(1,df.format(date1));
ResultSet rs=ps.executeQuery();
ps.setDate(1,date2);
ResultSet rs1=ps.executeQuery();
ps.setDate(1,date3);
ResultSet rs2=ps.executeQuery();
ps.setDate(1,date4);
ResultSet rs3=ps.executeQuery();



while(rs.next())
{   %>
var i=0;
	var f=document.getElementById("c").children;
	console.log(f);
	for(i=0;i<17;i++)
{
var d=f[i].children;

var e=d[0].children;
console.log(e);
var g=e[1].value;
console.log(e[1]);
var o=e[1].getAttribute("value");
console.log(o);
console.log("<%out.println(rs.getString(3);%>");
if(o==<%out.println(rs.getString(3);%>")
{
e[1].innerText="Booked";
e[1].style.backgroundColor="red";}}

	//document.getElementById("d").innerHtml=f[2];
	<%
}
	
while(rs1.next())
{   %>
var i=0;
	var f=document.getElementById("c1").children;
	console.log(f);
	for(i=0;i<17;i++)
{
var d=f[i].children;

var e=d[0].children;
console.log(e);
var g=e[1].value;
console.log(e[1]);
var o=e[1].getAttribute("value");
console.log(o);
console.log("<%out.println(rs1.getString(3);%>");
if(o=="<%out.println(rs1.getString(3);%>"){
e[1].innerText="Booked";
e[1].style.backgroundColor="red";}
}
	//document.getElementById("d").innerHtml=f[2];
	<%
}
	

while(rs2.next())
{   %>
var i=0;
	var f=document.getElementById("c2").children;
	console.log(f);
	for(i=0;i<17;i++)
{
var d=f[i].children;

var e=d[0].children;
console.log(e);
var g=e[1].value;
console.log(e[1]);
var o=e[1].getAttribute("value");
console.log(o);
console.log("<%out.println(rs2.getString(3);%>");
if(o=="<%out.println(rs2.getString(3);%>"){
e[1].innerText="Booked";
e[1].style.backgroundColor="red";}
}
	//document.getElementById("d").innerHtml=f[2];
	<%
}
	

while(rs3.next())
{   %>	
var i=0;
	var f=document.getElementById("c3").children;
	console.log(f);
	for(i=0;i<17;i++)
{
var d=f[i].children;

var e=d[0].children;
console.log(e);
var g=e[1].value;
console.log(e[1]);
var o=e[1].getAttribute("value");
console.log(o);
console.log("<%out.println(rs3.getString(3);%>");
if(o=="<%out.println(rs3.getString(3);%>"){
e[1].innerText="Booked";
e[1].style.backgroundColor="red";
}
}
	//document.getElementById("d").innerHtml=f[2];
	<%
}
%>

	}
function callme()
{
console.log("hello");	
}
function callme1()
{

console.log("hello1");	
}
function callme2()
{
console.log("hello3");
}
function callme3()
{
console.log("hello4");
}


</script>

</head>

<body>


<center><img src="logoo.jpg" width="100" height="100"></center>
<ul>
<li><a href="test.html">Home</a></li>
  <li><a href="booking.html">Book Now</a></li>
  <li><a href="contact.html">Contact</a></li>
  <li><a href="feedback.html">Feedback</a></li>
  <li style="float:right"><a  href="login1.html" >Login</a></li>
  <li style="float:right"><a  href="signup.html" >Sign Up</a></li>
</ul><hr>

<br> <br>

<form action="book2.php" method="post">
<h1 style="color:red">Slots For:</h1>
<h3 style="color:blue"><b><%out.println(df.format(date1)); out.println(sf.format(date1));%></b></h3>
<div id="c">
<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="6-7" onclick="callme()"><span value="6-7">6am-7am</span>
   </label>
</div>			
	<div id="ck-button" name="s">
   <label>
      <input type="checkbox" name="b[]" hidden value="7-8" onclick="callme()"><span  value="7-8">7am-8am</span>
   </label>
</div>
	
	<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="8-9" onclick="callme()"><span>8am-9am</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="9-10" onclick="callme()"><span value="9-10">9am-10am</span>
   </label>
</div>
	
<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="10-11" onclick="callme()"><span value="10-11">10am-11am</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="11-12" onclick="callme()"><span value="11-12">11am-12pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="12-13" onclick="callme()"><span value="12-13">12pm-1pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="13-14" onclick="callme()"><span value="13-14">1pm-2pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="14-15" onclick="callme()"><span value="14-15">2pm-3pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="15-16" onclick="callme()"><span value="15-16">3pm-4pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="16-17" onclick="callme()"><span value="16-17">4pm-5pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="17-18" onclick="callme()"><span value="17-18">5pm-6pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="18-19" onclick="callme()"><span value="18-19">6pm-7pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="19-20" onclick="callme()"><span value="19-20">7pm-8pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="20-21" onclick="callme()"><span value="20-21">8pm-9pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="21-22" onclick="callme()"><span value="21-22">9pm-10pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="22-23" onclick="callme()"><span value="22-23">10pm-11pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="b[]" hidden value="23-24" onclick="callme()"><span value="23-24">11pm-12am</span>
   </label>
</div>
</div>
<br><br><br><br>
<h3 style="color:blue"><b><%out.println(df.format(date2)); out.println(sf.format(date2));%></b></h3>
<div id="c1">
<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="6-7" onclick="callme1()" ><span value="6-7">6am-7am</span>
   </label>
</div>

	<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="7-8" onclick="callme1()"><span value="7-8">7am-8am</span>
   </label>
</div>
	
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="8-9" onclick="callme1()"><span value="8-9">8am-9am</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="9-10" onclick="callme1()"><span value="9-10">9am-10am</span>
   </label>
</div>
	
<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="10-11" onclick="callme1()"><span value="10-11">10am-11am</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="11-12" onclick="callme1()"><span value="11-12">11am-12pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="12-13" onclick="callme1()"><span value="12-13">12pm-1pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="13-14" onclick="callme1()"><span value="13-14">1pm-2pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="14-15" onclick="callme1()"><span value="14-15">2pm-3pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="15-16" onclick="callme1()"><span value="15-16">3pm-4pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="16-17" onclick="callme1()"><span value="16-17">4pm-5pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="17-18" onclick="callme1()"><span value="17-18">5pm-6pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="18-19" onclick="callme1()"><span value="18-19">6pm-7pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="19-20" onclick="callme1()"><span value="19-20">7pm-8pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="20-21" onclick="callme1()"><span value="20-21">8pm-9pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="21-22" onclick="callme1()"><span value="21-22">9pm-10pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="22-23" onclick="callme1()"><span value="22-23">10pm-11pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c[]" hidden value="23-24" onclick="callme1()"><span value="23-24">11pm-12am</span>
   </label>
</div>
</div>

<br><br><br><br>
<h3 style="color:blue"><b><%out.println(df.format(date3)); out.println(sf.format(date3));%></b></h3>
<div id="c2">

<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="6-7" onclick="callme2()"><span value="6-7">6am-7am</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="7-8" onclick="callme2()"><span value="7-8">7am-8am</span>
   </label>
</div>
	
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="8-9" onclick="callme2()"><span>8am-9am</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="9-10" onclick="callme2()"><span value="9-10">9am-10am</span>
   </label>
</div>
	
<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="10-11" onclick="callme2()"><span value="10-11">10am-11am</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="11-12" onclick="callme2()"><span value="11-12">11am-12pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="12-13" onclick="callme2()"><span value="12-13">12pm-1pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="13-14" onclick="callme2()"><span value="13-14">1pm-2pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="14-15" onclick="callme2()"><span value="14-15">2pm-3pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="15-16" onclick="callme2()"><span value="15-16">3pm-4pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="16-17" onclick="callme2()"><span value="16-17">4pm-5pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="17-18" onclick="callme2()"><span value="17-18">5pm-6pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="18-19" onclick="callme2()"><span value="18-19">6pm-7pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="19-20" onclick="callme2()"><span value="19-20">7pm-8pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="20-21" onclick="callme2()"><span value="20-21">8pm-9pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="21-22" onclick="callme2()"><span value="21-22">9pm-10pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="22-23" onclick="callme2()"><span value="22-23">10pm-11pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c1[]" hidden value="23-24"onclick="callme2()"><span value="23-24">11pm-12am</span>
   </label>
</div>
</div>
<br><br><br><br>
<h3 style="color:blue"><b><%out.println(df.format(date4)); out.println(sf.format(date4));%></b></h3>
<div id="c3">
<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="6-7" onclick="callme3()"><span value="6-7">6am-7am</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="7-8" onclick="callme3()"><span value="7-8">7am-8am</span>
   </label>
</div>
	
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="8-9" onclick="callme3()"><span value="8-9">8am-9am</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="9-10" onclick="callme3()"><span value="9-10">9am-10am</span>
   </label>
</div>
	
<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="10-11" onclick="callme3()"><span value="10-11">10am-11am</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="11-12" onclick="callme3()" value="11-12"><span>11am-12pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="12-13" onclick="callme3()"><span value="12-13">12pm-1pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="13-14"onclick="callme3()"><span value="13-14">1pm-2pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="14-15" onclick="callme3()"><span value="14-15">2pm-3pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="15-16" onclick="callme3()"><span value="15-16">3pm-4pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="16-17" onclick="callme3()"><span value="16-17">4pm-5pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="17-18" onclick="callme3()"><span value="17-18">5pm-6pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="18-19" onclick="callme3()"><span value="18-19">6pm-7pm</span>
   </label>
</div>
<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="19-20" onclick="callme3()"><span value="19-20">7pm-8pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="20-21" onclick="callme3()"><span value="20-21">8pm-9pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="21-22" onclick="callme3()"><span value="21-22">9pm-10pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="22-23" onclick="callme3()"><span value="22-23">10pm-11pm</span>
   </label>
</div>
	<div id="ck-button">
   <label>
      <input type="checkbox" name="c2[]" hidden value="23-24" onclick="callme3()"><span value="23-24">11pm-12am</span>
   </label>
</div>
</div>
<br><br><br><br>
<center><button class="button">BOOK</button></center>
</form>

<div class="main" id="section8">
<center><img src="logoo.jpg" width="100" height="100"></center>
  <address><b>Email id:</b><a href="thetrimhousesalon@gmail.com">THE TRIM HOUSE</a></address>
  <b>Contact number:</b> +91-9130568553  /  +91-7767091844<br>
  <b>Address:</b> Mayur Colony,Near Balshikshan School, Kothrud Pune 411038 
<hr>
</div>
<%
}
catch(Exception e)
{
	out.println(e);
}
%>
</footer>
</body>
</html>
</html>
</body>