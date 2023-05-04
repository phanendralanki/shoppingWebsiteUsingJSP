<%@page import="java.io.*"%> 
<%@page import="java.sql.*"%> 
  
    <% 
	//Getting the data from form
	String id = request.getParameter("id");
	String product_name=request.getParameter("product_name");  
	String price = request.getParameter("price");
	String category = request.getParameter("category");
	
	out.println("id: "+id+"name: "+product_name+"price: "+price+"category: "+category);
	/*
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejsp","root","user");
		PreparedStatement ps = con.prepareStatement("insert into product values(?,?,?,?)");
		ps.setString(1,id);
		ps.setString(2,product_name);
		ps.setString(3,price);
		ps.setString(4,category);
		ps.executeUpdate();
		response.sendRedirect("add_products.jsp?msg=done");
	}catch(Exception e){
		response.sendRedirect("add_products.jsp?msg=wrong");
	}
	*/
	
	
	
	%> 