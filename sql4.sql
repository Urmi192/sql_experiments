use employee;
/*qs1*/
select ename, job, sal
from employee
where dept_no = 30
order by sal desc;
/*qs2*/
select job, dept_no
FROM employee
where ename like 'A___N'  -- A + 3 any chars + N = 5 letters total
  and length(ename) = 5;  
/*qs3*/
select ename
from employee
where ename like 'S%';
/*qs4*/
SELECT ename
FROM emp
WHERE ename LIKE '%S';
/*qs5*/
select ename
from employee
where dept_no in (10,20,40)
   or job in ('CLERK','SALESMAN','ANALYST');
/*qs6*/
select empno, ename
from employee
where comm is not null;
/*qs7
ifnull ke place me coalesce v use kr skte h*/
select empno, ename, sal + ifnull(comm,0) as total_salary
from employee;
/*qs8*/
select empno, ename, 12 * (sal + ifnull(comm,0)) as annual_salary
from employee;
/*qs9*/
select ename
from employee
where job = 'CLERK'
  and sal > 3000;
/*qs10*/
select ename
from employee
where job in ('CLERK','SALESMAN','ANALYST')
  and sal > 3000;



