<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- <%@ include file="include/common.jsp" %> --%>
<body bgcolor="black">
<%
String First_Name=request.getParameter("First_Name");
String Last_Name= request.getParameter("Last_Name");
String Email=request.getParameter("Email");
String Phone_No=request.getParameter("Phone_No");
String Location=request.getParameter("Location");

Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String url="jdbc:sqlserver://localhost:49520;databaseName=Q1;integratedSecurity=true";
Connection c2 = DriverManager.getConnection(url);
PreparedStatement ps2 = c2.prepareStatement("Update quest1 set First_Name=?,Last_name=?,Email=?,Phone_No=?,Location=? where First_Name="+First_Name);

ps2.setString(1, First_Name);
ps2.setString(2, Last_Name);
ps2.setString(3, Email);
ps2.setString(4, Phone_No);
ps2.setString(5, Location);
ps2.executeUpdate();

c2.close();
%>
<div>

<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<tr>
    <td align='center'><font face="Lucida Calligraphy" color="white" size="4">First_Name:- </font></td>
    <td><input type='text' name='fname' placeholder="FirstName"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'><font face="Lucida Calligraphy" color="white" size="4">Last_Name:- </font></td>
    <td><input type='text' name='lname' placeholder="LastName"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'><font face="Lucida Calligraphy" color="white" size="4">Email:-  </font></td>
    <td><input type='text' name='email' placeholder="Email"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'><font face="Lucida Calligraphy" color="white" size="4">Phone_No:- </font></td>
    <td><input type='text' name='phone' placeholder="Phone_no"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'><font face="Lucida Calligraphy" color="white" size="4">Locations:- </font></td>
    <td><input type='text' name='location' placeholder="location"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<br>
<tr>\
<td align="center"><a href="Table.jsp"><input type='submit' value="Update"></a></td>
<td align="s"><input type="reset" name="Clear"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
</table>
</div>
</body>