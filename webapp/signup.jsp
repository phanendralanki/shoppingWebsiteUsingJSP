<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sign up</title>
<style>
	.container{
		margin-top:30px;
	}
	a,select,option,input{
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
	.success-msg{
		font-weight:bold;
		color:green;
	}
	.error-msg{
		font-weight:bold;
		color:red;
	}	
	.link {
	text-decoration: none;
	margin-right: 50px;
	}
</style>
</head>
<% String msg = request.getParameter("msg"); %>
<body>
	<div class="container">
		
		<% if(msg==null){ %>
			<h3></h3>
		<% }else if("valid".equals(msg)){%>
			<h3 class="success-msg">successfully registered</h3>
		<% } else{ %>
			<h3 class="error-msg">Sorry not registered!</h3>
		<% } %>
		<form action="signupAction.jsp" method="post">
			<input type="text" placeholder="Enter your name" name="name" required>
			<input type="email" placeholder="Enter your email" name="email" required>
			<input type="number" placeholder="Enter mobile" name="mobile" required>
			<select name="securityQuestion">
			<option value="what is your first school name?">What is your first school?</option>
			<option value="your secret">your secret</option>
			</select>
			<input type="text" name="answer" placeholder="Answer">
			<input type="password" placeholder="Enter password" name ="password" required>
			<button type="submit">submit</button>
			
			<a href="login.jsp" class="link">Login Here</a>
			</form>
		
	</div>
</body>
</html>