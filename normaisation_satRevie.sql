create database normalizationSales;
use normalizationSales;
--productstable
create table Products(
id int identity(1,1) primary key,
Productname varchar(50),
category varchar(50),
UnitPrice decimal(10,2),
);
insert into Products values('Laptop','Electronic',45999.99);
insert into Products values('tv','Electronic',30999.99);
insert into Products values('mobile','Electronic',20999.99);
select * from Products;

--ordertable
create table Orders(
OrderID int identity(1,1) primary key,
);
Alter table Orders Add OrderDate Date;
select * from Orders;
insert into Orders  values('2023-05-12');
insert into Orders  values('2023-05-21');
insert into Orders  values('2023-05-25');

--OrderItems table
create table OrderItems(
OrderID int foreign key (OrderID) REFERENCES Orders(OrderID),
id int foreign key (id) REFERENCES Products(id),
Quantity int,
);
insert into OrderItems values(1,1,2);
insert into OrderItems values(2,2,1);
insert into OrderItems values(3,3,2);
select * from OrderItems;

--join
select Products.id,Products.Productname,Products.category,Products.UnitPrice,Orders.OrderDate,OrderItems.Quantity from Products
join  Orders on Orders.OrderID=Products.id
join OrderItems on Products.id=OrderItems.OrderID;