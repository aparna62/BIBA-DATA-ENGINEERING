select *from employee;
sp_help employee;
select *from sys.tables;
select *from SalesList;
select *from studentdata1;
insert into studentdata1(id,name,age,grade) values(null,'stella',20,'A+');
insert into studentdata1(id,name,age,grade) values(1,'appu',20,'A+');
insert into studentdata1(id,name,age,grade) values(5,'bob',21,'C');
insert into studentdata1(id,name,age,grade) values(6,'sunny',21,null);
insert into studentdata1(id,name,age,grade) values(7,null,21,'C');

/*Perfoming data cleaning */

/* STEP-1 ----> Deleting the duplicate data*/
select name,count(name) as Actual_count from studentdata1
group by name
having count(name)>1;

with cte as
(
select name,
ROW_NUMBER() over (partition by name order by name desc) as row_no
from studentdata1)

select *from cte;

/*deleting the duplicated  rows from temporary result set*/
delete from cte
where row_no>1;

/*STEP-2 ---> removing the null values over here*/

select *from studentdata1;

/*selecting the data where student name is null*/
select * from studentdata1
where name is null;

delete from studentdata1
where name is null;

/*updating the null values where id and grade column is null*/

select *from studentdata1 where id is null;

update studentdata1 set id=7 
where id is null;

select *from studentdata1;

/*Now we need to update the value of grade also*/

update studentdata1 set grade='A' 
where grade is null;

/* Capitalization of names in data*/
update  studentdata1
set name=UPPER(name);

 














