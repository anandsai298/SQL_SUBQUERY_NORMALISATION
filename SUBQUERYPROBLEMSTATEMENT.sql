create database SUBQUERYPROBLEM;
use SUBQUERYPROBLEM;
--table
create Table EMPDETAILS(
ID INT identity(1,1) Primary Key,
Name varchar(20),
Age INT,
Department varchar(20),
Salary BIGINT,
);
--insert data
Insert into EMPDETAILS values('Sai',20,'Coder',40000);
Insert into EMPDETAILS values('Kumar',24,'Coder',50000);
Insert into EMPDETAILS values('Nadh',35,'Tester',60000);
Insert into EMPDETAILS values('Swaroop',30,'Coder',70000);
Insert into EMPDETAILS values('Dinu',29,'Tester',80000);
Insert into EMPDETAILS values('Arjun',32,'Coder',90000);

select * from EMPDETAILS;
--SUBQUERY
--total salary > 50000
select * from EMPDETAILS where Salary in (select Salary from EMPDETAILS where Salary>50000  );
--maximum salary
select * from EMPDETAILS where salary=(select Max(Salary) from EMPDETAILS);
--same department
select * from EMPDETAILS where Department in (select Department from EMPDETAILS where Department='Coder');
--salary>avg salry of same department
select * from EMPDETAILS where Salary>(select AVG(Salary) from EMPDETAILS as Department where EMPDETAILS.Department='Coder' );
--age>30 and same department
select * from EMPDETAILS where Age in (select Age from EMPDETAILS as Department where EMPDETAILS.Department='Coder' and Age>=30);


