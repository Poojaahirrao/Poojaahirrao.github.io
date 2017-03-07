<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
<body>
<%
String First_Name=request.getParameter("First_Name");
String Last_Name= request.getParameter("Last_Name");
String Email=request.getParameter("Email");
String Phone_No=request.getParameter("Phone_No");
int ph = Integer.parseInt(Phone_No);
String Location=request.getParameter("Location");
try{
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	String url="jdbc:sqlserver://localhost:49520;databaseName=Q1;integratedSecurity=true";
	Connection c = DriverManager.getConnection(url);
	Statement s = c.createStatement();
	ResultSet rs = s.executeQuery("DELETE * FROM quest1 WHERE Phone_No ="+ph);
	
}
catch(Exception e )
{
	e.printStackTrace();
}
%>
</body>
</html>