-- use mydb;
drop table salgrade;
drop table employee;
drop table department;

create table salgrade (
	grade int,
    losal int,
    hisal int
);

insert into salgrade values (1,	700,	1200);
insert into salgrade values (2,	1201,	1400);
insert into salgrade values (3,	1401,	2000);
insert into salgrade values (4,	2001,	3000);
insert into salgrade values (5,	3001,	9999);
commit;


create table department (
	dno int(2) primary key,
    dname varchar(14),
    loc varchar(13)
);

insert into department values (10,	'ACCOUNTING',	'NEW YORK');
insert into department values (20,	'RESEARCH',	'DALLAS');
insert into department values (30,	'SALES',	'CHICAGO');
insert into department values (40,	'OPERATIONS',	'BOSTON');
commit;


CREATE TABLE employee (
	eno int(4),
    ename varchar(10),
    job varchar(9),
    manager int(4),
    hiredate timestamp,
    salary double(7, 2),
    commission double(7, 2),
    dno int(2),
    primary key (eno),
    FOREIGN KEY (dno) REFERENCES department(dno)
);



Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7369,'SMITH','CLERK',7902,str_to_date('1980,12,17','%Y,%m,%d'),800,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7499,'ALLEN','SALESMAN',7698,str_to_date('1981,02,20','%Y,%m,%d'),1600,300,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7521,'WARD','SALESMAN',7698,str_to_date('1981,02,22','%Y,%m,%d'),1250,500,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7566,'JONES','MANAGER',7839,str_to_date('1981,04,02','%Y,%m,%d'),2975,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7654,'MARTIN','SALESMAN',7698,str_to_date('1981,09,28','%Y,%m,%d'),1250,1400,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7698,'BLAKE','MANAGER',7839,str_to_date('1981,05,01','%Y,%m,%d'),2850,null,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7782,'CLARK','MANAGER',7839,str_to_date('1981,06,09','%Y,%m,%d'),2450,null,10);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7788,'SCOTT','ANALYST',7566,str_to_date('1987,07,13','%Y,%m,%d'),3000,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7839,'KING','PRESIDENT',null,str_to_date('1981,11,17','%Y,%m,%d'),5000,null,10);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7844,'TURNER','SALESMAN',7698,str_to_date('1981,09,08','%Y,%m,%d'),1500,0,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7876,'ADAMS','CLERK',7788,str_to_date('1987,07,13','%Y,%m,%d'),1100,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7900,'JAMES','CLERK',7698,str_to_date('1981,12,03','%Y,%m,%d'),950,null,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7902,'FORD','ANALYST',7566,str_to_date('1981,12,03','%Y,%m,%d'),3000,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7934,'MILLER','CLERK',7782,str_to_date('1982,01,23','%Y,%m,%d'),1300,null,10);
commit;

select * from employee;