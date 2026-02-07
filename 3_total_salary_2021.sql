select sum(salary) as total_salary_2021
from employees
where join_date <= '2021-12-31'
    and (
        release_date >= '2021-1-1'
        or release_date = null
    );