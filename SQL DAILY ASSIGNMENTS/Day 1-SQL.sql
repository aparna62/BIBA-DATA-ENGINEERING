create database pet_adoption;
use pet_adoption;
create table adoptions(
animal_id int not null,
name varchar(40),
contact varchar(40)
);
select *from sys.tables;
create table animals(
id int not null,
name varchar(40),
breed varchar(30),
color varchar(30),
gender varchar(10),
status int
);
select  *from animals;
select *from adoptions;
insert into animals(id,name,breed,color,gender,status) values(501,'Bellyflop','Beagle','Brown','Male',0);
insert into animals(id,name,breed,color,gender,status) values(502,'Snowy','Husky','White','Female',0);
insert into animals(id,name,breed,color,gender,status) values(503,'Princes','Pomarnian','Black','Female',0);
insert into animals(id,name,breed,color,gender,status) values(504,'Cricket','Chihuahua','Brown','Female',0);
insert into animals(id,name,breed,color,gender,status) values(505,'Spot','Dalmation','Black and White','Male',0);
select id,breed from animals;
select name from animals where gender='Female';
select id from animals where status=0;
update animals set color='Brown and red' where name='Spot';
update animals set gender='Red' where id=501;
update animals set status=1 where gender='Female';
delete animals where id=501;
select *from animals;
insert into adoptions(animal_id,name,contact) values(101,'Pinnochio','pinnocchio@gmail.com');
select *from adoptions;
alter table adoptions drop column date ;
insert into adoptions(animal_id,name,contact) values(102,'Stella','Stella@gmail.com');
insert into adoptions(animal_id,name,contact) values(103,'Bob','bob@gmail.com');
insert into adoptions(animal_id,name,contact) values(104,'alex','alex@gmail.com');
insert into adoptions(animal_id,name,contact) values(105,'sunny','sunny@gmail.com');
select *from sys.tables;
select  *from  adoptions;
select *from animals 
order by status desc;
select *from animals 
order by color desc;
alter table animals drop column species ;
alter table animals add species varchar(20);
select *from animals;
update animals set species='Dog';
insert into animals(id,name,breed,color,gender,status,species) values(401,'Meowcat1','asian','Brown','Male',0,'Cat');
insert into animals(id,name,breed,color,gender,status,species) values(402,'Meowcat2','africa','white','Female',1,'Cat');
insert into animals(id,name,breed,color,gender,status,species) values(403,'Meowcat3','africa','Black','FeMale',1,'Cat');
insert into animals(id,name,breed,color,gender,status,species) values(404,'Meowcat4','bengal','Black and white','Male',0,'Cat');
select *from animals 
order by id ;
create table shelter(
id int,
name varchar(50),
location varchar(50)
);
select *from sys.tables;
insert into shelter(id,name,location) values (1,'Animals for Homes','Smart city');
select *from shelter;
alter table animals add  shelter int;
select *from animals;
update animals set shelter=1;
insert into shelter(id,name,location) values(2,'Adopt animals','Green Town');
insert into shelter(id,name,location) values(3,'Give Life','Blue Hills');
insert into animals(id,name,breed,color,gender,status,species,shelter) values(301,'Snoopy','asian','Brown','Male',0,'Dog',2);
insert into animals(id,name,breed,color,gender,status,species,shelter) values(302,'tommy','asian','Brown','Male',1,'Cat',3);
select *from shelter;
select *from shelter 
order by id desc;














