<%@page language="java" contentType="text/html"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
	//Creating a result for getting status that messsage is delivered or not!
    String result;
    // Get recipient's email-ID, message & subject-line from index.html page
   String to = request.getParameter("username");
   PreparedStatement ps=con.prepareStatement("select * from reg where email=?");
   ps.setString(1,to);
   ResultSet rs=ps.executeQuery();
   if(rs.next())
   {
	session.setAttribute("username",to);
    final String subject = "Change Password";
    final String messg = "<a href='http://localhost:8080/salon/forgot.html'>Please click here to reset your password</a>";
 
    // Sender's email ID and password needs	 to be mentioned
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
        result = "mail sent successfully....";
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send mail....";
    }%>
	<h2><font color="blue">Please check your Email. <br>
	Click on the link in the mail to reset your password and then login again.<br> Thankyou!!</font></h2>
<b><font color="green"><% out.println(result);%></b>
   <%}
   else
   {
	   %>
	<script>
			 alert("please enter registerd email id");
			 window.location.href='forgetpwd.html';
			 </script>
			 <%
   }
%>

</body></html>