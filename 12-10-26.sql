-- SQL: Structured Query Language
-- Relational Database: Tables connected to eachother

SELECT * FROM my_table; -- Fetch All data

/* THE BIG 6 */

/*  SELECT: Choose Columns
    FROM: Choose Tables
    WHERE: Filter Rows
    GROUP BY: Group Rows
    HAVING: Filter Grouped Rows
    ORDER BY: Sort Rows    */

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

-- 6. Show the grade levels with an avg gpa below 3.3 (HAVING)
SELECT grade_level, AVG(gpa)  AS avg_gpa
FROM students
GROUP BY grade_level
HAVING avg_gpa < 3.3
ORDER BY grade_level;

-- 7. Special Keywords: LIMIT | COUNT | DISTINCT
-- LIMIT
SELECT student_name, gpa, school_lunch       -- select Column
FROM students
LIMIT 5;

-- COUNT
SELECT COUNT(*)      -- Counts no. of Rows
FROM students
WHERE school_lunch = 'Yes' AND gpa > 3.3; 

