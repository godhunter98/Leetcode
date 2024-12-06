# Write your MySQL query statement below
select W1.id
FROM Weather as W1
JOIN Weather as W2
ON W1.recordDate = DATE_ADD(W2.recordDate, INTERVAL 1 DAY)
WHERE W1.temperature>W2.temperature