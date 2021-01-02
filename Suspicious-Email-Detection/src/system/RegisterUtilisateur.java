package system;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class RegisterUtilisateur {
	
	private Utilisateur Nv_utili ;

	public RegisterUtilisateur(Utilisateur nv_utili) {
		super();
		Nv_utili = nv_utili;
	}

	public Utilisateur getNv_utili() {
		return Nv_utili;
	}

	public void setNv_utili(Utilisateur nv_utili) {
		Nv_utili = nv_utili;
	}
	public  void utili_bdd(Utilisateur Nv_utili) {
		   try{
				Class.forName( "com.mysql.cj.jdbc.Driver" );
			} catch( ClassNotFoundException e) {
				
			}
			
			String url = "jdbc:mysql://localhost:3306/sysemail?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	    	String utilisateur = "javaEE";
	    	String motDepasse = "123456789*" ;
	    	try (Connection connexion = DriverManager.getConnection( url,utilisateur, motDepasse );){
	    		Statement statement = connexion.createStatement();
	    		statement.executeUpdate("INSERT INTO users (email, mot_de_passe, nom) VALUES ("+"'"+Nv_utili.getEmail()+"'"+","+"'"+Nv_utili.getMotDePasse()+"'"+","+"'"+Nv_utili.getNom()+"'"+"); ");
	    	} catch (SQLException e) {
				
			}
	}
	
}
