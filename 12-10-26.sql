-- SQL: Structured Query Language
-- Relational Database: Tables connected to eachother

SELECT * FROM my_table; -- Fetch All data

-- 1 & 2 view the table (SELECT, FROM)
SELECT *              -- All
FROM students;

SELECT student_name, gpa, school_lunch       -- select Column
FROM students;

--3. Data Filter: show students who get school lunch (WHERE)

SELECT student_name, gpa, school_lunch       -- select Column
FROM students
WHERE school_lunch = 'Yes' AND gpa > 3.3;    -- Filter