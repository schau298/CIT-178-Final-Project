CREATE DATABASE myFinalProject;


GO
USE myFinalProject;

CREATE TABLE Games(
VideoGameID int NOT NULL,
Name varchar(100) NOT NULL,
Graphics varchar(100) NOT NULL,
Genre varchar(100) NOT NULL,
Medium varchar(100) NOT NULL,
StorageSize int,
Cost money,
PlatformID int NOT NULL,
PRIMARY KEY (VideoGameID),
);

GO 
CREATE TABLE Customers(
CustomerID int NOT NULL,
CustomerName varchar(50) NOT NULL,
Address varchar(100) NOT NULL,
ZipCode varchar(10) NOT NULL,
Email varchar(30),
Cell varchar(20),
PRIMARY KEY (CustomerID)
);

GO
CREATE TABLE ZipCode(
Zipcode varchar(10) NOT NULL,
City varchar(20) NOT NULL,
State varchar(2) NOT NULL,
PRIMARY KEY (ZipCode)
);

GO
CREATE TABLE Platforms(
PlatformID int NOT NULL,
PlatformName varchar(20) NOT NULL,
PRIMARY KEY (PlatformID)
);

GO 
CREATE TABLE Orders(
OrderID int NOT NULL,
Date varchar(10) NOT NULL,
CustomerID int NOT NULL,
PRIMARY KEY (OrderID)
);

GO
CREATE TABLE OrderDetails(
OrderDetailsID int NOT NULL,
OrderID int NOT NULL,
Inventory# int NOT NULL,
Quantity int NOT NULL,
PRIMARY KEY (OrderDetailsID)
);

