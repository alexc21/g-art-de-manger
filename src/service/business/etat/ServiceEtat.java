package service.business.etat;


import dao.etat.DaoEtat;
import metier.etat.Etats;
import service.exception.UserException;

public class ServiceEtat {
private DaoEtat daoEtat;
	
	public ServiceEtat() {
		daoEtat = new DaoEtat();
	}
	
	public Etats getEtat() throws UserException {
		System.out.println("service Lieu");
		
		Etats etat = daoEtat.getEtat();
		return etat;
	}
}
