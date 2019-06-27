<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank staff dashboard</title>
<style>
body{
background-image:url("image/bg/bg4.jpg");
background-size: cover;
background-position:center;
background-attachment:fixed;
background-repeat: no-repeat;
}
h1{
margin-top:5%;
text-align:center;
color:rgb(217, 217, 217);
font-size:25px;
font-family:arial;
}
.content{
height: 120px;
width:350px;
margin-top:5%;
margin-left:41%;
 border: 2px solid gray;}

h2,a{
text-align:center;
color:rgb(217, 217, 217);
font-size:23px;
text-decoration:none;
font-family:arial;
}
a:hover{
color:orange;
font-size:25px;
}

p{
margin-left:49%;
padding-top:5%;
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

<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setHeader("Expires","0");
 if(session.getAttribute("email")==null)
 {
    response.sendRedirect("loginuser.jsp");
 }
%>
<h1>welcome to UserWork page</h1>
<div class="content">
<h2>Register new Customer<br><br>
<a href="registercustomer.jsp">click me</a></h2></div>

<form action="logout" method="post">
<p>
<input type="submit" value="logout"></p>
</form>
</body>
</html>