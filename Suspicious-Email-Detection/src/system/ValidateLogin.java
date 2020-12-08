package system;

import java.sql.*;


public class ValidateLogin {
	public static boolean checkUser(String email,String pass) 
    {
        boolean exists = false;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	
        	String url = "jdbc:mysql://localhost:3306/sysemail?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	    	String dbUsername = "javaEE";
	    	String dbPassword = "123456789*" ;
            Connection connexion = DriverManager.getConnection(url, dbUsername, dbPassword);
            PreparedStatement ps = connexion.prepareStatement("SELECT * FROM users WHERE email=? and mot_de_passe=?");
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            exists = rs.next();

        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return exists;                 
    }   
}
