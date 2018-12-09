<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User</title>
</head>
<body>

<form action="adduser" method="post">
Enter Name: <input type="text" name="uname"><br>
Enter Email Id: <input type="text" name="uemail"><br>
Enter Mobile Number: <input type="text" name="umobile" maxlength="10"><br>
Enter City: <input type="text" name="ucity"><br>
Enter Password: <input type="password" name="upassword"><br>
Enter Confirm Password: <input type="password" name="uCpassword"><br>
<input type="submit" name="Add User"><br>
</form>
</body>
</html>