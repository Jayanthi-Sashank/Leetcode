/* Write your T-SQL query statement below */
WITH ranked_employees AS (
    SELECT 
        employee_id,
        department_id,
        primary_flag,
        COUNT(*) OVER(PARTITION BY employee_id) AS rank_count
    FROM employee
)
SELECT 
    distinct employee_id,
    CASE 
        WHEN rank_count = 1 THEN department_id
        WHEN rank_count > 1 THEN (
            SELECT TOP 1 department_id 
            FROM employee e2 
            WHERE e2.employee_id = e1.employee_id AND e2.primary_flag = 'Y'
        )
    END AS department_id
FROM ranked_employees e1;
