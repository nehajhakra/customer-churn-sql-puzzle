CREATE TABLE Transactions (
    Transaction_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Transaction_Date DATE,
    Amount DECIMAL(10, 2)
);

INSERT INTO Transactions (Customer_ID, Transaction_Date, Amount)
VALUES
(1, '2024-01-10', 15000.00),
(2, '2024-03-15', 20000.00),
(1, '2024-02-25', 10000.00),
(3, '2024-01-05', 30000.00),
(4, '2023-12-20', 60000.00);

SELECT * FROM Transactions;


-- SQL to find customers who haven’t made a transaction in the last 90 days
SELECT Customer_ID
FROM Transactions
GROUP BY Customer_ID
HAVING MAX(Transaction_Date) < CURDATE() - INTERVAL 90 DAY
   AND SUM(Amount) > 50000
LIMIT 0, 1000;


