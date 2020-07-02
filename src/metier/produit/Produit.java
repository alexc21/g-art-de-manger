package metier.produit;

import java.time.LocalDate;

import metier.etat.Etat;
import metier.lieu.Lieu;

public  class Produit {
		
		private int idProduit;
		private String nomProduit;
		private String descriptionProduit;
		private LocalDate dateAchat;
		private LocalDate datePeremption;
		private int quantite;
		private int poids;
		private Etat etat;
		private Lieu lieuProduit;
		
		
		
		public Produit(int idProduit) {
			super();
			this.idProduit = idProduit;
		}

		public Produit(String nomProduit, String descriptionProduit, LocalDate dateAchat, LocalDate datePeremption,
				int quantite, int poids, Etat etat, Lieu lieuProduit) {
			super();
			this.nomProduit = nomProduit;
			this.descriptionProduit = descriptionProduit;
			this.dateAchat = dateAchat;
			this.datePeremption = datePeremption;
			this.quantite = quantite;
			this.poids = poids;
			this.etat = etat;
			this.lieuProduit = lieuProduit;
		}

		public Produit(int idProduit, String nomProduit, String descriptionProduit, LocalDate dateAchat,
				LocalDate datePeremption, int quantite, int poids, Etat etat, Lieu lieuProduit) {
			super();
			this.idProduit = idProduit;
			this.nomProduit = nomProduit;
			this.descriptionProduit = descriptionProduit;
			this.dateAchat = dateAchat;
			this.datePeremption = datePeremption;
			this.quantite = quantite;
			this.poids = poids;
			this.etat = etat;
			this.lieuProduit = lieuProduit;
		}

		

		public int getIdProduit() {
			return idProduit;
		}

		public String getNomProduit() {
			return nomProduit;
		}

		public String getDescriptionProduit() {
			return descriptionProduit;
		}

		public LocalDate getDateAchat() {
			return dateAchat;
		}

		public LocalDate getDatePeremption() {
			return datePeremption;
		}

		public int getQuantite() {
			return quantite;
		}

		public int getPoids() {
			return poids;
		}

		public Etat getEtat() {
			return etat;
		}

		public Lieu getLieuProduit() {
			return lieuProduit;
		}

		public void setIdProduit(int idProduit) {
			this.idProduit = idProduit;
		}

		public void setNomProduit(String nomProduit) {
			this.nomProduit = nomProduit;
		}

		public void setDescriptionProduit(String descriptionProduit) {
			this.descriptionProduit = descriptionProduit;
		}

		public void setDateAchat(LocalDate dateAchat) {
			this.dateAchat = dateAchat;
		}

		public void setDatePeremption(LocalDate datePeremption) {
			this.datePeremption = datePeremption;
		}

		public void setQuantite(int quantite) {
			this.quantite = quantite;
		}

		public void setPoids(int poids) {
			this.poids = poids;
		}

		public void setEtat(Etat etat) {
			this.etat = etat;
		}

		public void setLieuProduit(Lieu lieuProduit) {
			this.lieuProduit = lieuProduit;
		}

		@Override
		public String toString() {
			return "Produit [idProduit=" + idProduit + ", nomProduit=" + nomProduit + ", descriptionProduit="
					+ descriptionProduit + ", dateAchat=" + dateAchat + ", datePeremption=" + datePeremption
					+ ", quantite=" + quantite + ", poids=" + poids + ", etat=" + etat + ", lieuProduit=" + lieuProduit
					+ "]";
		}
		
		
	
		
		

		

	
}
