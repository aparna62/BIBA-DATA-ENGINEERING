sp_help adoptions;
select *from animals;
alter table animals alter column name char(10);
alter table animals alter column name varchar(50);
alter table animals add age_of_species int;
sp_help animals;
select *from animals;
sp_rename 'animals.name','name_of_species';
sp_rename 'animals','animal_data';
alter table animal_data
drop column SPECIES;
select *from animal_data;
create table studentdata(
name varchar(20),
age int
);
select *from studentdata;
truncate table studentdata;
drop table studentdata;

