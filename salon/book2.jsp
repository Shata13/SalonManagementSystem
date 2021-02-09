<%@page import="java.sql.*"%>
<%@page language="java" contentType="text/html"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>

<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Calendar"%>
<%
Connection con=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");

String dt=(String)session.getAttribute("date1"); 


 Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(dt);

java.sql.Date date11 = new java.sql.Date(date1.getTime() );

String email=(String)session.getAttribute("email"); 
String name=(String)session.getAttribute("name"); 




 
	String b2=request.getParameter("b");
	session.setAttribute("b3",b2);

 
	 
	PreparedStatement ps4=con.prepareStatement("select * from slots where date_time=? and slot=?");
	ps4.setDate(1,date11);
	ps4.setString(2,b2);
	ResultSet rs2=ps4.executeQuery();
	
	

	if(rs2.next())
	{
				 %>
			 <script>
			 alert("slot already booked");
			 window.location.href='booking.jsp';
			 </script>
			 <%
	}
	else
	{
	String result;
	PreparedStatement ps5=con.prepareStatement("insert into slots (date_time,slot,email,name) values(?,?,?,?)");
	ps5.setDate(1,date11);
	ps5.setString(2,b2);
	ps5.setString(3,email);
	ps5.setString(4,name);
	int r=ps5.executeUpdate();
	if(r>0)
	{final String subject = "Slot Booked";
    final String messg = "Hello "+name+"\nslot booked for date "+dt+" and time is "+b2;
	String to=email;
    // Sender's email ID and password needs to be mentioned
    final String from = "trimshop9@gmail.com";
    final String pass = "Chelsea@123";
 
	
    // Defining the gmail host
    String host = "smtp.gmail.com";
 
    // Creating Properties object
    Properties props = new Properties();
 
    // Defining properties
    props.put("mail.smtp.host", host);
    props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.user", from);
    props.put("mail.password", pass);
    props.put("mail.port", "465");
 
    // Authorized the Session object.
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, pass);
        }
    });
 
    try {
        // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailSession);
        // Set From: header field of the header.
        message.setFrom(new InternetAddress(from));
        // Set To: header field of the header.
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        // Set Subject: header field
        message.setSubject(subject);
        // Now set the actual message
        message.setContent(messg,"text/html");
        // Send message
        Transport.send(message);
        result = "mail sent successfully from W3Adda.com....";
		 %>
			 <script>
			 alert("slot booked please check ur email");
			 window.location.href='booking.jsp';
			 </script>
			 <%
	
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send mail....";
    }
	}
	}

}
catch(Exception e)
{
	out.println(e.getMessage());
	
}
%>