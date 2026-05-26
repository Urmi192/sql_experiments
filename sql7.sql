use employee;
/*qs1*/
select * from DEPT;
/*qs2*/
select e.empno, e.ename,
case e.dept_no
when 10 then 'RESEARCH'
when 10 then 'ACCOUNTING'
when 10 then 'SALES'
when 10 then 'OPERATIONS'
end as dname
from employee e;

select datediff(curdate() - '1947-08-15')
as total_days;

/*qs3*/
select timestampdiff(month,curdate(), '1947-08-15')
as total_month;
/*qs4*/
select date_format('1999-08-15', '%d %m %y')
as formatted_date;
/*qs5 nd 6*/
select concat( ename, 'has joined the company on', date_format(hiredate, '%D %M %Y'))
as output from employee;
/*qs7*/
select  date_add(
        curdate(),
        interval(7 - dayofweek(curdate())
)
day) as next_saturday;
/*qs8*/
select curtime() as currentime;
/*qs9*/
select date_sub(curdate(), interval 3 month)
as threemonthsago;
/*qs10*/
select ename, hiredate from employee
where month(hiredate)= 12;
/*qs11*/
select * from employee
where left(year(hiredate),2) = right(sal,2);
/*qs12*/ /*qs13*/
/*qs14*/

/*qs15*/