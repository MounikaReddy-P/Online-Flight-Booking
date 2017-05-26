package travelClouds;

/**
 * @Author Manasa
 */

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	static Connection con = null;

	public static Connection getConnection() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			// here travel_clouds is database name, root is username "" is
			// password
			

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mounika?autoReconnect=true&useSSL=false", "root", "root");
			System.out.println("conn successful");
			return con;
		} catch (Exception e) {
			System.out.println("error in connecting DB: "+e);
			return null;
		}

	}

	public static void closeConnection(Connection conn) {
		// TODO Auto-generated method stub
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
