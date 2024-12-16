# Write your MySQL query statement below
select visited_on,amount,round(amount/7,2) as average_amount from
(Select visited_on, sum(amount) over (rows 6 PRECEDING) as amount,row_num from
(Select customer_id,name,visited_on,sum(amount) as amount,row_num from(Select *,
Dense_rank()Over(order by visited_on) as row_num
from customer
order by visited_on)as subq
group by visited_on)as subq2) as subq3 
where row_num>6;