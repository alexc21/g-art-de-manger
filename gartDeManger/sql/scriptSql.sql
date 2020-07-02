
drop table if exists appartenir;
drop table if exists famille;
drop table if exists produit;
drop table if exists etat;
drop table if exists lieu;

#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: lieu
#------------------------------------------------------------

CREATE TABLE lieu(
        id_lieu    Int auto_increment not null ,
        lib_lieu   Varchar (50) not null ,
        image_lieu Varchar (150) not null
	,CONSTRAINT lieu_PK PRIMARY KEY (id_lieu)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: famille
#------------------------------------------------------------

CREATE TABLE famille(
        id_fami Int auto_increment not null
	,CONSTRAINT famille_PK PRIMARY KEY (id_fami)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: etat
#------------------------------------------------------------

CREATE TABLE etat(
        id_etat Int auto_increment not null,
        lib_etat varchar(20)
	,CONSTRAINT etat_PK PRIMARY KEY (id_etat)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: produit
#------------------------------------------------------------

CREATE TABLE produit(
        id_prod   Int auto_increment not null ,
        nom_prod  Varchar (100) not null ,
        desc_prod Varchar (300) not null ,
        date_acha Date not null default(current_date()) ,
        date_pere Date not null default(current_date()),
        quantite  Int not null ,
        poids     Decimal(5,2) not null ,
		id_etat   Int not null,
        id_lieu   Int not null ,
        
	CONSTRAINT produit_PK PRIMARY KEY (id_prod),
    CONSTRAINT produit_lieu_FK FOREIGN KEY (id_lieu) REFERENCES lieu(id_lieu) ,
    CONSTRAINT produit_etat_FK FOREIGN KEY (id_etat) REFERENCES etat(id_etat)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: appartenir
#------------------------------------------------------------

CREATE TABLE appartenir(
        id_fami Int not null ,
        id_prod Int
	,CONSTRAINT appartenir_PK PRIMARY KEY (id_fami,id_prod)

	,CONSTRAINT appartenir_famille_FK FOREIGN KEY (id_fami) REFERENCES famille(id_fami)
	,CONSTRAINT appartenir_produit0_FK FOREIGN KEY (id_prod) REFERENCES produit(id_prod) ON delete cascade
)ENGINE=InnoDB;

/*create index CONCERNER_FK on etat (
	id_etat
);*/


create index CONTENIR_FK on produit (
	id_lieu
);


create index APPARTENIR_FK on appartenir(
	id_fami
);