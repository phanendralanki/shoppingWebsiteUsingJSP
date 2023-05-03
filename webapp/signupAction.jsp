<%@page import="java.sql.*"%>
<%@page import="project.ConnectionProvider"%>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejsp","root","user");
	PreparedStatement ps = con.prepareStatement("insert into users(name,email,mobile,securityQuestion,answer,password) values(?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,mobile);
	ps.setString(4,securityQuestion);
	ps.setString(5,answer);
	ps.setString(6,password);
	
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
	
}catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("signup.jsp?msg=invalid");
}
%>