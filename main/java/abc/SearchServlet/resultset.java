package abc.SearchServlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class resultset {
	public static ResultSet registerEmployee(String q)  {
		ResultSet rs;
		try {
			
			Class.forName("org.postgresql.Driver");  
			String mysqlUrl = "jdbc:postgresql://localhost/project1";

			Connection con = DriverManager.getConnection(mysqlUrl, "postgres", "Beindependent1$");
			PreparedStatement stmt = con.prepareStatement(q);
			rs = stmt.executeQuery();
			return rs;
	}
		catch(Exception e) {
			System.out.print(e);
		}
		return null;
	}
}
