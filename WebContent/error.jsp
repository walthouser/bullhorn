<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error Page</title>
<jsp:include page="/bootstrap.jsp"></jsp:include>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

 <div style="text-align:center">
 <h1>Something's Wrong...</h1>
 <img src="images/error640.png" alt="This is bad" width="300"/>
 </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>