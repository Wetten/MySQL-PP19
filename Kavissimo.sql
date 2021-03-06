#xampp\mysql\bin>mysql -uedunova -pedunova --default_character_set=utf8 <D:/Lobel/Programiranje/MySQL/Moje/Kavissimo.sql


drop database if exists Kavissimo;
create database Kavissimo default character set=utf8;
use Kavissimo;

create table korisnik(
id int not null primary key auto_increment,
ime varchar (50),
prezime varchar (50),
email varchar (50)
);

create table kafic(
id int not null primary key auto_increment,
ime varchar (50) not null,
adresa varchar (50),
vlasnik int,
kontakt varchar (50),
korisnik int
);

create table vlasnik(
id int not null primary key auto_increment,
ime varchar (50) not null,
prezime varchar (50) not null,
oib varchar (50),
iban varchar (32) not null,
kafic int
);


alter table kafic add foreign key (korisnik) references korisnik (id);
alter table kafic add foreign key (vlasnik) references vlasnik (id);

alter table vlasnik add foreign key (kafic) references kafic (id);


insert into korisnik
(ime,prezime,email)
values
#numba1
('Jurke','Diplić','jdiplic@gmail.com'),
#numba2
('Đuro','Buržić','djurobur@gmail.com'),
#numba3
('Marko','Hojnić','hojnahaš@gmail.com');

insert into kafic
(ime,adresa,kontakt)
values
#numba1
('San Francisco','Radićeva 12','0975555555'),
#numba2
('Amsterdam Bup','Radićeva 69','0979999999');

insert into vlasnik
(ime,prezime)
values
#numba1
('Bobo','Veto');


update kafic set adresa='Radićeva 15' where id=1;

update vlasnik set ime='Lobo' where id=1;

delete from kafic where id=2;



