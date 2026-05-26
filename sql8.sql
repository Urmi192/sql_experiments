use employee;
-- 1. 
select dayofyear(curdate())  as totalyear;

select  datediff(
makedate(year(curdate())+1,1),
curdate()
) as days_left;
-- 2.
SELECT MAX(SAL) AS Highest_Salary,
       MIN(SAL) AS Lowest_Salary,
       (MAX(SAL) - MIN(SAL)) AS Difference
FROM Employee;

/*3*/
SELECT ENAME, SAL, COMM
FROM Employee
WHERE COMM > (0.25 * SAL);

/*4*/
select concat('$',format(sal,2)) from employee;

/*5*/
SELECT JOB,
       SUM(CASE WHEN DEPT_NO=10 THEN SAL else 0 END) AS Dept10_Salary,
       SUM(CASE WHEN DEPT_NO=20 THEN SAL else 0 END) AS Dept20_Salary,
       SUM(CASE WHEN DEPT_NO=30 THEN SAL else 0 END) AS Dept30_Salary,
       SUM(SAL) AS Total_Salary
FROM Employee
GROUP BY JOB;

/*6*/

select count(*)as total_employee,
sum(case when year(hiredate) =1980 then 1 else 0 end) as hired_in_1980,
sum(case when year(hiredate) =1981 then 1 else 0 end) as hired_in_1981,
sum(case when year(hiredate) =1982 then 1 else 0 end) as hired_in_1982,
sum(case when year(hiredate) =1983 then 1 else 0 end) as hired_in_1983
from employee;

-- 7.
select date_sub(
      last_day(curdate()),
      interval( dayofweek(last_day(curdate()))-1)day
      ) as last_sunday;
      
-- 8. 
select dept_no, count(*) as total_employee
from employee
group by dept_no;