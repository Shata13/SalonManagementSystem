<%@page language="java" contentType="text/html"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.*"%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=null;
int bid=Integer.parseInt(request.getParameter("id"));
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
PreparedStatement ps1=con.prepareStatement("select * from slots where bid=?");
ps1.setInt(1,bid);
ResultSet rs1=ps1.executeQuery();
PreparedStatement ps=con.prepareStatement("Delete from slots where bid=?");
ps.setInt(1,bid);
int r=ps.executeUpdate();
if(r>0)
	
{
   
   if(rs1.next())
   {
	
	String to=rs1.getString(4);
	session.setAttribute("username",to);
    final String subject = "Delete appointment";
    final String messg = "Your Appointment has been cancelled.";
 
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
       String result = "mail sent successfully....";
    } catch (MessagingException mex) {
        mex.printStackTrace();
        String result = "Error: unable to send mail....";
   }}%>

	   <script>
			 alert("deleted sucessfully");
			 window.location.href='admin2.jsp';
			 </script>
<%
			 }

}

catch(Exception e)
{
	out.println(e);
}
%>