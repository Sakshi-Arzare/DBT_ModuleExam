create table DEPT
(DEPTNO int,
DNAME varchar(15),
LOC varchar(10));
insert into DEPT values
(10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');
select * from DEPT;
DROP table DEPT;
create table EMP
(EMPNO int,
ENAME varchar(10),
JOB varchar(9),
HIREDATE date,
sal float(7,2),
comm float(7,2),
DEPTNO int);
drop table emp;
select * from EMP;
insert into EMP values
(7839,'KING','MANAGER', '1991-11-17',5000,NULL,10),
(7698,'BLAKE','CLERK', '1981-05-01',2850,NULL,30),
(7782,'CLARK','MANAGER', '1981-06-09',2450,NULL,10),
(7566,'JONES','CLERK', '1981-04-02',2975,NULL,20),
(7654,'MARTIN','SALESMAN', '1981-09-28',1250,1400,30),
(7499,'ALLEN','SALESMAN', '1981-02-20',1600,300,30);
select  POSITION('AR' in ENAME) from emp;
select deptno ,count(ename) from EMP
group by deptno;

select * from EMP where sal BETWEEN 2500 and  5000;

select ename from emp
ORDER BY ename desc;
select lower(job) from emp;
select ename, length(ename) from EMP;

select deptno,ename from emp
order by deptno; 
select ename, sal*0.2 as "HRA" from emp;

