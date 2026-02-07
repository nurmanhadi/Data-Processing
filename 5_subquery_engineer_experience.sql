select *
from employees
where name in(
        select name
        from employees
        where year_of_experience <= 3
    );