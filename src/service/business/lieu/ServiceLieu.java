package service.business.lieu;


import dao.lieu.DaoLieu;
import metier.lieu.Lieus;
import service.exception.UserException;

public class ServiceLieu {

	private DaoLieu daoLieu;
	
	public ServiceLieu() {
		daoLieu = new DaoLieu();
	}
	
	public Lieus getLieuStock() throws UserException {
		System.out.println("service Lieu");
		Lieus lieu = null;
		lieu = daoLieu.getLieu();
		return lieu;
	}
	
	
	
}
