-- DB6: MySQL employee Table
-- (0): CREATING A SAMPLE DATABASE
drop database sample;
create DATABASE sample; 
use sample;
-- Create the table
create table employee (Empno integer(4) primary key,Empname varchar(20), Desig varchar(10), Dept varchar(10),Age integer(2), Place varchar(10));
-- View structure
desc employee;
-- Inserting values
Insert into employee values(1221, 'Sidharth', 'Officer', 'Accounts', 45, 'Salem');
Insert into employee values(1222, 'Naveen', 'Manager', 'Admin', 32, 'Erode');
Insert into employee values(1223, 'Ramesh', 'Clerk', 'Accounts', 33, 'Ambathur');
Insert into employee values(1224, 'Abinaya', 'Manager', 'Admin', 28, 'Anna Nagar');
Insert into employee values(1225, 'Rahul', 'Officer', 'Accounts', 31, 'Anna Nagar');
-- Selecting all records
select * from employee;
-- Adding 2 more records
Insert into employee values(3226, 'Sona', 'Manager', 'Accounts', 42, 'Erode');
Insert into employee values(3227, 'Rekha', 'Officer', 'Admin', 34, 'Salem');
select * from employee;
-- Adding one more field
alter table employee add(doj date);
desc employee;
-- Inserting DOJ for each employee
update employee set doj = '21-03-2010' where empno=1221;
update employee set doj = '13-05-2012' where empno=1222;
update employee set doj = '25-10-2017' where empno=1223;
update employee set doj = '17-06-2018' where empno=1224;
update employee set doj = '02-01-2018' where empno=1225;
update employee set doj = '31-12-2017' where empno=3226;
update employee set doj = '16-08-2015' where empno=3227;
select * from employee;
-- Checking null values in doj
select * from employee where empno is null;
-- List the employees who joined after 2018/01/01
select * from emp where doj > '01-01-2018';