<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>

<% 
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	if("admin@gmail.com".equals(email)&& "admin".equals(password)){
		session.setAttribute("email",email);
		response.sendRedirect("AdminHome.jsp");
		
	}else{
		int f = 0;
		try{
			Connection con = ConnectionProvider.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select *from users where email='"+email+"' and password='"+password+"'");
			while(rs.next()){
				f = 1;
				session.setAttribute("email",email);
				response.sendRedirect("home.jsp");
			}if(f==0){
				response.sendRedirect("login.jsp?msg=not exist");
			}
		}catch(Exception e){
			System.out.println("");
			response.sendRedirect("login.jsp?msg=invalid");
			
		}
	}

%>