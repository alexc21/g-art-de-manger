package metier.lieu;

public  class Lieu {
	private int  		id_lieu;
	private String		lib_lieu;
	private String		image_lieu;	
	
	public Lieu(int id_lieu) {
		super();
		this.id_lieu = id_lieu;
		
	}
	
	public Lieu(int id_lieu, String lib_lieu) {
		super();
		this.id_lieu = id_lieu;
		this.lib_lieu = lib_lieu;
	}
	

	public Lieu(int id_lieu, String lib_lieu, String image_lieu) {
		super();
		this.id_lieu = id_lieu;
		this.lib_lieu = lib_lieu;
		this.image_lieu = image_lieu;
	}



	public int getId_lieu() {
		return id_lieu;
	}



	public String getLib_lieu() {
		return lib_lieu;
	}



	public String getImage_lieu() {
		return image_lieu;
	}



	public void setId_lieu(int id_lieu) {
		this.id_lieu = id_lieu;
	}



	public void setLib_lieu(String lib_lieu) {
		this.lib_lieu = lib_lieu;
	}



	public void setImage_lieu(String image_lieu) {
		this.image_lieu = image_lieu;
	}



	@Override
	public String toString() {
		return "Lieu [id_lieu=" + id_lieu + ", lib_lieu=" + lib_lieu + ", image_lieu=" + image_lieu + "]";
	}

	
	
	
	
	
	
}
