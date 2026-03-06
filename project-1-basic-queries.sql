
-- Project 1: Basic SQL Queries
-- Database: AttritionDB
-- Author: Buchi Christian
-- Program: Data Analyst Mentorship Program 2026


-- Query 1: Retrieve all records ordered by age ascending
SELECT *
FROM attrition
ORDER BY Age ASC;

-- Query 2: Display the attrition table, ordering the data alphabetically by department in ascending order.

SELECT *
FROM attrition
ORDER BY Department ASC;


-- Query 3: Show the attrition table sorted by the number of years at the company in ascending order.

SELECT *
FROM attrition
ORDER BY YearsAtCompany ASC;

-- Query 4: Retrieve all records from the attrition table ordered by age in descending order.

SELECT *
FROM attrition
ORDER BY Age DESC;

-- Query 5: Display the attrition table, ordering the data alphabetically by department in descending order.

SELECT *
FROM attrition
ORDER BY Department DESC;


-- Query 6: Show the attrition table sorted by the number of years at the company in descending order.
SELECT *
FROM attrition
ORDER BY YearsAtCompany DESC;


-- Query 7: Calculate the total number of years at the company for all employees.

SELECT SUM(YearsAtCompany) AS Total_Years
FROM attrition;

-- Query 8: Find the sum of the number of companies worked at by all employees.

SELECT SUM(NumCompaniesWorked) AS total_comapany_worked
FROM attrition;

-- Query 9: Calculate the total age of all employees in the attrition table.

SELECT SUM(Age) AS total_age
FROM attrition;

-- Query 10: Find the total number of attritions (yes) in the table.

SELECT SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS total_attritions
FROM attrition;

-- Query 11: Calculate the sum of years at the company for employees from the medical education field.

SELECT SUM(YearsAtCompany) AS medical_years 
FROM attrition 
WHERE EducationField = 'Medical';

-- Query 12: Calculate the average age of employees in the attrition table.

SELECT AVG(Age) AS average_ages
FROM attrition;

-- Query 13:  Find the average number of years worked at the company for all employees.

SELECT AVG(YearsAtCompany) AS average_years_worked 
FROM attrition;

-- Query 14: Calculate the average number of companies worked by employees.

SELECT AVG(numCompaniesWorked) AS average_companies_worked
FROM attrition;

-- Query 15: Find the average age of employees in the research and development department.

SELECT AVG(Age) 
FROM attrition 
WHERE Department = 'Research & Development';

-- Query 16: Calculate the average number of years at the company for male employees.
SELECT AVG(YearsAtCompany) AS years_at_company
FROM attrition 
WHERE Gender = 'Male';

-- Query 17:  Find the average age of employees from the life sciences education field.

SELECT AVG(Age) AS average_age_of_employees
FROM attrition 
WHERE EducationField = 'Life Sciences';

-- Query 18: Count the number of employees in the attrition table.

SELECT COUNT(*) AS TotalEmployees 
FROM attrition;

-- Query 19: Find the count of attrition in the table.

SELECT Attrition, COUNT(*) AS count_of_attrition
FROM attrition
GROUP BY Attrition;

-- Query 20:  Count the number of employees in each department.

SELECT Department, COUNT(*) AS count_department 
FROM attrition
GROUP BY Department;

-- Query 21: Find the count of employees from the marketing education field. 

SELECT COUNT(*) AS count_marketing
FROM attrition
WHERE EducationField = 'Marketing';

-- Query 22:  Count the number of employees who are married.

SELECT COUNT(*) married_employees
FROM attrition 
WHERE MaritalStatus = 'Married';

-- Query 23: Find the minimum age among all employees in the attrition table.

SELECT MIN(Age) AS minimum_age
FROM attrition ;

-- Query 24: Find the minimum number of years at the company among all employees.

SELECT MIN(YearsAtCompany) AS years_at_company
FROM attrition ;

-- Query 25:  Find the minimum age of employees in the human resources department.

SELECT MIN(Age) AS min_years_of_human_resources
FROM attrition
WHERE department = 'Human Resources';

-- Query 26: Find the maximum age among all employees in the attrition table.

SELECT MAX(Age) AS max_age
FROM attrition;

-- Query 27:  Find the maximum number of years at the company among all employees.

SELECT MAX(YearsAtCompany) AS max_years
FROM attrition;

-- Query 28: Find the maximum age of employees in the human resources department.

SELECT MAX(Age) AS max_age
FROM attrition
WHERE Department = 'Human Resources';







