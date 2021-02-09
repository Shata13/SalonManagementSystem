<html>
<body>
<%@ page import = "java.sql.*,java.util.*" %>
 <%Connection con=null;
String name=request.getParameter("name1");
String review=request.getParameter("review");
try
{
	Class.forName("com.mysql.jdbc.Driver");
		  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
		 PreparedStatement st=con.prepareStatement("insert into ratings(name,review) values(?,?)");
		 st.setString(1,name);
		 st.setString(2,review);
		 int r=st.executeUpdate();
		 if(r>0)
		 {
			 %>
			 <script>
			 alert("Review added");
			 window.location.href='feedback.jsp'
			 </script>
			 <%
		 }
}
catch(Exception e)
{
	out.println(e);
}
%>