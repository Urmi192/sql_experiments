use employee;
-- 1.
select e.ename
from employee e inner join employee m
on e.mgr = m.empno
where e.sal < m.sal
and e.sal > any (
                select sal from employee where job = 'manager'
                );
-- 2. 
select count(*) as total_employee
from 
employee e inner join employee m
on e.mgr = m.empno
where e.sal > m.sal;
-- 3. 
select e.ename 
          from employee e join employee m
          on e.mgr = m.empno
          where e.job = 'manager' and m.job <> 'president';
-- 4. 
delete from
dept
where dept_no not in( select distinct dept_no from employee );
-- 5.
delete from employee 
where dept_no not in(select dept_no from dept);
-- 6. 
select ename, sal
from employee 
where sal not between
(select min(minpay) from salgrade) and
(select max(maxpay) from salgrade);

-- 7.
select e.ename, e.sal, comm,
(sal + ifnull(comm,0)) as net_pay
from employee e
where 
(sal + ifnull(comm,0))  >= any(
          select sal from employee);
-- 8. 
SELECT E.ENAME
FROM EMPLOYEE E INNER JOIN dept D
ON E.DEPT_NO = D.DEPT_NO
WHERE D.DNAME IN('SALES','RESEARCH');

-- 9 --
SELECT
E.ENAME, S.GRADE
FROM
EMPLOYEE E JOIN SALGRADE S ON E.SAL
BETWEEN MINPAY AND MAXPAY
WHERE E.ENAME = 'JONES';

-- 10. 
select d.dname
from dept d 
where length(d.dname) in(
                         select count(*) from employee group by dept_no);
