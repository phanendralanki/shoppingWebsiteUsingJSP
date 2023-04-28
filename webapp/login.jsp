<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<style>
	.container{
		margin-top:30px;
	}
	input{
		display:block;
		margin-top:10px;
		margin-bottom:10px;
		padding-top:10px;
		padding-bottom:10px;
		padding-right:10px;
		padding-left:10px;
		border-radius:5px;
		
		font-weight:bold;
	}
	button{
		padding-top:5px;
		padding-bottom:5px;
		padding-right:80px;
		padding-left:80px;
		cursor:pointer;
		
		font-weight:bold;
		background-color:blue;
		color:white;
	}
</style>
</head>
<body>
	<div class="container">
		
		<%String msg = request.getParameter("msg");
			if("invalid".equals(msg)){
		%>
		<h3 style="color:red;">user not exists</h3>
		<% } %>
		
		<% 
			if("notexist".equals(msg)){
			
		%>
		<h3 stlye="color:red;">Incorrect user name</h3>
		<% } %>
		<form action="loginAction.jsp" method="post">
			<input type="email" name="email" placeholder="Enter your email" required>
			<input type="password" name="password" placeholder="Enter password" required>
			<input type="submit" value="submit">
		</form>
		
	</div>
</body>
</html>