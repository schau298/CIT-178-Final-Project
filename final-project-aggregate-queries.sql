/*
USE myFinalProject;
SELECT ZipCode.State, COUNT(DISTINCT Customers.CustomerID) AS [Customers per State]
FROM Customers JOIN ZipCode ON Customers.ZipCode = ZipCode.Zipcode
GROUP BY ZipCode.State
ORDER BY ZipCode.State ASC;

SELECT COUNT(OrderDetails.Inventory#) AS [Total Games Ordered], Games.Name,
SUM(OrderDetails.Quantity)* Games.Cost AS [Total Price]
FROM OrderDetails JOIN Games ON OrderDetails.Inventory# = Games.VideoGameID
GROUP BY Games.Name, Games.Cost, OrderDetails.Inventory#
ORDER BY OrderDetails.Inventory#;

SELECT COUNT(OrderDetails.OrderID) AS [Total Orders Placed],
AVG(OrderDetails.Inventory#) AS [Average Qty Games Per Order]
FROM OrderDetails JOIN Orders ON OrderDetails.OrderID = Orders.OrderID;

SELECT MIN(Games.Cost) AS [Lowest Priced Game],
	   Max(Games.Cost) AS [Highest Priced Game],
	   AVG(Games.Cost) AS [Average Priced Game]
FROM Games;

SELECT ZipCode.City, COUNT(Orders.OrderID) AS [Number of Orders]
FROM Customers JOIN Zipcode ON ZipCode.Zipcode = Customers.ZipCode
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY ZipCode.City
ORDER BY ZipCode.City;
*/