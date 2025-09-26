CREATE TABLE employes9 (
    emp_id SERIAL PRIMARY KEY ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);
INSERT INTO employes9 (first_name, last_name, department, salary, hire_date)
VALUES 
('Alice', 'Johnson', 'HR', 45000, '2021-05-14'),
('Bob', 'Smith', 'IT', 60000, '2020-03-22'),
('Charlie', 'Williams', 'Finance', 52000, '2019-07-19'),
('David', 'Brown', 'IT', 75000, '2018-11-02'),
('Eva', 'Davis', 'HR', 48000, '2022-01-09'),
('Frank', 'Miller', 'Finance', 55000, '2021-12-15'),
('Grace', 'Wilson', 'IT', 72000, '2020-06-11');

-- Get all data
SELECT * FROM employes9;

-- Filter HR employees
/*SELECT * FROM employes9 WHERE department = 'HR';

-- Salaries greater than 50k
SELECT * FROM employes9 WHERE salary > 50000;

-- Names starting with A
SELECT * FROM employes9 WHERE first_name LIKE 'A%';

-- Top 3 salaries
SELECT * FROM employes9 ORDER BY salary DESC LIMIT 3;

-- Distinct departments
SELECT DISTINCT department FROM employes9;*/

SELECT department, AVG(salary) AS avg_salary
FROM employes9
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM employes9
GROUP BY department;

SELECT department, COUNT(*) AS emp_count
FROM employes9
GROUP BY department
HAVING COUNT(*) > 5;

SELECT department, MAX(salary) AS highest_salary
FROM employes9
GROUP BY department;

SELECT*FROM employes9;
