drop database if exists Trgovina;
create database Trgovina default character set=utf8;
use Trgovina;

create table racun(
ID int not null primary key auto_increment,
datum datetime not null,
kupac varchar (50)
);

create table stavka(
racun int,
proizvod int,
kupac int,
kolicina int
);

create table proizvod( 
ID int not null primary key auto_increment,
kategorija varchar not null(50),
naziv varchar(50) not null,
cijena decimal

);

create table kupac(
ID int not null primary key auto_increment,
ime varchar not null(50),
prezime varchar not null(50),
IBAN varchar(34),
adresa varchar not null(200),
brojkupljenih proizvoda int
);



alter table stavka add foreign key (racun) references racun (ID);
alter table stavka add foreign key (proizvod) references proizvod (ID);



insert into racun
	(ID,datum,kupac)
	values
	(null,'2019-05-23 01:41:00','Pero'),
	(null,'2019-05-24 01:42:00', 'Mirela');

insert into stavka
	(racun,proizvod,kolicina)
	values
	(null, 'cetkica', '3'),
	(null, 'pasta za zube', '2');