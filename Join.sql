CREATE TABLE dbo.Test1
 (
 TestValue NVARCHAR(10) NULL
 );
CREATE TABLE dbo.Test2
 (
 TestValue NVARCHAR(10) NULL
 ) ;
GO
INSERT INTO dbo.Test1
VALUES ('apples'),
 ('oranges'),
 (NULL),
 (NULL) ;
INSERT INTO dbo.Test2
VALUES (NULL),
 ('oranges'),
 ('grapes'),
 (NULL) ; 
GO

--INNER JOIN
SELECT * FROM dbo.Test1 t1 INNER JOIN dbo.Test2 t2 ON t1.TestValue = t2.TestValue;
SELECT * FROM dbo.Test1 t1 INNER JOIN dbo.Test2 t2 ON ISNULL(t1.TestValue,1) = ISNULL(t2.TestValue,1);
--LEFT JOIN
SELECT * FROM dbo.Test1 t1 LEFT JOIN dbo.Test2 t2 ON t1.TestValue = t2.TestValue;
--RIGHT JOIN
SELECT * FROM dbo.Test1 t1 RIGHT JOIN dbo.Test2 t2 ON t1.TestValue = t2.TestValue;
--FULL JOIN
SELECT * FROM dbo.Test1 t1 FULL JOIN dbo.Test2 t2 ON t1.TestValue = t2.TestValue;
--CROSS JOIN
SELECT * FROM dbo.Test1 t1 CROSS JOIN dbo.Test2 t2
