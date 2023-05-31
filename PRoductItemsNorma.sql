create database CteFactorial;
use CteFactorial;

--cte factorial
with Fcatorial as(
	select 1 as Num,1 as Factorial
	union all

	select Num+1,(Num+1) * Factorial from Fcatorial where Num+1 <=6
)
select Factorial from Fcatorial where Num=6;

---------------
create table Employees(
EmployeeId int identity(1,1) primary key,
EmployeeName varchar(50),
ManagerID int ,
);
insert into Employees values('ask',3);
insert into Employees values('sai',1);
insert into Employees values('kumar',1);
insert into Employees values('anand',2);
insert into Employees values('vijaya',2);
update Employees set EmployeeName='askar' where ManagerID=3;
update Employees set ManagerID=null where EmployeeName='ask';


select * from Employees;
------------------
create table 
--cte employee
WITH EmployeeHierarchy AS (
    SELECT EmployeeId,EmployeeName,ManagerID,EmployeeName AS ManagerName,0 AS Level
    FROM Employees
    WHERE ManagerID IS NULL
	UNION ALL
	SELECT Employees.EmployeeID,Employees.EmployeeName,Employees.ManagerID,EmployeeHierarchy.ManagerName,EmployeeHierarchy.Level + 1
    FROM Employees AS Employees
    INNER JOIN EmployeeHierarchy AS EmployeeHierarchy ON Employees.ManagerID = EmployeeHierarchy.EmployeeID
)
SELECT EmployeeID,EmployeeName,ManagerID,ManagerName,Level FROM EmployeeHierarchy
ORDER BY Level, EmployeeID;

--------------
create table EmployeesLog(
EmployeeId int identity(1,1) primary key,
EmployeeName varchar(50),
ManagerID int ,
);
select  * from EmployeesLog;
insert into EmployeesLog values('ask1',3);
insert into EmployeesLog values('sai1',1);
insert into EmployeesLog values('kumar1',1);
insert into EmployeesLog values('anand',2);
insert into EmployeesLog values('vijaya',2);
----------------------
with diffcte as
	(select * from Employees except select * from EmployeesLog)
select * from diffcte;


