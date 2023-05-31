create database SubQuery;
use SubQuery;
--
create Table Students(
ID INT identity(1,1) Primary Key,
Name varchar(20),
Age INT,
Grade Decimal(10,2),
);
Alter Table Students Add Location varchar(15);
select * from Students;
Insert into Students values('Sai',22,85.00);
Insert into Students values('Kumar',30,90.00);
Insert into Students values('Anand',25,70.00);
Insert into Students values('Nadh',32,60.00);
Insert into Students values('Dinu',18,65.00);
Insert into Students values('Arjun',35,80.00);

update Students set Location='KKD' where Name='Sai';
update Students set Location='RJY' where Name='Kumar';
update Students set Location='VIZ' where Name='Anand';
update Students set Location='VIJ' where Name='Nadh';
update Students set Location='HYD' where Name='Dinu';
update Students set Location='KHM' where Name='Arjun';
--SUBQUERY MinAge
select * from Students where Age=(select Min(Age) from Students) ;
--SUBQUERY 
select Name,Age,Grade from Students where Grade in (select Grade from Students where Grade>80);
--SUBQUERY
select * from Students where Location = (select Location from Students where Location ='KKD');

select * from Students where Age>(select Avg(Age) from Students) ;
select * from Students where Grade>(select Avg(Grade) from Students) ;

