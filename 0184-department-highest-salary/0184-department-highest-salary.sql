select d.name as Department, e.name as Employee, e.salary
from Employee as e join Department as d 
on e.departmentId = d.id 
where e.salary = ( select max(salary) from Employee where departmentId = d.id )