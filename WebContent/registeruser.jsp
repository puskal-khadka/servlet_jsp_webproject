<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Employee</title>
<link rel="stylesheet" style="text/css" href="styleregister.css">
</head>
<body>
<%
if(session.getAttribute("name")==null)
{
   response.sendRedirect("loginuser.jsp");
}
%>

<img style="
height:8%;
width:26%;
"  src="image/logo/logo6.png" >


<div class="registerform">
<img src="image/icon/user.png" class="user">
<h1>Register Employee</h1>
<form action="register1" method="post">
<p>Username</p>
<input type="text" name="uname" placeholder="Enter Name" required>
<p>Branch</p>
<input type="text" name="ubranch" placeholder="Enter Branch name" required>

 <p>Gender</p>
<input type="radio" name="ugender" value="">Male
<input type="radio" name="ugender">Female
<input type="radio" name="ugender">Others  

<p>Address</p>
<input type="text" name="uaddress" placeholder="Enter Address" required>
<p>Phone no</p>
<input type="text" name="uphone" placeholder="Enter phone no" required>
<p>Email</p>
<input type="email" name="uemail" placeholder="Enter Email address" required>
<br><p>Password</p>
<input type="password" name="upass" placeholder="Enter Password" required>
<br><input type="submit" value="Register">
</form>
<h2>2019 © Puskal Khadka</h2>
</div>



</body>
</html>