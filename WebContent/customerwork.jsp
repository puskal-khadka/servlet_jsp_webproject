<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Dashboard</title>
<link rel="stylesheet" style="text/css" href="customerwork.css">
</head>
<body>
<img style="
height:10%;
width:23%;
display:block;
margin-left:auto;
margin-right:auto;"  src="image/logo/logo4.png" >
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setHeader("Expires","0");
 if(session.getAttribute("caccount")==null)
 {
    response.sendRedirect("logincustomer.jsp");
 }
%>
<br><br>
<a href="BankOperation/AccountDetail.jsp">
<div class="tab">
<img src="image/icon/boss.png" class="admin">
<h1>Account detail</h1>
</div>
</a>

<a href="BankOperation/deposit.jsp">
<div class="tab">
<img src="image/icon/boss.png" class="admin">
<h1>Deposit</h1>
</div>
</a>

<a href="BankOperation/withdraw.jsp">
<div class="tab">
<img src="image/icon/boss.png" class="admin">
<h1>Withdraw</h1>
</div>
</a>

<a href="BankOperation/statement.jsp">
<div class="tab">
<img src="image/icon/boss.png" class="admin">
<h1>Statement</h1>
</div>
</a>

<a href="BankOperation/pinchange.jsp">
<div class="tab">
<img src="image/icon/boss.png" class="admin">
<h1>Pin change</h1>
</div>
</a>
<div class="botton">
<form action="logout" method="post">
<p><input type="submit" value="logout"></p>
</form></div>

<div class="footer">
<p>
2019 © Puskal Khadka
</p>
</div>


</body>
</html>