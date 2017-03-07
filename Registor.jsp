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
<body>
<%
		String fn = request.getParameter("fname");
		String ln = request.getParameter("lname");
		String em = request.getParameter("email");
		String ph = request.getParameter("phone");
		String lo = request.getParameter("location");
		
		try
		   {
			
		       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		       out.print("hi");
		       String url="jdbc:sqlserver://localhost:49520;databaseName=Q1;integratedSecurity=true";
		       Connection c1 = DriverManager.getConnection(url);
		       out.print("how are you");
		       PreparedStatement ps = c1.prepareStatement("insert into quest1 values(?,?,?,?,?)");
		       ps.setString(1, fn);
		       ps.setString(2, ln);
		       ps.setString(3, em);
		       ps.setString(4, ph);
		       ps.setString(5, lo);
		       int x = ps.executeUpdate();
		  	   out.print("Registation Successfully");
		   }
		catch (Exception e) 
		{
			e.printStackTrace();
		}

%>

</body>
</html>