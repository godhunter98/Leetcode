# Write your MySQL query statement below
SELECT Visits.customer_id, 
COUNT(*) as count_no_trans
from Visits
LEFT JOIN Transactions
ON  Visits.visit_id = Transactions.visit_id
WHERE Transactions.transaction_id IS NULL
GROUP BY Visits.customer_id;

