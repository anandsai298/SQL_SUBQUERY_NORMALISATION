create database OrdersDetails;
use OrdersDetails;
--ordertable
Create table Orders
(
OrderId int identity(1,1) primary key,
OrderDate date,
CustomerId int foreign key references Customers(CustomerID),
TotalAmount Decimal(10,2),
);
select * from Orders;
Insert into Orders values('2023-05-19',1,14999.99);
Insert into Orders values('2023-04-25',2,29999.99);
Insert into Orders values('2023-03-30',3,39999.99);
Insert into Orders values('2023-05-20',4,45999.98);
Insert into Orders values('2023-05-26',5,55000.99);

--customertable
Create table Customers
(
CustomerID int primary key,
CustomerName varchar(20),
Address varchar(30)
);
select * from Customers;
Insert into Customers values(1,'Ask','Hyd');
Insert into Customers values(2,'anand','Hyd');
Insert into Customers values(3,'sai','kkd');
Insert into Customers values(4,'kumar','kkd');
Insert into Customers values(5,'vijaya','kkd');

--join
select Orders.OrderId,Orders.OrderDate,Customers.CustomerName,Customers.Address,Orders.TotalAmount from Customers
join Orders on Orders.OrderId=Customers.CustomerID;





