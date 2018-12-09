<!DOCTYPE jsp:forward PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String uname=request.getParameter("id");
System.out.println(uname);
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/emeeting";
String username="root";
String password="";
Connection conn=DriverManager.getConnection(url, username, password);

String DELETE_SQL = "DELETE FROM user_master_t where uname=?";
PreparedStatement statement= conn.prepareStatement(DELETE_SQL);
statement = conn.prepareStatement(DELETE_SQL);
statement.setString(1, uname);
statement.executeUpdate();
statement.close();
conn.close();
}


catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<jsp:forward page = "index.jsp" />

}
else
{
}
<jsp:forward page = "index.jsp" />
</html>
