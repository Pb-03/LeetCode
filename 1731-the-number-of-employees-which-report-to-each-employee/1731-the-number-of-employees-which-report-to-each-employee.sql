# Write your MySQL query statement below
Select e1.employee_id, e1.name, count(e1.employee_id) as reports_count, round(avg(e2.age)) as average_age
from Employees e1
Inner Join Employees e2
On e1.employee_id=e2.reports_to
Group By e1.employee_id, e1.name
ORder by e1.employee_id;