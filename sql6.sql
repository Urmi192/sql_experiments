use employee;
-- 1
SELECT COUNT(*) AS total_employee FROM employee;

-- 2.
SELECT SUM(sal) AS total_salary FROM employee;

-- 3.
SELECT MAX(sal) AS max_salary FROM employee;

-- 4. 
SELECT MIN(sal) AS min_salary FROM employee;

-- 5.
SELECT AVG(sal) AS avg_salary FROM employee;

-- 6.
SELECT MAX(sal) AS max_clerk_salary FROM employee WHERE job = 'CLERK';

-- 7. 
SELECT MAX(sal) AS max_dept20_salary FROM employee WHERE dept_no = 20;

-- 8. 
SELECT MIN(sal) AS min_salesman_salary FROM employee WHERE job = 'SALESMAN';

-- 9. 
SELECT AVG(sal) AS avg_manager_salary FROM employee WHERE job = 'MANAGER';

-- 10.
SELECT SUM(sal) AS total_analyst_salary FROM employee WHERE job = 'ANALYST' AND dept_no = 40;
-- 11.
SELECT UPPER(ename) as UPPERCASENAME FROM employee;
-- 12.
SELECT LOWER(ename) AS LOWERCASENAME FROM employee;
-- 13.
SELECT CONCAT(
	UPPER(LEFT(ENAME,1)),
    LOWER(SUBSTRING(ENAME,2))
    ) AS PROPER_CASE_NAME FROM employee;
    
-- 14.
SELECT LENGTH('JERRY') AS LENGTH_OF_NAME;
-- 15.
SELECT ENAME, LENGTH(ENAME) AS NAME_LENGTH
FROM EMPLOYEE;