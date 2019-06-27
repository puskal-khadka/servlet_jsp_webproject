<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login User</title>
<link rel="stylesheet" style="text/css" href="stylejsp.css">

<style>
body{
background-image: url("image/bg/bg4.jpg");
}
</style>
</head>

<body>
<img style="
height:10%;
width:30%;
display:block;
margin-left:auto;
margin-right:auto;"  src="image/logo/logo4.png" >


<div class="logform">
<img src="image/icon/user.png" class="admin">
<h1>Login Here</h1>
<form action="login2" method="post">
<p>Email</p>
<input type="email" name="uemail" placeholder="Enter email address">
<br><p>Password</p>
<input type="password" name="upass" placeholder="Enter Password">
<br><input type="submit" value="Login">
</form>
<marquee><h2>2019 © Puskal Khadka</h2></marquee>
</div>

</body>
</html>