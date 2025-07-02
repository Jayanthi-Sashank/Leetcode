/* Write your T-SQL query statement below */

SELECT  MAX(SALARY) AS SecondHighestSalary FROM EMPLOYEE WHERE SALARY not in (SELECT MAX(SALARY) FROM EMPLOYEE);