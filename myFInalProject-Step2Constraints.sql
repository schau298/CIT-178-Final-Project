--USE myFinalProject;
GO;
ALTER TABLE Games WITH CHECK
ADD CONSTRAINT FK_PlatformID FOREIGN KEY(PlatformID) REFERENCES Platforms(PlatformID)
ON UPDATE CASCADE 
GO
 ALTER TABLE Customers WITH CHECK
ADD CONSTRAINT FK_ZipCode FOREIGN KEY(Zipcode) REFERENCES Zipcode(ZipCode)
ON UPDATE CASCADE 
GO
ALTER TABLE Orders WITH CHECK
ADD CONSTRAINT FK_CustomerID FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
ON UPDATE CASCADE 

ALTER TABLE OrderDetails WITH CHECK
ADD CONSTRAINT FK_OrderID FOREIGN KEY(OrderID) REFERENCES Orders(OrderID)
ON UPDATE CASCADE
