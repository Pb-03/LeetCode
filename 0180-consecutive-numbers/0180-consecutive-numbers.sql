# Write your MySQL query statement below
SELECT 
	DISTINCT Num AS ConsecutiveNums
FROM (
    SELECT 
        Num,
        LEAD(Num, 1) OVER (ORDER BY id) AS NextNum1,
        LEAD(Num, 2) OVER (ORDER BY id) AS NextNum2
    FROM Logs
) subquery
WHERE Num = NextNum1 AND Num = NextNum2;