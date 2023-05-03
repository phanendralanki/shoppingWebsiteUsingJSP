<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>navbar</title>
<style>
	ul{
		list-style-type:none;
		margin:0;
		padding:0;
		overflow:hidden;
		background-color:#333;
	}
	li{
		float:left;
	}
	li a{
		display:block;
		color:white;
		text-align:center;
		padding:14px 16px;
		text-decoration:none;
	}
	li a:hover{
		background-color:#111;
	}
</style>
</head>
<body>
	<%
		
		String email =(String)session.getAttribute("user");
		String admin = (String)session.getAttribute("admin");
	%>
	<ul>
		<li><a href="#">Home</a></li>
		<% if(email!=null){ %>
		<li><a href="logout.jsp">Logout</a></li>
		<%}else{ %>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="signup.jsp">SignUP</a></li>
		<%} %>
	</ul>
</body>
</html>