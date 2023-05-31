create database ProductItems;
use ProductItems;
--product table
create table Product(
ProductID int identity(1,1) primary key,
ProductName varchar(50),
CategoryID int,
SupplierID int,
ProductPrice Decimal(10,2),
foreign key (CategoryID) REFERENCES Category(CategoryID),
foreign key (SupplierID) REFERENCES Supplier(SupplierID),
);
insert into Product values('Laptop',1,1,45999.99);
insert into Product values('TV',2,2,155999.99);
insert into Product values('Phone',3,3,25000.00);
update Product set ProductPrice=155999.99 where ProductName='TV';
update Product set ProductPrice=25000.00 where ProductName='Phone';

select * from Product;
--category table
create table Category(
CategoryID int identity(1,1) primary key,
categoryName varchar(50),
);
select * from Category;
Insert into Category values('electronic');
Insert into Category values('electronic');
Insert into Category values('electronic');
--supplier table
create table Supplier(
SupplierID int identity(1,1) primary key,
SupplierName varchar(50),
);
select * from Supplier;
Insert into Supplier values('Flipkart');
Insert into Supplier values('Flipkart');
Insert into Supplier values('Flipkart');


--attribute table
create table ProductAttributes(
AttributeID int identity(1,1) primary key,
Attribute varchar(50),
);
select * from ProductAttributes;
Insert into ProductAttributes values('lenovo silver color i5 processor');
Insert into ProductAttributes values('slice display 4k view');
Insert into ProductAttributes values('Realme 6gb and 256gb black color');

--join
select Product.ProductID,Product.ProductName,ProductAttributes.Attribute,Category.categoryName,Supplier.SupplierName,Product.ProductPrice from Product
join Category on Category.CategoryID=Product.ProductID
join Supplier on Supplier.SupplierID=Product.ProductID
join ProductAttributes on ProductAttributes.AttributeID=Product.ProductID;