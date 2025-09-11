Use Namitha

-- Assignment (Top N Books per User) 

SELECT *
FROM (
    SELECT 
        u.userID,
        u.names,
        b.Title,
        b.Price,
        ROW_NUMBER() OVER (PARTITION BY u.userID ORDER BY b.Price DESC) AS RowNum,
        RANK() OVER (PARTITION BY u.userID ORDER BY b.Price DESC) AS RankNum,
        DENSE_RANK() OVER (PARTITION BY u.userID ORDER BY b.Price DESC) AS DenseRankNum
    FROM orders o
    INNER JOIN users u ON o.userID = u.userID
    INNER JOIN books b ON o.ProductID = b.ProductID
) ranked
WHERE ranked.RowNum <= 2
ORDER BY userID, Price DESC;

-- Assignment 2 (Ranking Users by Total Spending)

SELECT 
    u.userID,
    u.names,
    SUM(b.Price) AS Total_Spending,
    RANK() OVER (ORDER BY SUM(b.Price) DESC) AS RankNum,
    DENSE_RANK() OVER (ORDER BY SUM(b.Price) DESC) AS DenseRankNum
FROM orders o
INNER JOIN users u ON o.userID = u.userID
INNER JOIN books b ON o.ProductID = b.ProductID
GROUP BY u.userID, u.names
ORDER BY Total_Spending DESC;
