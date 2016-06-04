<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bullhorn</title>
<jsp:include page="bootstrap.jsp"></jsp:include>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<h1>This is the News Feed Page</h1>
<div class="container">
<table class="table table-bordered">
	<thead>
	<tr><th>User</th><th>Post</th><th>Date</th></tr>
	</thead>
	<tbody>
	<c:forEach var="post" items="${posts}">
	<tr>
	<td><a href="ProfileServlet?action=viewprofile&userid=<c:out value="${post.bhuser.bhuserid}"/>">

	<c:out value="${post.bhuse.useremail}"/	</a></c:out></td>
	<td>
	<c:out value="${post.posttext}"/></td>
	<td><fmt.formatDate value"${post.postdate}" pattern="yy-mm-dd"/></td>td>
	</tr>
	</c:forEach>
	</tbody>

</table>

</div>

</body>
</html>