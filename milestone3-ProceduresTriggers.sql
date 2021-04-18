/* FInal Project Procedures 

USE myFinalProject;
GO
CREATE PROC spFreeGames
AS 
SELECT [Name], PlatformName, Graphics, Cost
FROM Games JOIN Platforms
ON Games.PlatformID = Platforms.PlatformID
WHERE Cost=0
ORDER BY [Name];

EXEC spFreeGames;

USE myFinalProject;
GO
CREATE PROC spCustomerGames
	@DateVar smalldatetime = NULL,
	@CustomerVar varchar(40) = '%'
AS
IF @DateVar IS NULL
	SELECT @DateVar = MIN('Date') FROM Orders;
DECLARE @OrderCount int;
SELECT @OrderCount = COUNT(OrderID)
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE ('Date' >=@DateVar) AND (CustomerName LIKE @CustomerVar);
RETURN @OrderCount;
GO

USE myFinalProject;
GO
CREATE PROC spGameTotal
@GameVar int, @CostTotal money OUTPUT
AS
SELECT @CostTotal = SUM(StorageSize)
FROM Games
WHERE StorageSize >= @GameVar;

DECLARE @TotalInvoices money
EXEC spGameTotal '25', @CostTotal OUTPUT;
PRINT 'Total games greater than 25 ' + CONVERT(varchar,@CostTotal);
SELECT @CostTotal AS 'Total Cost';

Final Project User Defined Functions 

USE myFinalProject;
GO
CREATE FUNCTION fnCustomerID
    (@CustomerName varchar(50))
    RETURNS int
BEGIN
    RETURN (SELECT CustomerID FROM Customers WHERE CustomerName = @CustomerName);
END;

SELECT [Date], OrderID
FROM Orders
WHERE CustomerID= dbo.fnCustomerID('Abraham Lincoln');

USE myFinalProject;
GO
CREATE FUNCTION fnGameStore
	(@VideoGameID int)
	RETURNS table
RETURN
	(SELECT * FROM Games WHERE @VideoGameID =Games.VideoGameID);

SELECT * FROM dbo.fnGameStore(1);
SELECT * FROM dbo.fnGameStore(3);
SELECT * FROM dbo.fnGameStore(6);

CREATE TABLE GameArchives(
		VideoGameID varchar(20),
		[Status] varchar (10)
	);

/* Final Project Triggers */

CREATE TRIGGER Games_DELETE ON Games
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @VideoGameID nchar(5)
    SELECT @VideoGameID =DELETED.VideoGameID
    FROM DELETED

    INSERT INTO GameArchives
    VALUES(@VideoGameID, 'Deleted')
END

DELETE FROM Games WHERE VideoGameID= '1';
DELETE FROM Games WHERE videoGameID='3';
SELECT * FROM GameArchives;

CREATE TRIGGER Games_INSERT_UPDATE ON Games
AFTER INSERT,UPDATE
AS
UPDATE Games SET [Name] = UPPER([Name])
WHERE VideoGameID IN (SELECT VideoGameID FROM Inserted);

CREATE TRIGGER Games_UPDATE ON Games
    AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @VideoGameID nchar(5)
	    DECLARE @Action varchar(50)
    SELECT @VideoGameID = INSERTED.VideoGameID
    FROM INSERTED 

    IF UPDATE(VideoGameID)
        SET @Action = 'Updated ID'   

    IF UPDATE([Name])
        SET @Action = 'Updated Game Name'

    IF UPDATE(Graphics)
        SET @Action = 'Updated Graphics'   

    INSERT INTO GameArchives
    VALUES(@VideoGameID, @Action)
END
*/
