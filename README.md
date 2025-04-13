-- SQL Puzzle: Customer Reactivation

-- Problem:
-- You are given a `Transactions` table that records customer transactions.
-- The task is to find customers who:
-- 1. Have not made any transactions in the last 90 days.
-- 2. Have spent more than ₹50,000 in total in previous transactions.
--
-- The table has the following columns:
-- - `Transaction_ID`: Unique identifier for each transaction.
-- - `Customer_ID`: Unique identifier for each customer.
-- - `Transaction_Date`: Date of the transaction.
-- - `Amount`: The transaction amount.

-- SQL Query:
SELECT Customer_ID
FROM Transactions
GROUP BY Customer_ID
HAVING MAX(Transaction_Date) < CURDATE() - INTERVAL 90 DAY
   AND SUM(Amount) > 50000
LIMIT 0, 1000;

-- Expected Outcome:
-- The query should return a list of `Customer_ID` values for customers who have not transacted in the last 90 days but have previously transacted more than ₹50,000.
