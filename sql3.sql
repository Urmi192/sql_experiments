use employee;
/*q1*/
select distinct job from employee;
/*q2*/
select * from employee 
where dept_no = 30;
/*q3*/
select distinct dept_no
from employee
where dept_no > 20;
/*q4*/
select * from employee 
where dept_no = 30
and job in('MANAGER', 'CLERK');
/*q5*/
select ename, empno, dept_no
from employee
where job = 'CLERK';
/*q6*/
select * from employee
where job = 'MANAGER'
  and dept_no <> 30;
/*q7*/
select * from employee
where dept_no = 10
  and job not in ('MANAGER','CLERK');
/*q8*/
select ename, job, sal
from employee
where sal between 1200 and 1400;
/*q9
in mtlb include krna 
not in mtlb exclude krna*/
select ename, dept_no
from employee
where job in ('CLERK','ANALYST','SALESMAN');
/*q10*/
select ename, dept_no
from employee
where ename like 'M%';




