
SELECT *  FROM `dreamhome-db`.staff
ORDER BY fname ASC;

Select 
 salary, fname, lname, salary
from staff

-- Produce a list of all properties that have been views(at least once). showing only the propery number.
select viewDate 
from viewing
where viewdate >1;

-- Produce a list of monthly Salaries for all staff, showing the staff numner, the first and last names, the monthly_salary[Include some necessary SQL code in your query to make the monthly_salary data
-- be displayed under te column heading named, monthly_salary
SELECT 


-- List all Staff whose salary is more than 10000. Display the list sorted beginning from the highest earner to the lowest--

select salary from staff 
where salary >10000 
Order by Salary DSC;


--List the data of all branch offices which are located in either London or Bristol 


Select city from branch
where city is London || city is Bristol; 
