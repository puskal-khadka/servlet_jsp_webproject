<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="account.Connectionis" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	margin:0;
	padding:0;
	background-image: url("image/bg/bg71.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-position:center;
	background-attachment:fixed;
}
.main{
height:280px;
width:500px;
margin-left: 38%;
text-align:center;
margin-top:8%;
padding-top:40px;
font-weight:bold;
background-color:rgba(0,0,0,0.5);
font-size: 20px;
color:white;
font-family: arial;
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
<div class="main">
<%
try{
	  String acc=(String)session.getAttribute("caccount");
	  Connection con=new Connectionis().connect();	 
PreparedStatement ps=con.prepareStatement("select * from customer where Account_no=?");
ps.setString(1, acc);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	
	out.println("Account no:  &nbsp"+rs.getString(1)+"<br><br>Name:  &nbsp"+rs.getString(2)+"<br><br>Address: &nbsp &nbsp"+rs.getString(3)+"<br><br>phone no:  &nbsp "+rs.getString(4)+"<br><br>Balance : &nbsp &nbsp Rs  "+rs.getInt(7));
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</div>
</body>
</html>