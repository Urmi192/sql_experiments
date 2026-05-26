use employee;
/*qs1*/
select * from employee
where hiredate < DATE '1980-06-30'
   or hiredate > DATE '1981-12-31';
/*qs2*/
select * from employee
where ename like '_A%';
/*qs3*/
select * from employee
where ename = 5;
/*qs4*/
select * from employee
WHERE ename like '_A%';
/*qs5*/
select * from employee
where job not in ('salesman','clerk','analyst');
/*qs6*/
select ename, sal, (sal * 12) as annual_salary
from employee
order by annual_salary desc;
/*qs7*/
select
  ename,
  sal,
  (sal * 0.15) as hra,
  (sal * 0.10) as da,
  (sal * 0.05) as pf,
  (sal + sal*0.15 + sal*0.10 - sal*0.05) as total_salary
from employee
order by total_salary;
/*qs8*/
update employee
set sal = sal * 1.10
where comm is null or comm = 0;
/*qs9*/
select ename,
       sal * 0.20 as new_sal
from employee
where (sal * 1.20) > 3000;
/*qs10*/
select * from employee
where sal  between 100 and 9999;