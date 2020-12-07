package system;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/Register.jsp"; 
	public static final String CHAMP_EMAIL = "email";
    public static final String CHAMP_PASS = "motdepasse";
    public static final String CHAMP_CONF = "confirmation";
    public static final String CHAMP_NOM = "nom";

    public Register() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String email = request.getParameter( CHAMP_EMAIL );
	        String motDePasse = request.getParameter( CHAMP_PASS );
	        String confirmation = request.getParameter( CHAMP_CONF );
	        String nom = request.getParameter( CHAMP_NOM );
	        try{
				Class.forName( "com.mysql.cj.jdbc.Driver" );
			} catch( ClassNotFoundException e) {
				
			}
			
			String url = "jdbc:mysql://localhost:3306/sysemail?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	    	String utilisateur = "javaEE";
	    	String motDepasse = "123456789*" ;
	    	try (Connection connexion = DriverManager.getConnection( url,utilisateur, motDePasse );){
	    		Statement statement = connexion.createStatement();
	    		int result=statement.executeUpdate("INSERT INTO users (email, mot_de_passe, nom) VALUES ("+"'"+email+"'"+","+"'"+motDepasse+"'"+","+"'"+nom+"'"+"); ");
	    	} catch (SQLException e) {
				
			}
		
	}

}
