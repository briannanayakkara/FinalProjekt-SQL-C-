use master;
-- laver en if statment så hvis databesen er allerel exixteret så fjerner man databasen og laver en loop så kan den køre som en loop
if db_id ('FinalProject') is not null
begin 
drop database FinalProject 
end 

create database FinalProject;

use FinalProject
--laver table

create table Registrering (
ID nvarchar(10) not null primary key,
Fornavn varchar(10) not null,
Efternavn varchar(20) not null, 
Addrase varchar (50) not null,
Birth_dato date not null,
);

create table Car (
Nummerplade nvarchar (10) not null primary key,
Model varchar(30) not null,
År int not null, 
kilometre int not null

);

create table personCars (
ID nvarchar (10)not null foreign key references Registrering(ID),
Bil1 nvarchar(10) foreign key references Car(Nummerplade),
Bil2 nvarchar(10) foreign key references Car(Nummerplade),
Bil3 nvarchar(10) foreign key references Car(Nummerplade),
Bil4 nvarchar(10) foreign key references Car(Nummerplade),
);




insert into Registrering (ID,Fornavn,Efternavn,Addrase,Birth_dato)
values ('BN','Brian','Nanayakkara','Mørkhøjvej 231D Søborg','1999-07-15');

insert into Car (Nummerplade,Model,År,kilometre)
values('BZ96241','Audi A5','2018','5632'),
('BZ80638','VW Tiguan','2018','5420'),
('BS85317','Audi A3 Sporback','2017','5986'),
('BY91217','Audi A3 Limo','2018','9865')

insert into personCars (ID,Bil1,Bil2,Bil3,Bil4)
values('BN','BZ96241','BZ80638','BS85317','BY91217')

select * from Registrering

select * from Car

select * from personCars

select * from Registrering,personCars 

--Delete from Registrering where ID = 'BN'
--Delete from personCars where ID = 'BN'

--update Registrering set Fornavn = 'Brian',EfterNavn = 'Nanayakkara' where ID = 'BN'
--update personCars set Bil1 = 'BD32221' where ID = 'BN'

select * from Registrering
select * from Car
select * from personCars

select * from Registrering,Car where Nummerplade ='BZ96241'

select * from Registrering inner join personCars on Registrering.ID = personCars.ID 

select * from Registrering inner join  personCars on personCars.ID = Registrering.ID