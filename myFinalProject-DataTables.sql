/* USE myFinalProject;
GO
INSERT INTO ZipCode VALUES ('11001', 'Atlanta', 'MI')
INSERT INTO ZipCode VALUES ('22002', 'Buffalo', 'NY')
INSERT INTO ZipCode VALUES ('33003', 'Tampa Bay', 'FL')
INSERT INTO ZipCode VALUES ('44004', 'New York', 'NY')
INSERT INTO ZipCode VALUES ('55005', 'New Jersey', 'NJ')
INSERT INTO ZipCode VALUES ('66006', 'Chicago', 'IL')

INSERT  INTO Games VALUES (1, 'CyberPunk', ' High Definition', 'Action', 'Digital', 60, 60, 3)
INSERT  INTO Games VALUES (2, 'Minecraft', ' Low Resolution', 'Adventure', 'Disc', 10, 20, 4)
INSERT  INTO Games VALUES (3, 'Terraria', ' Pixelated', 'Survival', 'Disc', 10, 5, 2)
INSERT  INTO Games VALUES (4, 'Fortnite', ' Colorful', 'Shooter', 'Digital', 30, 0, 1)
INSERT  INTO Games VALUES (5, 'Ancestors', ' Realistic', 'Survival', 'Digital', 35, 40, 5)
INSERT  INTO Games VALUES (6, 'No Mans Sky', ' Immersive', 'Adventure', 'Disc', 40, 60, 6)

INSERT INTO Platforms VALUES(1, 'Xbox')
INSERT INTO Platforms VALUES(2, 'iPhone')
INSERT INTO Platforms VALUES(3, 'Windows PC')
INSERT INTO Platforms VALUES(4, 'Google Stadia')
INSERT INTO Platforms VALUES(5, 'Playstation')
INSERT INTO Platforms VALUES(6, 'Oculus VR')

INSERT INTO Customers VALUES(1, 'George Washington', '666 Sixth Street', '11001', 'george@wash.com', '231-789-1001')
INSERT INTO Customers VALUES(2, 'Abraham Lincoln', '444 Fourth Street', '22002', 'abe@lincoln.net', '231-789-2002')
INSERT INTO Customers VALUES(3, 'John Adams', '333 Third Street', '33003', 'john@adams.com', '231-789-3003')
INSERT INTO Customers VALUES(4, 'Thomas Jefferson', '222 Second Street', '44004', 'thomas@jeff.net', '231-789-4004')
INSERT INTO Customers VALUES(5, 'Barrack Obama', '111 First Street', '55005', 'barrack@obama.com', '231-789-5005')
INSERT INTO Customers VALUES(6, 'Joe Biden', '555 Fifth Street', '66006', 'joe@biden.com', '231-789-6006')

SELECT * FROM Customers;

INSERT INTO Orders VALUES(1, '1/30/20', 1)
INSERT INTO Orders VALUES(2, '2/20/20', 2)
INSERT INTO Orders VALUES(3, '3/3/20', 3)
INSERT INTO Orders VALUES(4, '4/4/20', 5)
INSERT INTO Orders VALUES(5, '5/5/20', 4)
INSERT INTO Orders VALUES(6, '6/6/20', 4)

SELECT * FROM Orders;

INSERT INTO OrderDetails VALUES(1, 1, 1, 3)
INSERT INTO OrderDetails VALUES(2, 1, 2, 2)
INSERT INTO OrderDetails VALUES(3, 2, 3, 6)
INSERT INTO OrderDetails VALUES(4, 2, 4, 1)
INSERT INTO OrderDetails VALUES(5, 3, 5, 4)
INSERT INTO OrderDetails VALUES(6, 3, 6, 4)
INSERT INTO OrderDetails VALUES(7, 4, 6, 2)
INSERT INTO OrderDetails VALUES(8, 5, 5, 3)
INSERT INTO OrderDetails VALUES(9, 6, 2, 5)
INSERT INTO OrderDetails VALUES(10, 6, 2, 1)

SELECT * FROM OrderDetails;
*/