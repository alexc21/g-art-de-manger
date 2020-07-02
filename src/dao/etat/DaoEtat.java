package dao.etat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import metier.etat.Etat;
import metier.etat.Etats;
import service.exception.UserException;
import util.message.Message;

public class DaoEtat {
	private final String BDD 		= "gdm";
	private final String USER 		= "dede";
	private final String PASSWD		= "test";
	private final String DBURL 		= "jdbc:mysql://localhost:3306/" + BDD + "?useUnicode=true" + 
	  "&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	
	private static final String strNomDriver = "com.mysql.cj.jdbc.Driver";
	
	
	
	public Etats getEtat() throws UserException {
		System.out.println("DaoLieu");
		Etats etat = new Etats();
		
		try {			
			Class.forName(strNomDriver);
			Connection conn        = DriverManager.getConnection(DBURL, USER, PASSWD);
			
			String sql    	= SqlEtat.SELECT_ETAT;
			
			Statement stmt 	= conn.createStatement();
			ResultSet rs 	= (ResultSet) stmt.executeQuery(sql);
			while (rs.next()) {
				int    		id 		 	= rs.getInt(1);
				String  	libelle	 	= rs.getString(2);

				
				Etat etats = new Etat(id, libelle );
				etat.add(etats);			
			}
						rs.close();
		} catch (SQLException e) {
			
		} catch (ClassNotFoundException e) {
			throw new UserException(Message.ERREUR_BDD);
		}
		
		System.out.println("blabla daolieu" + etat);
		return etat;
	}
}
