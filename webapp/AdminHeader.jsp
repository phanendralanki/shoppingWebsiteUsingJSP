<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}

</style>
</head>
<body>

	<%
	session.getAttribute("email").toString();
	%>
	<ul>
		<li><a class="active" href="./AdminHome.jsp">Home</a></li>
		<li><a href="add_products.jsp">Add products</a></li>
		<li><a href="#contact">Delete product</a></li>
		<li><a href="#about">Update Product</a></li>
		<li><a href="logout.jsp">Logout</a></li>
	</ul>

</body>
</html>