CREATE DATABASE joins;/*creating the new database*/

USE joins;

CREATE TABLE department (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

INSERT INTO department(dept_id,dept_name)
VALUES
(1,'HR'),
(2,'Sales'),
(3,'Salesforce'),
(4,'SDE1'),
(5,'SDE2'),
(6,'Support Team');
INSERT INTO department(dept_id,dept_name)
VALUES(7,'Data Analyst');


SELECT *FROM department;

CREATE TABLE employee_data
(
id INT PRIMARY KEY,
employee_name VARCHAR(50),
dept_id INT REFERENCES department(dept_id),
job_role VARCHAR(50)
);

INSERT INTO employee_data(id,employee_name,dept_id,job_role)
VALUES
(1,'Aparna',1,'HR'),
(2,'Kishore',1,'HR'),
(3,'Bob',3,'Salesforce'),
(4,'Kiran',4,'SDE1'),
(5,'Ram',5,'SDE2'),
(6,'Radha',5,'SDE2'),
(7,'Charan',6,'Support Team'),
(8,'Sunny',2,'Sales'),
(9,'Nimmi',3,'Salesforce'),
(10,'Abhi',3,'Salesforce'),
(11,'Heshi',4,'SDE1'),
(12,'Naveen',6,'Support Team');

INSERT INTO employee_data(id,employee_name,dept_id,job_role)
VALUES(13,'Pari',null,null);

/*displaying values from table*/
select *from employee_data;

/*Using Joins*/
/*Inner Join*/
SELECT e.employee_name,e.job_role,d.dept_name
FROM employee_data e
INNER JOIN 
department d ON e.dept_id = d.dept_id;

/*Left Outer Join*/
SELECT e.id,e.employee_name,e.job_role,d.dept_id,d.dept_name
FROM employee_data e
LEFT OUTER JOIN 
department d ON e.dept_id = d.dept_id;

/*Right Outer Join*/
SELECT e.id,e.employee_name,e.job_role,d.dept_id,d.dept_name
FROM employee_data e
RIGHT OUTER JOIN 
department d ON e.dept_id = d.dept_id;

/*Cross join*/
SELECT e.id,e.employee_name AS EMPLOYEE_FULL_NAME,e.job_role,d.dept_id,d.dept_name
FROM employee_data e
CROSS JOIN 
department d ;

/*Joins with subqueries to display the total no of employees in their department*/
SELECT employee_name, dept_id,
       (SELECT COUNT(*) FROM employee_data
	   WHERE dept_id = e.dept_id) AS total_employees
FROM employee_data e;

/*subquery that display the department atleast one employee*/
SELECT dept_name
FROM department d
WHERE EXISTS (SELECT 1 FROM employee_data WHERE dept_id = d.dept_id);

/*subquery that display whose the department has how many no of  employees*/
SELECT dept_name, COUNT(id) AS employee_count
FROM department
JOIN employee_data ON department.dept_id = employee_data.dept_id
GROUP BY dept_name
ORDER BY employee_count DESC;

/*2 nd question-->Manipulate data by using sql commands using groupby and having clause*/
CREATE TABLE student_data
(
id INT,
NAME VARCHAR(20),
age INT,
student_income INT,
gender CHAR(2),
email VARCHAR(20)
);
select *from student_data;

INSERT INTO student_data(id,NAME,age,student_income,gender,email)
VALUES
(101,'Bob',20,2000,'M','bob@gmail.com'),
(102,'mahi',21,3000,'M','mahi@gmail.com'),
(103,'Nethu',21,4000,'F','nethu@gmail.com'),
(101,'Kiran',21,2000,'M','kiran@gmail.com'),
(104,'Kashi',20,2500,'M','kashi@gmail.com'),
(105,'Sowmya',22,3000,'F','sowmya@gmail.com'),
(103,'Arun',20,4000,'M','arun@gmail.com'),
(102,'Rohith',22,5000,'M','rohith@gmail.com'),
(106,'Somanna',21,5000,'M','somanna@gmail.com'),
(107,'Vinnu',21,6000,'F','vinnu@gmail.com'),
(108,'Nikila',21,6000,'F','nikila@gmail.com'),
(109,'Renu',20,6000,'F','renu@gmail.com'),
(101,'Pawan',20,3000,'M','pawan@gmail.com');

UPDATE student_data SET NAME='Nikila Reddy' 
WHERE id=108;
UPDATE student_data SET age=21 
WHERE name='Kiran';
UPDATE student_data SET id=108 
WHERE email='pawan@gmail.com';

DELETE FROM student_data 
WHERE NAME='Kiran';

DELETE FROM student_data 
WHERE name='Nimmi';

/*students having same age with group by*/
SELECT age as same_age_students,COUNT(*) as Total_students
FROM student_data
GROUP BY age;

/*students having same age with group by*/
SELECT age,MAX(student_income)
FROM student_data
GROUP BY age,student_income;

SELECT name,
AVG(student_income) AS avg_income,age
FROM student_data
GROUP BY name,age
ORDER BY name;

SELECT name,
AVG(student_income) AS avg_income
FROM student_data
GROUP BY name
HAVING AVG(student_income) >= 3000
ORDER BY name;

SELECT name,
SUM(student_income) AS avg_income
FROM student_data
GROUP BY name
HAVING SUM(student_income) >= 5000
ORDER BY name;


















