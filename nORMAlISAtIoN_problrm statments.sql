create database CommonTableExpression;
use CommonTableExpression;
--inventory Table and cte---
create table Inventory(
InventoryID INT identity(1,1) primary key,
ProductID int,
Quantity int,
LocationID int,
foreign key (ProductID) REFERENCES Products(ProductID),
foreign key (LocationID) REFERENCES Locations(LocationID),
); 

Alter table Inventory Add AttributeID INT foreign key (AttributeID) REFERENCES ProductAttributes(AttributeID);
select * from Inventory;
Insert into Inventory values(1,2,1);
Insert into Inventory values(2,1,2);
Insert into Inventory values(3,4,3);
Insert into Inventory values(4,3,4);
Insert into Inventory values(5,1,5);


-----Product table and cte-----
create table Products(
ProductID INT identity(1,1) primary key,
ProductName varchar(20),
);
insert into Products values('laptop');
insert into Products values('TV');
insert into Products values('Phone');
insert into Products values('AC');
insert into Products values('EarBuds');
select * from Products;


--Attribute table with cte---
create table ProductAttributes(
AttributeID int identity(1,1) primary key,
Attribute varchar(50),
);
select * from ProductAttributes;
Insert into ProductAttributes values('lenovo silver color i5 processor');
Insert into ProductAttributes values('slice display 4k view');
Insert into ProductAttributes values('Realme 6gb and 256gb black color');
Insert into ProductAttributes values('hitachi dual inventor');
Insert into ProductAttributes values('realme buds white color');


 --LOCATION TABLE
 create table Locations(
 LocationID int identity(1,1) primary key,
 LocationName varchar(50),
 );
 select * from Locations;
 insert into Locations values ('kkd');
 insert into Locations values ('rjy');
 insert into Locations values ('vjw');
 insert into Locations values ('hyd');
 insert into Locations values ('viz');

 select Inventory.InventoryID,Products.ProductName,ProductAttributes.Attribute,Inventory.Quantity,Locations.LocationName from Inventory
 join Products on Products.ProductID=Inventory.InventoryID
 join ProductAttributes on ProductAttributes.AttributeID=Inventory.InventoryID
 join Locations on Locations.LocationID=Inventory.InventoryID;