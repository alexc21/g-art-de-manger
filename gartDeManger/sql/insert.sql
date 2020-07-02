-- lieu
insert into lieu values (1,'frigo','frigo.png');
insert into lieu values(2,'placard','placard.jpg');
select * from lieu;

-- etat
insert into etat values(1, "favoris");
insert into etat values(2, 'non favoris');
select * from etat;


-- famille
insert into famille values();
insert into famille values();
insert into famille values();
insert into famille values();
insert into famille values();
insert into famille values();
insert into famille values();
select * from famille;

-- produit
insert into produit values (null,"pate","pesto","20-02-20","21-02-21",12,259,2,1);
insert into produit values (null,"riz","pesto","20-03-20","21-02-21",12,259,2,1);
insert into produit values (null,"poisson","pesto","20-04-20","21-02-21",12,259,1,1);
insert into produit values (null,"tomate","pesto","20-05-20","21-02-21",12,259,1,1);
insert into produit values (null,"banane","pesto","20-06-20","21-02-21",12,259,2,2);
insert into produit values (null,"comcombre","pesto","20-07-20","21-02-21",12,259,1,2);
insert into produit values (null,"steak","pesto","20-08-20","21-02-21",12,259,2,2);
insert into produit values (null,"patate","pesto","20-09-20","21-02-21",12,259,1,2);
select * from produit;
-- insert into produit values (?,?,?,?,?,?,?,?,?);

-- appartenir

insert into appartenir values (3,2);
insert into appartenir values (6,4);
insert into appartenir values (2,5);
select * from appartenir;

