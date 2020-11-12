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
WHERE dno = 0 AND job='MANAGER';

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
