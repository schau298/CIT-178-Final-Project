USE myFinalProject;
/*GO
CREATE INDEX idx_ZipCode ON Customers(Zipcode);
GO
CREATE INDEX idx_PlatformID ON Games(PlatformID);
GO
CREATE INDEX idx_CustomerID ON Orders(CustomerID); */

CREATE INDEX idx_OrderID ON OrderDetails(OrderID);