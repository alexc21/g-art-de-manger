select id_lieu, lib_lieu from lieu;

insert into produit( nom_prod, desc_prod, date_acha, date_pere, quantite, poids, id_etat, id_lieu) values (?,?,?,?,?,?,?,?);


insert into produit( nom_prod, desc_prod, date_acha, date_pere, quantite, poids,id_etat, id_lieu) values (?,?,?,?,?,?,?,?);

select * from produit;

-- liste general de produit
select id_prod, nom_prod, desc_prod, date_acha, date_pere, quantite, round(poids), id_lieu from produit;

-- liste des produits en fonction des lieux
select id_prod, nom_prod, desc_prod, date_acha, date_pere, quantite, round(poids), id_lieu from produit where id_lieu = 1;


select id_lieu, lib_lieu, image_lieu from lieu;
select id_etat, lib_etat from etat;

select id_prod, nom_prod, desc_prod, date_acha, date_pere, quantite, poids, p.id_etat, p.id_lieu , lib_etat, lib_lieu, image_lieu from produit p
inner join etat e on e.id_etat = p.id_etat
inner join lieu l on l.id_lieu = p.id_lieu
order by id_etat;

-- Error Code: 1451. Cannot delete or update a parent row: a foreign key 
-- constraint fails (`gdm`.`appartenir`, CONSTRAINT `appartenir_produit0_FK` FOREIGN KEY (`id_prod`) REFERENCES `produit` (`id_prod`))

delete from produit where id_prod = ?;

update produit set nom_prod = "pate", desc_prod ="blabla", date_acha = "20-03-07", date_pere = "20-04-07", quantite = 15, poids = round(18), id_etat = 1, id_lieu = 2   where id_prod = 1;