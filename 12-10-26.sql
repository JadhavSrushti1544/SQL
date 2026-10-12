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

-- 4. Sort the students by gpa (ORDER BY)
SELECT student_name, gpa, school_lunch       -- select Column
FROM students
WHERE school_lunch = 'Yes' AND gpa > 3.3     -- Filter
-- ORDER BY gpa;                                -- Sort
ORDER BY gpa DESC;                           -- Sort DESC

-- 5. Show the average gpa for each grade level (GROUP BY)
SELECT grade_level, AVG(gpa) 
FROM students
GROUP BY grade_level
ORDER BY grade_level;

-- 6. 