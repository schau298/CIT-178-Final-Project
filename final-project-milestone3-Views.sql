/* Final Project Views 

--View 1

USE myFinalProject;
GO
--Updateable View:
CREATE VIEW Game_view
AS
SELECT [Name], Genre, StorageSize, Cost
FROM Games
JOIN Platforms ON Games.PlatformID = Platforms.PlatformID;

--TASK (Update the Table)

UPDATE Game_view
SET StorageSize='100'
WHERE [Name]='CyberPunk';

SELECT * FROM Game_view

-- View 2

USE myFinalProject;
GO
CREATE VIEW Adventure_Games
AS 
SELECT * FROM Games
WHERE Genre='Adventure';
GO 

SELECT * FROM Adventure_Games;

-- View 3

USE myFinalProject;
GO
CREATE VIEW Digital_Games
AS 
SELECT * FROM Games
WHERE Medium='Digital';
GO 

SELECT * FROM Digital_Games;

-- View 4

USE myFinalProject;
GO
CREATE VIEW Small_Games ([Name],Genre,StorageSize,Cost)
AS 
SELECT [Name],Genre,StorageSize,Cost
FROM Games
WHERE StorageSize <32;
GO 

SELECT * FROM Small_Games;
*/