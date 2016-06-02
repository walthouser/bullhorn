<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ page import="BHuser.User" %>
<%   
User user = new User();
user = (User) session.getAttribute("user");
//now we can get values out of the class
String username = user.getUserName();
String email = user.getEmail();
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<body>
<h1>Home</h1>

<h1>Welcome <%=username%> with email of <%=email%></h1>
<table caption="News Feed">
<tr>
<th>Name</th><th>Text</th><th>Date</th></tr>
<tr><td>Tom</td><td>blah blah blah</td><td>May 25, 2016</td></tr>
<tr><td>Bill</td><td>blah blah blah</td><td>May 23, 2016</td></tr>
<tr><td>Joe</td><td>blah blah blah</td><td>May 21, 2016</td></tr> 
</table>

<p>

<form action="login.jsp">
  <input type="submit" value="Log Out">
  </form>
  </p>
</body>
</html>