<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" style="text/css" href="accountstyle1.css">

<style>
.main p{
font-size:23px;
color: orange;
text-decoration: underline;
}
</style>
</head>
<body>
<div class="image">
	<img src="image/logo/logo4.png"></div>
 
<div class="main">

<p>How much money do you want to deposit</p>
<form action="deposit" method="post">
<input type="text" name="amount" placeholder=" Enter amount" ><br><br>
<input type="submit" value="Submit">
</form>

<div class="msg">
<h1>${msg}</h1>
</div>

</div>

</body>
</html>