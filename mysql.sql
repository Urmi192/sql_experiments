create database employee;
show databases;
use employee;
create table DEPT(
dept_no INT PRIMARY KEY,
dname VARCHAR(255)
);
use employee;
create table employee(
empno int primary key,
ename varchar(255),
job varchar(255),
mgr int,
hiredate date,
sal int,
comm int,
dept_no int);
show tables;


