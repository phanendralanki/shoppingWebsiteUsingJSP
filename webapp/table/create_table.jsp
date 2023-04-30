<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try {
	Connection con = ConnectionProvider.getConnection();
	Statement st = con.createStatement();
	//String query = "create table users(name varchar(100),email varchar(100) primary key,mobile varchar(20),securityQuestion varchar(50),answer varchar(200),password varchar(30))";
	String products_table = "create table products(id int,product_name varchar(30),price int,category varchar(30),active varchar(10))";
	//st.execute(query);
	st.execute(products_table);
	System.out.println("table created");
	con.close();
} catch (Exception e) {
	System.out.println(e);
}
%>