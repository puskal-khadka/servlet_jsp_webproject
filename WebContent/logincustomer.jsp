<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" style="text/css" href="stylejsp.css">
<style>
body{
background-image: url("image/bg/bg5.jpg");
}
.logform{
		top:30%;	
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
<img src="image/icon/customer.png" class="admin">
<h1>Login Here</h1>
<form action="login5" method="post">
<p>Account Number</p>
<input type="text" name="caccount" placeholder="Enter Account number">
<br><p>Password</p>
<input type="password" name="cpass" placeholder="Enter Password">
<br><input type="submit" value="Login">
</form>
<marquee><h2>2019 © Puskal Khadka</h2></marquee>
</div>

</body>
</html>