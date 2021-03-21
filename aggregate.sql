 
SELECT 
AVG(Grade) AS AvgGrade,
AVG(DISTINCT Grade) AS AvgDistinctGrade,
SUM(Grade) AS OrderTotal,
MIN(Grade) AS MinLine,
MAX(Grade) AS MaxLine,
COUNT(Grade) AS CountLine
FROM (VALUES (1, 100),
 (1, 100),
 (1, 100),
 (1, 100),
 (1, 100),
 (1, 20)
 ) dt (StudentId, Grade);
