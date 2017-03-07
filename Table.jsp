<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="skyblue">
<center><b><h1>Books Details</h1></b><hr color="purple" size="3" width="50%">
<hr color="blue" size="3" width="80%"> </center>

<% 

String fn=request.getParameter("FirstName");
String ln=request.getParameter("LastName");
String em=request.getParameter("email");
String ph=request.getParameter("Phone");
String lo=request.getParameter("location");


try{
	String url="jdbc:sqlserver://localhost:49520;databaseName=Q1;integratedSecurity=true;";
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection c=DriverManager.getConnection(url);
    Statement ps=c.createStatement();
%>
<table border="4" cellpadding="2" cellspacing="2" width="100%">
<td>First_Name</td>
<td>Last_Name</td>
<td>Email</td>
<td>Phone</td>
<td>location</td>
<td></td>
</tr>

	
<%     ResultSet rs=ps.executeQuery("select * from quest1");
while(rs.next()){
	%>
	<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td> 
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<style>
a:link {
  color: purple;
  background-color: transparent;
  text-decoration: none;
}
a:hover, a:active {
       font-style: italic;
 		color:Blue;     
}
</style>
<td><a href="edit.jsp?fn=<%=rs.getString(1)%>&ln=<%=rs.getString(2)%>&em=<%=rs.getString(3)%>&ph=<%=rs.getString(4)%>&lo=<%=rs.getString(5)%>">Edit </a></td>
<td><a href="delete.jsp?fn=<%=rs.getString(1)%>&ln=<%=rs.getString(2)%>&em=<%=rs.getString(3)%>&p=<%=rs.getString(4)%>&lo=<%=rs.getString(5)%>">Delete </a></td>
</tr>
<%
}
%>
</table>

<% 
}catch(Exception e){
	e.printStackTrace();
}


%>
</body>
</html>
