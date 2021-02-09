<%@page import="java.sql.*"%>

<%Connection con=null;
try
{
String name,address;
Long phoneno;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
String email=(String)session.getAttribute("email");
PreparedStatement st=con.prepareStatement("select * from reg where email=?");
st.setString(1,email);
ResultSet rs=st.executeQuery();
out.println(email);

if(rs.next())
{
 name=rs.getString(2);
phoneno= rs.getLong(6);
 address = rs.getString(5);
 out.println(name);
out.println(phoneno);
}

}

catch(Exception e)
{
	out.println(e);
}
%>
