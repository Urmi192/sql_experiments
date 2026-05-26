use employee;
-- 1. 
SELECT ename, empno
FROM employee 
WHERE dept_no = 10
AND sal > ANY (
SELECT sal FROM employee WHERE dept_no <> 10
);
-- 2. 
SELECT ename
FROM employee 
WHERE dept_no = 10
AND sal > ALL (
SELECT sal FROM employee WHERE dept_no <> 10
);
-- 3. 
select e.* from employee e 
    inner join 
dept d 
    on e.dept_no = d.dept_no
    join
salgrade sg
    on e.sal between minpay and maxpay
where
    d.dname = 'sales'
and
    sg.grade = 3;
-- 4. 
SELECT
  EMPNO, ENAME, JOB
     FROM employee
     WHERE
     JOB <> 'MANAGER';
-- 5. 
SELECT
   E.ENAME AS EMPLOYEE_NAME,
   MG.ENAME AS MANAGER_NAME
   FROM
   EMPLOYEE E
   INNER JOIN
   EMPLOYEE MG
   ON E.MGR = MG.EMPNO
   WHERE MG.ENAME ='JONES';
-- 6. 
SELECT
   e.ename, d.dname
   from employee e
   inner join dept d
   on e.dept_no = d.dept_no
   where
   d.dname = 'sales';
-- 7. 
select 
e.ename, e.sal, ifnull(e.comm, 'not alloted') as comm,
d.dname
from employee e 
inner join dept d
on e.dept_no = d.dept_no
where
e.sal between 2000 and 5000
and d.location = 'japan';
-- 8. 
select e.ename, e.sal 
from employee e 
inner join employee mg 
on e.mgr = mg.empno
and e.sal > mg.sal;
-- 9. 
select e.ename, e.dept_no
from employee e 
inner join 
employee mg 
on e.mgr = mg.empno
where e.dept_no = mg.dept_no;
-- 10. 
select e.ename, e.job, e.sal,
sg.grade
from employee e 
join salgrade sg on e.sal between minpay and maxpay
where
e.dept_no in (10,30)
and sg.grade <> 4 and
e.hiredate < '1982-12-31';

 