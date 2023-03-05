# 2023-Spring HW1

## 參考下列表格，以SQL回答下列的查詢
(註:EMP表示employee DEP表示department)
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
