package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlConnector {

	public static Connection connect() throws Exception {
		
		//load database driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//establish connection to database
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bca6", "root", "");
		return conn;
		
	}
}
