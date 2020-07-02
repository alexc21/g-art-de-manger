package service.web.produit;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.etat.Etat;
import metier.etat.Etats;
import metier.lieu.Lieu;
import metier.lieu.Lieus;
import metier.produit.Produit;
import metier.produit.Produits;
import service.business.etat.ServiceEtat;
import service.business.lieu.ServiceLieu;
import service.business.produit.ServiceProduit;
import service.exception.UserException;

/**
 * Servlet implementation class ControlProduit
 */
@WebServlet(urlPatterns = {"/produit/*"})
public class ControlProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ServiceLieu serviceLieu;
	private ServiceEtat serviceEtat;
	private ServiceProduit serviceProduit;



	@Override
	public void init() throws ServletException {
		serviceLieu = new ServiceLieu();
		serviceProduit = new ServiceProduit();
		serviceEtat = new ServiceEtat();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get");

		String chemin =request.getPathInfo();

		if (chemin.equals("/formProduit")) 			doFormProduit(request, response);
		else if (chemin.equals("/consultProduit")) 	doListeProduit(request, response);
		else if (chemin.equals("/modification"))		doFormModifProduit(request, response);
		else if (chemin.equals("/"))			doAutres(request, response);
		
	}

	private void doFormModifProduit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Produits produits = null;
		
		try {
			Lieus lieu = serviceLieu.getLieuStock() ;
			request.setAttribute("StockLieus", lieu);
			Etats etat = serviceEtat.getEtat();
			request.setAttribute("etats",etat);
			produits = serviceProduit.getProduit();
			request.setAttribute("produits",produits);
		} catch (UserException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/WEB-INF/vue/modifProduit.jsp").forward(request,response);
		
	}

	private void doAutres(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("blablabla");
		request.getRequestDispatcher("/accueil.jsp").forward(request,response);

	}

	private void doListeProduit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Produits produits = null;
		
		try {
			produits = serviceProduit.getProduit();
			request.setAttribute("produits",produits);
		} catch (UserException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/WEB-INF/vue/Stock.jsp").forward(request,response);

	}

	private void doFormProduit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ControlProduit");
		
		//je remonte les données des differentes couches dao
		try {
			
			Lieus lieu = serviceLieu.getLieuStock() ;
			request.setAttribute("StockLieus", lieu);
			Etats etat = serviceEtat.getEtat();
			request.setAttribute("etats",etat);
			
		} catch (UserException e) {
			String message = e.getMessage();
			request.setAttribute("message", message);
		}
		
		
		

		request.getRequestDispatcher("/WEB-INF/vue/creaProduit.jsp").forward(request,response);

	}




	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String chemin = request.getPathInfo();

		if		(chemin.equals("/creerProd")) 	doCreerProduit(request, response);
		else if (chemin.equals("/suppression"))	doSuppProduit(request,response);
		else if (chemin.equals("/donnéeModif"))	doModif(request, response);
		else								  	doAutres(request, response);

	}

	private void doModif(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("COntrolProd");
		//recuperation des donnees
		String tpIdProd = request.getParameter("idProd");
		String nomProd = request.getParameter("nomProd");
		String descripProd = request.getParameter("descriptionProd");
		String dateA = request.getParameter("dateAchat");
		String dateP = request.getParameter("datePeremption");
		String tpquantite = request.getParameter("quantite");
		String  tppoids= request.getParameter("poids");
		String tpIdLieu = request.getParameter("lieu");
		String tpIdEtat = request.getParameter("fav");
		
		System.out.println(tpIdProd);
		System.out.println(tpIdLieu);
		System.out.println(tpIdEtat);
		//parse des donnees
		int idProd 					= Integer.parseInt(tpIdProd);
		LocalDate dateAchat 		= LocalDate.parse(dateA);
		LocalDate dateperemption 	= LocalDate.parse(dateP);
		int quantite  				= Integer.parseInt(tpquantite);
		int poids 					= Integer.parseInt(tppoids);
		int idLieu 					= Integer.parseInt(tpIdLieu);		
		int idEtat					= Integer.parseInt(tpIdEtat) ;


		

		Lieu lieu = new Lieu(idLieu);
		Etat etat = new Etat(idEtat);

		System.out.println(etat);
		System.out.println(lieu);
		Produit produit = new Produit( idProd, nomProd, descripProd, dateAchat, dateperemption, quantite, poids, etat, lieu);
		
		

		System.out.println("verif produit complet" + produit);
		try {
			serviceProduit.modifProduit(produit);
		} catch (UserException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doListeProduit(request, response);
		
	}

	private void doSuppProduit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ControlProduit - methode suppression");
	
		
		//recuperation des donnees du formulaire
		String tpIdProduit = request.getParameter("supp_prod");
		
		//transformation/parse des données au bon type
		int idProduit = Integer.parseInt(tpIdProduit);
		
		Produit produit = new Produit(idProduit);
		
		try {
			serviceProduit.suppProduit(produit);
		} catch (UserException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doListeProduit(request, response);
	}

	private void doCreerProduit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recuperation des donnees
		String nomProd = request.getParameter("nomProd");
		String descripProd = request.getParameter("descriptionProd");
		String dateA = request.getParameter("dateAchat");
		String dateP = request.getParameter("datePeremption");
		String tpquantite = request.getParameter("quantite");
		String  tppoids= request.getParameter("poids");
		String tpIdLieu = request.getParameter("lieu");
		String tpIdEtat = request.getParameter("fav");
		

		//int IdProd 					= Integer.parseInt(tpIdProd);
		LocalDate dateAchat 		= LocalDate.parse(dateA);
		LocalDate dateperemption 	= LocalDate.parse(dateP);
		int quantite  				= Integer.parseInt(tpquantite);
		int poids 					= Integer.parseInt(tppoids);
		int idLieu 					= Integer.parseInt(tpIdLieu);		
		int idEtat					= Integer.parseInt(tpIdEtat) ;

		Lieu lieu = new Lieu(idLieu);
		Etat etat = new Etat(idEtat);

		Produit produit = new Produit( nomProd, descripProd, dateAchat, dateperemption, quantite, poids, etat, lieu);

		try {
			serviceProduit.creerProduit(produit);
		} catch (UserException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doListeProduit(request, response);
	}


}



