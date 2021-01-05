package system;

import java.io.IOException;
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
 * Servlet implementation class EmailRegister
 */
@WebServlet("/EmailRegister")
public class EmailRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/compose.jsp"; 
	public static final String CHAMP_destinataire = "destinataire";
    public static final String CHAMP_exp�diteur = "exp�diteur";
    public static final String CHAMP_message = "message";
    public static final String CHAMP_objet = "objet";

    public EmailRegister() {
        super();
       
    }

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String destinataire = request.getParameter( CHAMP_destinataire );
	        String exp�diteur = request.getParameter( CHAMP_exp�diteur );
	        String message = request.getParameter( CHAMP_message );
	        String objet = request.getParameter( CHAMP_objet );
	        
	        Messages msg=new Messages(message);
	        boolean check=msg.detectSuspiciousMessage(message);
	        
	        try{
				Class.forName( "com.mysql.cj.jdbc.Driver" );
			} catch( ClassNotFoundException e) {
				
			}
			
	    	String url = "jdbc:mysql://localhost:3306/sysemail?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	    	String utilisateur = "root";
	    	String motDepasse = "lahsenlahsen" ;
	    	try (Connection connexion = DriverManager.getConnection( url,utilisateur, motDepasse );){
	    		Statement statement = connexion.createStatement();
	    		int result=statement.executeUpdate("INSERT INTO usersdatabase.mailing (destinataire, exp�diteur, objet,message) VALUES ("+"'"+destinataire+"'"+","+"'"+exp�diteur+"'"+","+"'"+objet+"'"+","+"'"+message+"'"+"); ");
	    	} catch (SQLException e) {
				
			}
		
	}

}
