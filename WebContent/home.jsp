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
<h1>This is the home page</h1>
<form role="form" action="PostServ" method="post" onsubmit="return validate(this);">
 <div class="form-group"> 
 <label for="post">Create New Post (141 char):</label>
 <textarea name= "posttext" id="posttext" class="form-control" rows="2" placeholder= "Express yourself!" maxlength="141"></textarea>
 <div id="textarea_feedback"></div>
 </div> 
 <div class = "form-group"> 
 <input type="submit" value="Submit" id="submit"/>
 <input type="reset" value="Clear"/>
 </div> 
 </form> 

<p>
<script>
$(document).ready(function() {
 var text_max = 141;
 $('#textarea_feedback').html(text_max + ' characters remaining');
$('#posttext').keyup(function() {
 var text_length = $('#posttext').val().length;
 var text_remaining = text_max - text_length;
$('#textarea_feedback').html(text_remaining + ' characters remaining');
 });
});

function validate(form) {
 valid = true;
 if ($('#posttext').val().length==0){
 alert("You may not submit an empty post.");
 valid = false;
 }
 return valid;
}
</script>
  </p>
</body>
</html>