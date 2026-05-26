use employee;
create table Employee_master as
select * from employee;
delete from Employee_master
where dept_no = 10;
update Employee_master
set SAL = SAL*1.10
where dept_no = 20;
alter table Employee_master
modify SAL decimal(10,2);
desc Employee_master;
drop table Employee_master;