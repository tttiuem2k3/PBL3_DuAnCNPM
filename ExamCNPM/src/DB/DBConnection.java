package DB;
import java.sql.*;

public class DBConnection {
	public static Connection CreateConnection() {
		Connection conn= null;
//		
//		final String url="jdbc:mysql://localhost:3306/examonline?useSSL=false";
//		final String username="root";
//		final String password="1234";
//		
//		
//
//			try {
//				// load Driver
//				Class.forName("com.mysql.jdbc.Driver");
//				
//				// create connection
//				conn = DriverManager.getConnection(url,username,password);
//				
//				System.out.println("Connected successfully hihi...");
//			} 
//			catch (ClassNotFoundException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//				//System.out.println("Error connection ..." + e);
//			}
//		
//		catch(SQLException e){
//			e.printStackTrace();
//			System.out.println("Error connection ..." + e);
//		}
//	
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			String url ="jdbc:mySQL://localhost:3306/examonline?characterEncoding=UTF-8";
			String username = "root";
			String password ="1234";
	
			conn=DriverManager.getConnection(url, username, password);
			// ket noi xong
			  System.out.print("DA KET NOI CO SO DU LIEU  \n");
		

       
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		return conn;
	}
}
