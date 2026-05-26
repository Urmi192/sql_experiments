use employee;
create table salgrade(
grade int,
minpay int,
maxpay int);
desc salgrade;

insert into salgrade
              values(1,700,1200),
					(2,1201,1400),
                    (3,1401,2000),
                    (4,2001,3000),
                    (5,3001,9999);

-- 1. 
select 
e.empno, e.ename, e.job, e.sal,
e.dept_no, d.dname
from
-- joining --
employee e inner join dept d
on e.dept_no = d.dept_no;

-- 2. 
select e.ename as employee_name,
mg.ename as manager_name
from
employee e join employee mg
on e.mgr = mg.empno
where mg.ename = 'jones';

-- 3.
select 
e.ename as employee_name, e.job as employee_job,
d.dname as dept_name,
mg.ename as manager_name,
sg.grade as gradepay
from
employee e
inner join dept d on e.dept_no = d.dept_no
join employee mg on e.mgr = mg.empno
join salgrade sg on e.sal between minpay and maxpay
order by d.dname;

-- 4. 
select 
e.empno as employee_number, e.ename as employee_name, e.sal as salary,
d.dname as dept_name,
sg.grade as grade_pay
from
employee e
inner join dept d on e.dept_no = d.dept_no
inner join salgrade sg on e.sal between minpay and maxpay
where e.job <> 'clerk'
order by e.sal desc;

-- 5. 
select 
e.ename as employee_name, e.job as employee_job,
ifnull(mg.ename, 'no manager')as manager_name
from
employee e left join employee mg on e.mgr = mg.empno;

-- 6.
select
e.ename as employee_name, e.job as employee_job,
e.sal * 12 as annual_salary, e.dept_no as department_number,
d.dname as dept_name,
sg.grade
from
employee e
    inner join dept d on e.dept_no =d.dept_no
    inner join salgrade sg on e.sal between minpay and maxpay
    where
    e.sal*12 =36000
    or
    e.job <>'clerk';
-- 7 same
-- 8.
select 
e.empno as employee_number,
e.ename as employee_name,
ifnull(m.empno, '-') as manager_empno,
ifnull(m.ename, 'no manager') as manager_name
from
employee e
left join employee m on e.mgr = m.empno;

-- 9.
select
d.dept_no as department_number,
d.dname as department_name,
sum(e.sal) as total_sal
from
employee e
inner join dept d on e.dept_no = d.dept_no
group by d.dname, d.dept_no;

-- table alter--
alter table dept
add column location varchar(255);

desc dept;

select * from dept;

update dept
set location = 'japan' where dept_no = 40;

update dept
set location = 'newyork' where dept_no = 20;

update dept
set location = 'durgapur' where dept_no = 10;

update dept
set location = 'westbengal' where dept_no = 30;

-- 10. 
select e.empno as employee_number,
e.ename as employee_name,
d.location as posting_place
from
employee e
inner join dept d on e.dept_no = d.dept_no;

-- 11. 
select
e.ename as employee_name,
d.dname as department_name
from
employee e inner join dept d on e.dept_no = d.dept_no;