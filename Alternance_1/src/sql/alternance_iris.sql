drop database if exists alternance_iris ; 
create database alternance_iris ; 
use alternance_iris; 

create table entreprise (
	identreprise int (5) not null auto_increment , 
	designation varchar (50), 
	adresse varchar (50), 
	secteurAct varchar (50),
	primary key(identreprise)
	);
	
create table etudiant (
	idetudiant int (5) not null auto_increment , 
	nom varchar (50), 
	prenom varchar (50),
	email varchar (50),
	promotion varchar (50), 
	identreprise int (5) not null, 
	primary key (idetudiant), 
	foreign key (identreprise) references entreprise (identreprise)
);