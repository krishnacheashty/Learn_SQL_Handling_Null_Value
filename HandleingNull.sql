use SalesDB;
--for connect database.

-- Here we learn null function.how to Handel null function.

--Find the average scores of the customers

SELECT 
C.CustomerID,
SCORE,
AVG(Score) OVER() AvgScores
FROM Sales.Customers AS C


 --Display the full name of customers in a single field.
 --by merging their first and last names,
 --and add 10 bonus points to each customer's score.

 SELECT 
 C.CustomerID,
 C.FirstName,
 C.LastName,
 (C.FirstName +' '+ COALESCE(C.LastName,'')) AS FullName,
--now add 10 each score row
COALESCE(c.Score,0) +10 newScoreWithBonus
--HERE we hendle score null value by coalesce() function.
FROM Sales.Customers AS C;


