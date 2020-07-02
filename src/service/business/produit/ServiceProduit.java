package service.business.produit;


import java.sql.SQLException;

import dao.produit.DaoProduit;
import metier.produit.Produit;
import metier.produit.Produits;
import service.exception.UserException;

public class ServiceProduit {
		
		private DaoProduit daoProduit;
		
		public ServiceProduit() {
			daoProduit = new DaoProduit();
		}
	
	public void creerProduit(Produit produits) throws UserException, SQLException {
		
		System.out.println("ServiceProduit");
		// appel dao pour creer produit
		
		daoProduit.creerProduit(produits);

	}
	
	public Produits getProduit() throws UserException {
		
		System.out.println("service Lieu");
		Produits produit1 = null;
		produit1 = daoProduit.getProduit();
		return produit1;
	}

	public  void suppProduit(Produit produit) throws UserException{
		System.out.println("ServiceProduit - suppression produit");
		daoProduit.suppProduit(produit);
	}

	public void modifProduit(Produit produit) throws UserException {
		System.out.println("service produit - modif");
		daoProduit.modifProduit(produit);
	}
	
}
