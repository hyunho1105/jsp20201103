select *
from employee;

select eno, ename
from employee;

select ename, salary, salary * 12
from employee;

select ename, salary, job, dno, commission,
        salary*12, salary*12+commission
from employee;

select ename, salary, job, dno, nvl(commission,0),
        salary*12, salary*12+nvl(commission,0)
from employee;

select ename, salary*12+nvl(commission,0) ¿¬ºÀ
from employee;

select ename, salary*12+nvl(commission,0) as ¿¬ºÀ
from employee;

select ename, salary*12+nvl(commission,0) "¿¬ ºÀ"
from employee;
