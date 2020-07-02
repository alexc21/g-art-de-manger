package dao.produit;

public class SqlProduit {

		
	
	protected static final String CREER_PRODUIT = "insert into produit( nom_prod, desc_prod, date_acha, "
												+ "date_pere, quantite, poids, id_etat, id_lieu) "
												+ " values (?,?,?,?,?,?,?,?)";
	
	
	
	protected static final String LISTE_PRODUIT_PAR_LIEU = "select id_prod, nom_prod, desc_prod, date_acha, "
														+ "date_pere, quantite, poids, p.id_etat, p.id_lieu , lib_etat, "
														+ "lib_lieu, image_lieu from produit p " 
														+" inner join etat e on e.id_etat = p.id_etat " 
														+" inner join lieu l on l.id_lieu = p.id_lieu " 
														+" order by id_prod";
	
	protected static final String SUPPRESSION_PRODUIT_PAR_ID = "delete from produit where id_prod = ?";
	
	protected static final String UPDATE_PRODUIT = "update produit set nom_prod = ?, desc_prod =?, "
												+ " date_acha = ?, date_pere = ?, quantite = ?, "
												+ " poids = round(?), id_etat = ?, id_lieu = ?  where id_prod = ?";
}
