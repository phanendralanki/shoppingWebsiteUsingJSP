<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<%
		String name = (String)session.getAttribute("email");
	%>
	
	<%@include file="navbar.jsp" %>
	
	
	<h2>Welcome ${email}</h2>
</body>
</html>