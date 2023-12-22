select *from employee;
select id,name from studentdata1
group by id,name;
select *from studentdata1;
insert into studentdata1(id,name,age,grade) values(7,'kanna',21,'A');
select count(distinct id) as no_of_columns from studentdata1;
select distinct id from studentdata1;
select name,age from studentdata1;

select name,len(name) as name_length from employee;

/*inserting multiple values at a single time*/
insert into studentdata1(id,name,age,grade)
values
(2,'charan',26,'A+'),
(3,'anitha',25,'C');

select *from studentdata1;


