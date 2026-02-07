CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    position VARCHAR(50),
    join_date DATE,
    release_date DATE,
    year_of_experience FLOAT,
    salary INT
);
INSERT INTO employees (
        name,
        position,
        join_date,
        release_date,
        year_of_experience,
        salary
    )
VALUES (
        'Jacky',
        'Solution Architect',
        '2018-07-25',
        '2022-07-25',
        8,
        150
    ),
    (
        'John',
        'Assistant Manager',
        '2016-02-02',
        '2021-02-02',
        12,
        155
    ),
    ('Alano', 'Manager', '2010-11-09', NULL, 14, 175),
    (
        'Aaron',
        'Engineer',
        '2021-08-16',
        '2022-08-16',
        1,
        80
    ),
    ('Allen', 'Engineer', '2024-06-06', NULL, 4, 75),
    (
        'Peter',
        'Team Leader',
        '2020-01-09',
        NULL,
        3,
        85
    );