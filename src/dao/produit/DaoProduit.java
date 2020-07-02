package dao.produit;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import metier.etat.Etat;
import metier.lieu.Lieu;
import metier.produit.Produit;
import metier.produit.Produits;
import service.exception.UserException;
import util.message.Message;





public class DaoProduit  {

	private final String BDD 		= "gdm";
	private final String USER 		= "dede";
	private final String PASSWD		= "test";
	private final String DBURL 		= "jdbc:mysql://localhost:3306/" + BDD + "?useUnicode=true" + 
			"&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

	private static final String strNomDriver = "com.mysql.cj.jdbc.Driver";

	//methode qui permet de creer un produit dans la base de données
	public void creerProduit(Produit produit) throws SQLException, UserException {
		//acces BDD

		try {
			//verif presence Driver
			Class.forName(strNomDriver);
			
			//ouverture connexion
			Connection conn        = DriverManager.getConnection(DBURL, USER, PASSWD); 
			PreparedStatement stmt = conn.prepareStatement(SqlProduit.CREER_PRODUIT);
			
			//je  set les données qui iront dans les parametres de ma requete sql
			stmt.setString(1, produit.getNomProduit());
			stmt.setString(2, produit.getDescriptionProduit());
			stmt.setDate(3, java.sql.Date.valueOf(produit.getDateAchat()));
			stmt.setDate(4, java.sql.Date.valueOf(produit.getDatePeremption()));
			stmt.setInt(5, produit.getQuantite());
			stmt.setInt(6, produit.getPoids());		
			stmt.setInt(7, produit.getEtat().getId_etat());
			stmt.setInt(8, produit.getLieuProduit().getId_lieu());
			//J'execute ma requete insert
			stmt.executeUpdate();			


		} catch (ClassNotFoundException e) {
			throw new UserException(Message.ERREUR_BDD);
		}catch(SQLException e) {

		}

	}
	

	//methode qui permet de selectioner les produits par lieu dans la base de données  
	public Produits getProduit() throws UserException {
		Produits produits = new Produits();

		try {			
			Class.forName(strNomDriver);
			Connection conn        = DriverManager.getConnection(DBURL, USER, PASSWD);

			String sql    	= SqlProduit.LISTE_PRODUIT_PAR_LIEU;
			PreparedStatement ps 	= conn.prepareStatement(sql);


			ResultSet rs = ps.executeQuery();
			//nom_prod, desc_prod, date_acha, date_pere, quantite, poids, 
			//p.id_etat, p.id_lieu , lib_etat, lib_lieu, image_lieu
			while(rs.next()) {

				int id = rs.getInt(1);
				String nom = rs.getString("nom_prod");
				String description = rs.getString("desc_prod");
				LocalDate dateAchat = rs.getDate("date_acha").toLocalDate();
				LocalDate datePeremption = rs.getDate("date_pere").toLocalDate();
				int quantite = rs.getInt("quantite");
				int poids =rs.getInt("poids");
				int etat1 = rs.getInt("id_etat");
				String libelle_etat = rs.getString("lib_etat");
				int lieu1 =rs.getInt("id_lieu");
				String nom_lieu = rs.getString("lib_lieu");
				String image_lieu = rs.getString("lib_lieu");
				


						Etat state = new Etat(etat1, libelle_etat);
				Lieu lieu  = new Lieu(lieu1,nom_lieu ,image_lieu );
				Produit produit = new Produit(id, nom, description, dateAchat, datePeremption,quantite, poids, state, lieu);
				System.out.println(produit);
				produits.add(produit);
			}

			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			throw new UserException(Message.ERREUR_BDD);
		}


		return produits;

	}

	public  void suppProduit(Produit produit) throws UserException {
		System.out.println("DaoProduit - suppression produit");
		
		try {
			//verif presence Driver
			Class.forName(strNomDriver);
			

			//ouverture connexion
			Connection conn        = DriverManager.getConnection(DBURL, USER, PASSWD);
			
			System.out.println("avant le prepared statement"); 
			PreparedStatement stmt = conn.prepareStatement(SqlProduit.SUPPRESSION_PRODUIT_PAR_ID);
			

			
			//je  set la donnée qui va passer en parametre de ma requete
			stmt.setInt(1, produit.getIdProduit());

			
			//J'execute ma requete delete
			stmt.executeUpdate();			


		} catch (ClassNotFoundException e) {
			throw new UserException(Message.ERREUR_BDD);
		}catch(SQLException e) {

		}
	}


	public void modifProduit(Produit produit) throws UserException {
		System.out.println("daoProduit -- modif");
		try {
			//verif presence Driver
			Class.forName(strNomDriver);
			

			//ouverture connexion
			Connection conn        = DriverManager.getConnection(DBURL, USER, PASSWD);
			System.out.println(conn);
			System.out.println("avant le prepared statement"); 
			PreparedStatement stmt = conn.prepareStatement(SqlProduit.UPDATE_PRODUIT);
			//stmt.setInt(1, produit.getIdProduit());

			System.out.println("je set mes données");
			//je  set les données qui iront dans les parametres de ma requete sql
			stmt.setString(1, produit.getNomProduit());

			stmt.setString(2, produit.getDescriptionProduit());

			stmt.setDate(3, java.sql.Date.valueOf(produit.getDateAchat()));

			stmt.setDate(4, java.sql.Date.valueOf(produit.getDatePeremption()));

			stmt.setInt(5, produit.getQuantite());

			stmt.setInt(6, produit.getPoids());
			System.out.println(stmt);			

			stmt.setInt(7, produit.getEtat().getId_etat());
			System.out.println(stmt);

			stmt.setInt(8, produit.getLieuProduit().getId_lieu());
			System.out.println(stmt);
			
			stmt.setInt(9, produit.getIdProduit());

			//J'execute ma requete insert
			stmt.executeUpdate();			


		} catch (ClassNotFoundException e) {
			throw new UserException(Message.ERREUR_BDD);
		}catch(SQLException e) {

		}
	}


}
