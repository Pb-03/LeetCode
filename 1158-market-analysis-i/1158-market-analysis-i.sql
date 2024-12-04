# Write your MySQL query statement below
WITH cte AS
(SELECT u.user_id, SUM(CASE WHEN YEAR (o.order_date)=2019 THEN 1 ELSE 0 END ) AS orders_in_2019
FROM Users AS u
LEFT JOIN Orders as o
ON u.user_id=o.buyer_id
GROUP BY u.user_id)

SELECT c.user_id AS buyer_id, u.join_date, c.orders_in_2019
FROM cte AS c
LEFT JOIN Users AS u
ON c.user_id=u.user_id