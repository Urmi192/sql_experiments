use employee;
-- 1. 
delete e 
    from employee e
    inner join
    dept d on e.dept_no = d.dept_no
    where
    e.hiredate < '1982-12-31'
    and d.location in ('new york', 'durgapur');
-- 2.
select e.ename, e.job, d.dname, d.location
from employee e
inner join dept d
on e.dept_no = d.dept_no
where e.job = 'manager';
-- 3.
-- 4.
select ename, sal
from employee
order by sal desc limit 5;
-- 5. 
select ename, sal
from employee
where sal = (select max(sal) from employee);
-- 6. 
select ename, sal 
from employee
where sal = (
(select max(sal) from employee) + (select min(sal) from employee)
)/2;
-- 7. 
select 
d.dname 
from employee e
inner join dept d
on e.dept_no = d.dept_no
group by d.dname
having count(*) >= 3;
-- 8. 
select
ename, empno, sal
from employee 
where job = 'manager'
and sal > (select avg(sal) from employee);
-- 9.
select m.ename
from employee e 
inner join employee m
where m.job = 'manager'
and m.sal >
(select avg(sal) from employee where e.mgr = m.empno);
-- 10. 
select
ename,sal,comm,(sal+ifnull(comm,0)) as net_pay
from employee
where
(
SAL + IFNULL(COMM,0)) >=ANY(
SELECT SAL
FROM employee
);


