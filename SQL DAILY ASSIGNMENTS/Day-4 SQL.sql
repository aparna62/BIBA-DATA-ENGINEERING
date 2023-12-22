use pet_adoption;
select *from sys.tables;
select *from employee;
create table course
(
cid int,
id int,
coursename varchar(20)
);/*create course table*/
select *from course;

select name,department,cid,coursename from employee
inner join 
course on  employee.id=course.id;/*perfroming inner join*/

select name,department,cid,coursename from employee
left outer join 
course on employee.id=course.id;/*performing left outer join*/

select name,cid,coursename from employee
right outer join
course on employee.id=course.id;/*performing right outer join*/

select * from employee
full outer join
course on employee.id=course.id;/*Performing full outer join*/

select name,cid,department from employee
join
course on  employee.id=course.id;/*performing the natural join*/

select * from employee
cross join
course ;/*performing the cross join*/

/*Performing equi join*/
select *from employee,course
where employee.id=course.id;

/*Perfoming non-equi join*/
select *from employee,course
where employee.id>=course.id;

/*Perfoming self join*/
select e1.name,e1.id,e1.salary from employee e1,employee e2
where e1.salary=e2.salary and e2.name='krish';

select *from employee;
select e1.name,e1.id,e1.salary from employee e1, employee e2
where e1.salary=e2.salary and e2.name='nimmi';



/* String functions*/
select ascii('CB'); /*return leftmost ascii value*/
select char(66); /*return ascii value to character*/
select len('Microsift sql');/*return length*/
select lower('JHON');/*convert to lowercase*/
select replace('Microsoft sql','sql','server');/*replace*/
select reverse('python');/*reverse the string */
select upper('aparna');/*converts to upper*/
select str(136.564,8,4);/*STR(number, length, decimals)*/

/* Date Functions*/
select  getdate ();/*get current date and time*/
select dateadd (mm, 2, '2023-12-07');/*add months to existed date */
select datediff ( year, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'));/*it will return the difference of date,months,years also*/
select datepart (mm, '2008-5-22');/*return months value*/
select day ( '2023-05-30');/*return value of date of that particular day*/
select month ('2023-05-31');/*return month value*/
select year ( '2023-05-3');/*return year value*/

/*Mathematical Functions*/
select abs(-101);/*returns absolute value*/
select sin(1.5);/*returns angle in radians*/
select ceiling(14.01);/*returns the smallest or greater to the specified value*/
select exp(4.5);/*returns the exponencial value*/
select floor(14.75);
select log(5.4);/*return logarithmic value*/

/*Rankig Functions*/
/* row()_number-giving consecutive numbers to rank*/
select *from employee;
select id,name,salary,ROW_NUMBER() over(order by salary desc) as rownumber
from employee;

/*rank()-used to give rank if duplicates allowed ranking will be changed based on duplicates  */
select id,name,salary,rank() over(order by salary desc) as rank
from employee;

/*dense_rank()-used to give ranks consecutively even if duplicates are allowed*/
select id,name,salary,dense_rank() over(order by salary desc) as rank
from employee;

/*ntile() function- it will divide give the rank in groups*/
select id,name,salary,ntile(2) over(order by salary) as rank
from employee;/*without condition*/

select name,salary,ntile(3) over(order by salary) as rank
from employee where salary>40000;/*with condition*/

/*System functions*/
select host_name() as Host_name;/*return system hostname*/
select Host_ID();/*return host id*/
select SUSER_ID();
select USER_ID();
select DB_NAME();/*return database name*/

/*Aggregate funtions*/
select count(*) as total_records from employee;

select count(*) from employee where salary>30000;

select department,min(salary) min_salary from employee
group by department;

select department,max(salary) max_salary from employee
group by department;

select department,sum(salary) from employee
group by department;

select department,avg(salary) from employee
group by department;






