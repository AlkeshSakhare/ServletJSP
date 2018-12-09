<html>
<title>Emeeting</title>
 <body>

<h2>Alkesh Emeeting</h2>
<script type="text/javascript" src="js/Adduser.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap-4.0.0-dist/css/master.css">
<input type="button" onclick="location.href='http://localhost:8080/Emeeting/AddUser.jsp';" value="Add User" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
   <form method="post">
<div class="container-fluid">
<table class="table table-bordered table-sm">
<thead class="thead-dark">
<tr>
<th>Sr.No.</th>
<th>User Name</th>
<th>Email</th>
<th>Mobile</th>
<th>City</th>
<th>Created Date</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/emeeting";
String username="root";
String password="";
String query="select * from user_master_t order by createdDate ";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
%>
<% int i = 1; %> 
<%while(rs.next())
{

%>
<c:forEach>
<tbody>
 <tr>
<td><%= i %> <% i++; %></td>
<td><%=rs.getString("uname") %></td>
<td><%=rs.getString("uemail") %></td>
<td><%=rs.getString("umobile") %></td>
<td><%=rs.getString("ucity") %></td>
<td><%=rs.getString("createdDate") %></td>
<td>  <button type="button" class="btn btn-default btn-sm" name=<%=rs.getString("uname")%> >
          <span class="glyphicon glyphicon-edit"></span> Edit
        </button></td>  
<td><a href="delete.jsp?id=<%=rs.getString("uname") %>"><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-trash"></span> Delete 
        </button></form></td>
</tr>
</tbody>
</c:forEach>
 <%

}
%>
</table>
</div>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>
</body>
</html>
