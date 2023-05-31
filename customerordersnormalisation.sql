create database CustomersDetailsOrders;
use CustomersDetailsOrders;
--Customer table
create table CustomerDetails(
CustomerID int identity(1,1) primary key,
FirstName varchar(50),
LastName varchar(50),
EmailID varchar(50),
Phone BIGINT, 
);
select * from CustomerDetails;
insert into CustomerDetails values('ask','ar','askar@gmail.com',7894561235);
insert into CustomerDetails values('anand','sai','anand@gmail.com',7894561235);
insert into CustomerDetails values('kumar','rowthu','kumar@gmail.com',7894561235);


--Ordertable
Create table Orders
(
OrderId int identity(1,1) primary key,
OrderDate date,
CustomerId int foreign key references CustomerDetails(CustomerID),
TotalAmount Decimal(10,2),
);
select * from Orders;
insert into Orders values('2023-05-25',1,19999.99);
insert into Orders values('2023-05-20',2,19999.99);
insert into Orders values('2023-05-26',3,19999.99);

--join
select CustomerDetails.CustomerID,CustomerDetails.FirstName,CustomerDetails.LastName,CustomerDetails.EmailID,CustomerDetails.Phone,Orders.OrderDate,Orders.TotalAmount from CustomerDetails
join Orders on Orders.OrderId=CustomerDetails.CustomerID;