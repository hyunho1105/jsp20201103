select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH';

SELECT * FROM employee WHERE salary > 1000;

SELECT * FROM employee WHERE commission < 500;

SELECT * FROM employee WHERE salary >= 3000;

SELECT * FROM employee WHERE salary <= 2000;

SELECT * FROM employee WHERE ename <='G'; --A~F로 시작하는 이름,'' 만 사용

SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';

SELECT * FROM employee WHERE hiredate = '1981/02/20';
SELECT * FROM employee WHERE hiredate = '81/02/20';
--책예제
SELECT
    *
FROM employee WHERE salary >= 1500;

SELECT
    *
FROM employee WHERE dno = 10;

SELECT
    *
FROM employee WHERE  ename = SCOTT;

SELECT
    *
FROM employee WHERE hiredate <= '1981/01/01';
----------------------------------------------
SELECT * FROM employee
WHERE hiredate >='1982/01/01' AND salary > 3000;

SELECT * FROM employee
WHERE hiredate >='1982/01/01' OR salary > 3000;

SELECT * FROM employee
WHERE NOT salary > 3000;

SELECT *FROM employee
WHERE ename >'C' AND salary > 2000 AND dno <> 30;
--책 예제
SELECT *FROM employee
WHERE dno = 0 AND job = 'MANAGER';

SELECT *FROM employee
WHERE don = 0 or job = 'MANAGER';

SELECT *FROM employee
WHERE NOT dno = 10;

SELECT *FROM employee
WHERE dno <> 10;

SELECT *FROM employee
WHERE salary >= 1000 AND salary <= 1500;

SELECT *FROM employee
WHERE salary < 1000 or salary > 1500;

SELECT *FROM employee
WHERE commission = 300 or commission = 500 or commission = 1400;
----------------------------
SELECT *FROM employee
WHERE salary >=3000 AND salary <= 5000;
SELECT *FROM employee
WHERE salary BETWEEN 3000 AND 5000;

SELECT *FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT *FROM employee
WHERE salary < 3000 OR salary > 5000;
SELECT *FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT *FROM employee
WHERE dno = 10 OR don = 20;
SELECT *FROM employee
WHERE don IN (10,20);

SELECT *FROM employee
WHERE dno NOT IN (20);
----51~54-------------
SELECT *FROM employee
WHERE salary BETWEEN 1000 and 1500;

SELECT *FROM employee
WHERE salary >= 1000 and salary <= 1500;

SELECT *FROM employee
WHERE salary NOT BETWEEN 1000 AND 1500;

SELECT *FROM employee
WHERE salaey < 1000 OR salary > 1500;

SELECT *FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT *FROM employee
WHERE commission IN (300, 500, 1400);

SELECT *FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;

SELECT *FROM employee
WHERE commission<>300 AND commission <> 500 AND commission <> 1400;

SELECT *FROM employee
WHERE commission NOT IN (300, 500, 1400);
--혼자 해보기
--01
SELECT ename, salary, salary+300 FROM employee;
--02
SELECT ename, salary, salary * 12 + 100 From employee
    ORDER by salary * 12 + 100 desc;
--03
SELECT ename, salary FROM employee
    WHERE salary > 2000
    ORDER BY salary desc;
--04
SELECT ename, dno FROM employee
    WHERE eno = 7788;
--05
SELECT ename, salary FROM employee
    WHERE salary NOT BETWEEN 2000 AND 3000;
--06
SELECT ename, job, hiredate FROM employee
    WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';
--07
SELECT ename, dno FROM employee
    WHERE dno in ( 20, 30)
    ORDER by ename;
--08
SELECT ename, salary, dno FROM employee
    WHERE salary BETWEEN 2000 AND 3000
    AND dno in (20, 30)
    ORDER BY ename;
--09
SELECT ename, hiredate FROM employee
    
