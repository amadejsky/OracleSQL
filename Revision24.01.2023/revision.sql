describe hr.employees;

select job_id, avg(salary) from hr.employees group by job_id having max(Salary)>4000;

select job_id from hr.employees group by job_id having max(Salary)>4000;

select department_id, count(employee_id) as ilosc 
from hr.employees group by department_id
having count(employee_id)<>2;

select first_name,last_name,department_id from hr.employees natural join hr.departments;

describe hr.departments;
select * from hr.departments;

select last_name,first_name from hr.employees e join hr.departments d on e.department_id = d.department_id where location_id like '1700';


select last_name, department_name from hr.employees e join hr.departments d using(department_id) where
department_name like 'I%' and last_name like 'A%';

select department_name, count(last_name) as "ilosc" from hr.employees join hr.departments using(department_id) group by department_name order by department_name;


select z.first_name, z.department_id, salary from hr.employees z
where salary > (select avg(salary) from hr.employees e  where e.department_id=z.department_id);

select first_name from hr.employees where
salary > (select min(salary) from hr.employees where department_id like '1100');

select department_name from hr.employees join hr.departments using(department_id) group by department_name
having count(employee_id) = (select max(count(employee_id)) from hr.employees group by department_id);

select max(count(employee_id)) from hr.employees join hr.departments using(department_id) group by department_id;

