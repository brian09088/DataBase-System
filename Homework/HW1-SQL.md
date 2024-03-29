# 2023-Spring HW1

## 參考下列表格，以SQL回答下列的查詢
註(自行理解)
- EMP表示employee number 員工編號 
- DEP表示department number 部門編號
``` SQL
EMP (emp#, name, dept#, job, manager#, salary, age)
DEP (dept#, dname, location)
CANDIDATE (emp#, name, dept#, salary) 
```
- 1. 如果職員的薪水高於15000，則列出職員的姓名和他（她）所屬的部門位置。
``` SQL
SELECT EMP.name, DEP.location
FROM EMP JOIN DEP ON EMP.dept# = DEP.dept#
WHERE EMP.salary > 15000;
``` 
- 2. 將部門40的員工根據員工編號，依序個別列出各員工的編號、姓名和薪水。
``` SQL
SELECT emp#, name, salary
FROM EMP
WHERE dept# = 40
ORDER BY emp#;
```
- 3.	找出年紀大於30的clerks的平均薪水為多少。
``` SQL
SELECT AVG(salary)
FROM EMP
WHERE job = 'clerk' AND age > 30;
```
- 4.	多少不同的工作是由部門40的員工來執行的？
``` SQL
SELECT COUNT(DISTINCT job)
FROM EMP
WHERE dept# = 40;
```
- 5.	列出所有的工作和每個工作的平均薪水。
``` SQL
SELECT job, AVG(salary)
FROM EMP
GROUP BY job;
```
- 6.	列出所有的員工姓名和他們所屬的部門位置。
``` SQL
SELECT EMP.name,DEP.location
FROM EMP
INNER join DEP /*INNER JOIN (內部連接) 為等值連接，必需指定等值連接的條件*/
ON EMP.dept# = DEP.dept#
```
- 7.	如果有員工的薪水超過他(她)的主管，則列出他（她）的姓名和他(她)主管的姓名。
``` SQL
SELECT E1.name AS employee_name, E2.name AS manager_name
FROM EMP E1 
INNER JOIN EMP E2 ON E1.manager# = E2.emp#
WHERE E1.salary > E2.salary
```
- 8.	找出所有在Columbus且薪水平均小於20000的部門，按照部門的平均薪水遞減排列，依序列出這些部門的部門編號和平均薪水。
``` SQL
SELECT dept#, AVG(salary) AS avg_salary
FROM EMP e JOIN DEP d ON e.dept# = d.dept#
WHERE location = 'Columbus'
GROUP BY dept#
HAVING AVG(salary) < 20000
ORDER BY avg_salary DESC; --遞增是ASC
```
- 9.	將沒有員工的部門從DEP表格中剔除。
``` SQL
DELETE FROM DEP WHERE dept# NOT IN (SELECT dept# FROM EMP);
```
- 10.	調整EMP表格中的員工薪水(如果此人有出現Candidate表格中 )，調漲百分之十。
``` SQL
UPDATE EMP 
SET salary = salary * 1.1 
WHERE emp# IN (
  SELECT emp# 
  FROM CANDIDATE
);
```
