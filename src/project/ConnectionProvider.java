package project;
import java.sql.*;
public class ConnectionProvider {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejsp","root","user");
			return con;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
}
