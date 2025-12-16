create database Salary_Database
use Salary_Database

select * from salaries
----------------------Section employee_id-----------------------
---Q1 How many Employees at each performance score ? 
select performance_score,count(performance_score) as count_of_each_score from salaries 
group by performance_score order by  count(performance_score) desc ;
--Q2 How many male and female ?
select gender,count(gender) as count_of_each_gender from salaries 
group by gender order by  count(gender) desc ;
--Q3 How many Employees for each country ?
select country,count(country) as count_of_each_country from salaries 
group by country order by  count(country) desc ;
--Q4 How many Employees for each city ?
select city,count(city) as count_of_each_city from salaries 
group by city order by  count(city) desc ;
--Q5 How many Employees for each Education ?
select education,count(education) as count_of_each_education from salaries 
group by education order by  count(education) desc ;
--Q6 How many Employees for each job_title ?
select job_title,count(job_title) as count_of_each_job_title from salaries 
group by job_title order by  count(job_title) desc ;
--Q7 How many Employees for each Department ?
select department,count(department) as count_of_each_department from salaries 
group by department order by  count(department) desc ;
--Q8 Top 10 Employees salary ?
select top 10 employee_id ,salary from salaries 
order by salary desc;
--Q9 lowest 10 Employees salary ?
select top 10 employee_id ,salary from salaries 
order by salary asc;
--Q10 avg salary for all Employees ?
select avg(salary)as AVG_salary from salaries; 
--Q11 Top 10 Employees bonus ?
select top 10 employee_id ,bonus from salaries 
order by bonus desc;
--Q12 lowest 10 Employees bonus ?
select top 10 employee_id ,bonus from salaries 
order by bonus asc;
--Q13 avg bonus for all Employees ?
select avg(bonus)as AVG_bonus from salaries ;
--Q14 How many employees have the highest working hours ?
Select top 1  work_hours_per_week , count(work_hours_per_week) as count_of_employees from salaries
group by work_hours_per_week order by work_hours_per_week desc ;
--Q15 How many employees have the lowest working hours ?
Select top 1  work_hours_per_week , count(work_hours_per_week) as count_of_employees from salaries
group by work_hours_per_week order by work_hours_per_week asc ;
--Q16 avg working hours per week ?
Select avg(work_hours_per_week) as AVG_Working_hours_per_week from salaries;
--Q17 Which work hours per week is the most frequent ?
Select top 1  work_hours_per_week , count(work_hours_per_week) as count_of_employees from salaries
group by work_hours_per_week order by count(work_hours_per_week) desc ;
--Q18 How many employees remote  or not ?
select remote_work , count(remote_work) as Number_of_employees from salaries 
group by remote_work order by count(remote_work) desc;  
--Q19 Which performance score  is the most frequent ?
Select top 1  performance_score , count(performance_score) as count_of_employees from salaries
group by performance_score order by count(performance_score) desc ;
--Q20 How many employees are hired each year ? 
select joining_year , count(joining_year) as sum_of_employees from salaries 
group by joining_year order by count(joining_year) desc ;
--Q21 AVG hire per year  ? 
Select avg(sum_of_employees) as avg_hire_per_year from
(select joining_year , count(joining_year) as sum_of_employees from salaries 
group by joining_year ) as each_year  ;
--Q22 How many employees in each contract type ?
select contract_type , count(contract_type) as Number_of_employees from salaries 
group by contract_type order by count(contract_type) desc;  
--Q23 How many employees in each  age group  ?
select age_group , count(age_group) as Number_of_employees from salaries 
group by age_group order by count(age_group) desc;  
--Q24 How many employees in each  age group  ?
select experience_level , count(experience_level) as Number_of_employees from salaries 
group by experience_level order by count(experience_level) desc;  
-------------Salary section -----------------------------
--Q1 top 10 employees salary ? 
select top 10 name, job_title, salary
from salaries
order by  salary desc;
--Q2 AVG salary for each job_title ? 
select job_title, AVG(salary) as Avg_Salary
from  salaries
group by  job_title
order by Avg_Salary desc;
--Q3 Top 1 department salary ? 
select  department, AVG(salary) as Avg_Salary
from salaries
group by department
order by  Avg_Salary desc ;
--Q4 Compare salaries for remote work vs on site work?
select remote_work, AVG(salary) AS Avg_Salary, count(*) as Total_Employees
from  salaries
group by  remote_work;
--Q5 The relationship between experience and salary ?
select experience_level, avg (salary) as Avg_Salary
from salaries
group by experience_level
order by experience_level desc ;
--Q6 Highest salary  nationalities ?
select country, avg (salary) as Avg_Salary
from salaries
group by country
order by Avg_Salary desc ;
--Q7 avg salary for each contract type ?
select contract_type, avg(salary) as Avg_Salary
from salaries
group by contract_type;
--Q8 Salary distribution by education ? 
select education, avg(Salary) as Avg_Salary
from salaries
group by education
order by  Avg_Salary desc;
--Q9 avg salary for each gender ?
 select gender , count(*)as Total_Employees  ,AVG(salary) as Avg_Salary 
 from salaries
 group by gender 
----------------- Various questions-----------------
--Q1 avg performance for each depart ment 
 select  department, AVG(performance_score) as Avg_Performance
from  salaries
group by  department
order by  Avg_Performance desc;
--Q2 Do employees who work longer hours receive a higher bonus?
select work_hours_per_week, AVG(bonus) as Avg_Bonus
from salaries
group by  work_hours_per_week
order by  work_hours_per_week desc;
