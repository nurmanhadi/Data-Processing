select name,
    position,
    join_date,
    release_date,
    year_of_experience,
    salary
from employees
order by year_of_experience desc
limit 3;