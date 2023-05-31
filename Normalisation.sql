create database Normalisation;
use Normalisation;
--
create table Orders(
OrderID INT identity (1,1) Primary Key,
Product varchar(15),
Quantity BIGINT,
);
Alter table Orders Drop column Product;
Alter table Orders Add ProductID INT Foreign Key REFERENCES Product(ProductID);

Insert into Orders values('Phone',2);
Insert into Orders values('Laptop',3);
Insert into Orders values('EarBuds',1);
Insert into Orders values('TV',5);
Insert into Orders values('Fridze',1);
select * from Orders;

--Product table
create table Product(
ProductID Int identity(1,1) primary key,
ProductName varchar(20),
);
Insert into Product values('PHONE');
Insert into Product values('LAPTOP');
Insert into Product values('EARBUDS');
Insert into Product values('TV');
Insert into Product values('FRIDZE');
SELECT * from Product;


create table Customer(
CustomerID INT identity(1,1) Primary Key,
CustomerName varchar(20),
CustomerEmail varchar(20),
);

select * from Customer;
Insert into Customer values('Ask','ask@gmail.com');
Insert into Customer values('sai','sai@gmail.com');
Insert into Customer values('kumar','kumar@gmail.com');
Insert into Customer values('anand','anand@gmail.com');
Insert into Customer values('nadh','nadh@gmail.com');
Insert into Customer values('dinu','dinu@gmail.com');

--Join
select Customer.CustomerName,Customer.CustomerEmail,Orders.OrderID,Product.ProductName,Orders.Quantity from Orders
join Customer on Customer.CustomerID=Orders.OrderID
join Product on Product.ProductID=Orders.OrderID;

--EmployeeTable
create table Employees(
EmployeeID INT identity(1,1) Primary Key,
EmployeeName varchar(20),
Salary BIGINT,
);
select * from Employees;
Insert into Employees values('Satish',1000);
Insert into Employees values('balu',2000);
Insert into Employees values('nani',3000);
Insert into Employees values('subu',4000);
Alter table Employees Add Id int Foreign Key REFERENCES Department (Id);

--DepartmentTable
create table Department(
Id int identity(1,1) primary key,
Department varchar(20),
);

select * from Department;
Insert into Department values('Tester');
Insert into Department values('Developer');
Insert into Department values('Hr');
Insert into Department values('finance');

--join
select Employees.EmployeeID,EmployeeName,Employees.Salary,Department.Department from Employees
join
Department on Employees.EmployeeID=Department.Id;



