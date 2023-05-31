create database JoinOrderCustomer;
use JoinOrderCustomer;
--ordertable
create table OrderDetails(
OrderID int identity(1,1) primary key,
ProductName varchar(50),
OrderDate Date,
OrderQuantity BIGINT,
CustomerID int foreign key (CustomerID) REFERENCES CustomerDetails(CustomerID),
);
insert into OrderDetails values('Laptop','2023-05-25',2,1);
insert into OrderDetails values('TV','2023-04-25',1,2);
insert into OrderDetails values('Mobile','2023-05-21',4,3);
insert into OrderDetails values('Earbuds','2023-05-23',3,4);
insert into OrderDetails values('Fridze','2023-05-28',1,5);
select * from OrderDetails;

--Customertable
create table CustomerDetails(
CustomerID int identity(1,1) primary key,
CustomerName varchar(50),
CustomerAddress varchar(50),
CustomerPhone Bigint,
);
insert into CustomerDetails values('Ask','Hyd street5 kphb',7894561235);
insert into CustomerDetails values('Ask','kkd street10 ghati',9512367894);
insert into CustomerDetails values('Ask','rjy street15 godavari',7418529635);
insert into CustomerDetails values('Ask','Hyd street1 city',7412589635);
select * from CustomerDetails;
update CustomerDetails set CustomerName='sai' where CustomerID=2;
update CustomerDetails set CustomerName='kumar' where CustomerID=3;
update CustomerDetails set CustomerName='anand' where CustomerID=4;


--join
select CustomerDetails.CustomerID,CustomerDetails.CustomerName,CustomerDetails.CustomerPhone,CustomerDetails.CustomerAddress,OrderDetails.ProductName,OrderDetails.OrderDate,OrderDetails.OrderQuantity from CustomerDetails
join
OrderDetails on CustomerDetails.CustomerID=OrderDetails.OrderID;

