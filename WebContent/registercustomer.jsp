<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" style="text/css" href="styleregister.css">
<style>
body{
background-image: url("image/bg/bg7.jpg");
background-size: cover;
background-attachment: fixed;
background-position: center;
}
.registerform{
height:600px;
}
</style>
</head>
<body>

<%
if(session.getAttribute("email")==null)
{
   response.sendRedirect("loginuser.jsp");
}
%>

<img style="height:8%; width:26%;" src="image/logo/logo6.png" >
<div class="registerform">
<img src="image/icon/customer.png" class="user">
<h1>Register Customer</h1>
<form action="register5" method="post">
<p>Username</p>
<input type="text" name="cname" placeholder="Enter Name">
 <%-- <p>Gender</p>
<input type="radio" name="ugender">Male
<input type="radio" name="ugender">Female
<input type="radio" name="ugender">Others --%> 
<p>Address</p>
<input type="text" name="caddress" placeholder="Enter Address">
<p>Phone no</p>
<input type="text" name="cphone" placeholder="Enter phone no">
<p>Email</p>
<input type="email" name="cemail" placeholder="Enter Email address">
<br><p>Password</p>
<input type="password" name="cpass" placeholder="Enter Password">
<br><input type="submit" value="Register">
</form>
<h2>2019 © Puskal Khadka</h2>
</div>


</body>
</html>