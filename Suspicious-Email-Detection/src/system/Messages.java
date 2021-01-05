package system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Messages {
     public String message;

	public Messages(String message) {
		super();
		this.message = message;
	}
    
	public boolean detectSuspiciousMessage(String message) {
		String[] str=message.split(" ") ;
		boolean exists = false;
		for(String elt:str) {
	        try {
	        	Class.forName("com.mysql.jdbc.Driver");
	        	
	        	String url = "jdbc:mysql://localhost:3306/sysemail?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		    	String dbUsername = "javaEE";
		    	String dbPassword = "123456789*" ;
	            Connection connexion = DriverManager.getConnection(url, dbUsername, dbPassword);
	            PreparedStatement ps = connexion.prepareStatement("SELECT * FROM suspiciouswords WHERE Word=? ");
	            ps.setString(1, elt);
	            ResultSet rs = ps.executeQuery();
	            exists = rs.next();
	            if(exists) break;
	        }
	        catch(Exception e) {
	            e.printStackTrace();
	        }
	        
		}
		return exists;
	}
	

}