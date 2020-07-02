package metier.etat;

public class Etat {
		
	private int id_etat;
	private String lib_etat;
	
	public Etat(int id_etat, String lib_etat) {
		super();
		this.id_etat = id_etat;
		this.lib_etat = lib_etat;
	}

	

	public Etat(int id_etat) {
		super();
		this.id_etat = id_etat;
	}



	public int getId_etat() {
		return id_etat;
	}

	public String getLib_etat() {
		return lib_etat;
	}

	public void setId_etat(int id_etat) {
		this.id_etat = id_etat;
	}

	public void setLib_etat(String lib_etat) {
		this.lib_etat = lib_etat;
	}

	@Override
	public String toString() {
		return "Etat [id_etat=" + id_etat + ", lib_etat=" + lib_etat + "]";
	}
	
	
	
	
	
	
}
