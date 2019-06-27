<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" style="text/css" href="accountstyle1.css">
</head>
<body>
<div class="image">
	<img src="image/logo/logo4.png"></div>
 
<div class="main">
<form action="pin" method="post">
<p>Enter new Password</p>
<input type="text" name="p1" placeholder=" Enter password" ><br><br>
<p>Confirm new Password</p>
<input type="text" name="p2" placeholder=" confirm password" ><br><br>

<input type="submit" value="Submit">
</form>

<div class="msg">
<h1>${msg}</h1>
</div>

</div>

</body>
</html>
