package dao.lieu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import metier.lieu.Lieu;
import metier.lieu.Lieus;
import service.exception.UserException;
import util.message.Message;

public class DaoLieu {
	
	private final String BDD 		= "gdm";
	private final String USER 		= "dede";
	private final String PASSWD		= "test";
	private final String DBURL 		= "jdbc:mysql://localhost:3306/" + BDD + "?useUnicode=true" + 
	  "&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	
	private static final String strNomDriver = "com.mysql.cj.jdbc.Driver";
	
	
	
	public Lieus getLieu() throws UserException {
		System.out.println("DaoLieu");
		Lieus lieu = new Lieus();
		
		try {			
			Class.forName(strNomDriver);
			Connection conn        = DriverManager.getConnection(DBURL, USER, PASSWD);
			
			String sql    	= SqlLieu.SELECT_LIEU;
			
			Statement stmt 	= conn.createStatement();
			ResultSet rs 	= (ResultSet) stmt.executeQuery(sql);
			while (rs.next()) {
				int    		id 		 	= rs.getInt(1);
				String  	libelle	 	= rs.getString(2);

				
				Lieu lieus = new Lieu(id, libelle );
				lieu.add(lieus);			
			}
						rs.close();
		} catch (SQLException e) {
			
		} catch (ClassNotFoundException e) {
			throw new UserException(Message.ERREUR_BDD);
		}
		
		System.out.println("blabla daolieu" + lieu);
		return lieu;
	}
}
