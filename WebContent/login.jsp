<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%	    	session.invalidate(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login page</title>
</head>
<body>
<form action="Input" method="get">
Enter user name <input type="text" name="username" id="username">
<p></p>
Enter password <input type="text" name="password" id="password">
<p></p>
<input type="submit">
</form>
</body>
</html>