create database student_performance_db;
use student_performance_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    school_type VARCHAR(20),
    parent_education VARCHAR(50),
    study_hours INT,
    attendance DECIMAL(5,2),
    parent_percentage DECIMAL(5,2),
    internet_access VARCHAR(10),
    travel_time INT,
    extra_activity VARCHAR(10),
    study_method VARCHAR(20),
    math_score INT,
    science_score INT,
    english_score INT,
    overall_score DECIMAL(5,2),
    final_grade VARCHAR(5)
);
ALTER TABLE students
MODIFY travel_time VARCHAR(20);

-- display all records
select * from students;

truncate table students;


select count(*) from students;
show tables;




-- display all records
select * from students;

-- count total num oof students
select count(*) as total_students from  students;

-- find avg age of std
select avg(age) as average_age from students;

-- list std who study more than 5 hours
   select * from students
   where study_hours > 5;
   
   -- count std by gender
   select gender , count(*) as count
   from students
   group by gender;
   
  -- find students from public schools
  select * from students
  where school_type = 'public';
   
  -- find std with attendence greater than 75%
  select * from  students
  where attendance > 75;
  
  -- find avg math score
  SELECT AVG(math_score) AS avg_math_score
FROM students;
   
   -- find highest overall score
   select max(overall_score) as highest_score
   from students;
   
   -- find lowest overall score
    select min(overall_score) as lowest_score
   from students;
   
   -- std who have internet access
   SELECT * FROM students
WHERE internet_access = 'yes';

-- student participate in extra acitivity 
  SELECT * FROM students
   WHERE extra_activity = 'yes';   
   
 -- count std by school type  
SELECT school_type, COUNT(*) AS total
FROM students
GROUP BY school_type;

-- find std with grade'A'
SELECT * FROM students
WHERE final_grade = 'A';

-- find avg scores of all subject
SELECT 
AVG(math_score) AS avg_math,
AVG(science_score) AS avg_science,
AVG(english_score) AS avg_english
FROM students;

-- student who travel more than 30 min
select * from students
where travel_time> 30;

-- sort std by overall score(highest first)
SELECT * FROM students
ORDER BY overall_score DESC;

-- top 5 performing students
  select * from students
  order by overall_score DESC
  limit 5;
  
  -- std with poor attendance(<50%)
   select  * from students
   where attendance < 50;
   
   -- count std by final grade
   select final_garde,count(*) as
   total_students
   from students
   group by final_garde;