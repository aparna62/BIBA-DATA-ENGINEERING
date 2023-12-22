select *from employee; 
select *from course;
insert into employee(id,name,age,email,salary,department) values(103,'radha',30,'radha@gmail.com',45000,'IT');
insert into employee(id,name,age,email,salary,department) values(104,'bob',28,'bob@gmail.com',40000,'sales');
insert into employee(id,name,age,email,salary,department) values(105,'jack',28,'jack@gmail.com',40000,'HR');
/*Perfoming equi join*/
select * from employee,course
where course.id=employee.id;

/*Perfoming non equi join*/
select name, coursename, cid,salary from employee,course
where course.cid<=employee.id ;

/*Performing the self join*/
select e1.name,e1.department,e1.salary from employee e1,employee e2
where e1.salary=e2.salary and e2.name='bob';

/*Perfoming the sub Queries with select query*/
select *from employee
where id in(select id from employee where salary>=40000);

select *from employee 
where age in(select age from employee where age=30);

/*Perfoming the sub Queries with insert  query*/
create table temp_data(
id int primary key,
name varchar(10),
age int,
email varchar(30),
salary int,
department varchar(30)
);/*created a table*/

insert into temp_data
select *from employee
where id in(select id from employee);/*inserting data with subqueris*/

select *from temp_data;/*displaying data*/

/*deleting data with subqueries*/
delete from temp_data
where name in
(
select name from employee where name='krish');

select *from temp_data;

/*exists operator */
select * from employee
where exists 
(
select name from employee where name='kishore'
);

select *from employee;
select *from course;

select cid,coursename from course
where exists
(
select id,age from employee where course.id=employee.id and age>=30
);

/*Performing all operator*/
select name,salary from employee
where id = any
( select id from course where course.id=employee.id and employee.salary>=40000 
);

/*Perfoming any operators*/
select name,salary from employee
where id=all
(select id from course where age=70
);

/*correlated Sub-Queries*/
select  id, name, salary, department
from employee e
where salary > (select avg(salary) from employee where department = e.department);

select  id, name, salary, department
from employee e
where salary < (select avg(salary) from employee where department = e.department);

/*set operators*/
create table student1
(
id int,
name varchar(10),
age int,
grade char(2)
);/*creating a table */
insert into student1(id,name,age,grade) values(1,'appu',20,'A+');
insert into student1(id,name,age,grade) values(2,'Ram',21,'A');
insert into student1(id,name,age,grade) values(3,'Radha',21,'B');
insert into student1(id,name,age,grade) values(4,'krish',19,'B+');
insert into student1(id,name,age,grade) values(5,'bob',21,'C');/*inserting values into it*/
create table studentdata2
(
id int,
name varchar(10),
age int,
grade char(2)
);/*creating one more table*/
sp_rename 'student1',  'studentdata1';/*renaming the table*/
select *from studentdata1;
insert into studentdata2(id,name,age,grade) values(1,'bob',20,'A+');
insert into studentdata2(id,name,age,grade) values(2,'Ram',21,'A');
insert into studentdata2(id,name,age,grade) values(1,'kishore',20,'A+');
insert into studentdata2(id,name,age,grade) values(1,'radha',20,'A+');
insert into studentdata2(id,name,age,grade) values(1,'krish',20,'A+');
insert into studentdata2(id,name,age,grade) values(1,'bob',20,'A+');
select *from studentdata2;
update studentdata2 set id=3 where name='kishore';
update studentdata2 set id=4 where name='krish';
update studentdata2 set id=5 where name='bob';
/*now we have to perform the set operations*/

/*union operation*/
select *from studentdata1
union
select *from studentdata2;

/*intersect operation*/
select *from studentdata1
intersect
select *from studentdata2;

/*union all operation*/
select *from studentdata1
unionall
select *from studentdata2;

/*except set operation*/
select *from studentdata1
except
select *from studentdata2;

















