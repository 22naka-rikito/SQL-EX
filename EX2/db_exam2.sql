--1
SELECT *
FROM student
WHERE grade=1 AND hometown='東京'
ORDER BY student_id ASC;

--2
SELECT *
FROM student
WHERE grade=1 OR student LIKE '%本'
ORDER BY student_id DESC;

--3
SELECT major_id,max(grade)
FROM student
GROUP BY major_id
ORDER BY major_id ASC;

--4
SELECT hometown,count(hometown)
FROM student
GROUP BY hometown
HAVING count(hometown) >= 2
ORDER BY hometown ASC;

--5
SELECT s.student, m.major_name
FROM student s
JOIN major m
ON s.major_id=m.major_id
ORDER BY m.major_name ASC,s.student ASC;

--6
SELECT s.student_id, s.student, s.hometown, m.major_name
FROM student s
JOIN major m
ON s.major_id=m.major_id
WHERE s.hometown!='東京'
ORDER BY m.major_name ASC, student_id ASC;

--7
SELECT student_id, student, grade
FROM student
WHERE major_id =(   SELECT major_id
                    FROM major
                    WHERE major_name='英文学')
ORDER BY student_id ASC;

--8
SELECT student_id, student, major_id
FROM student
WHERE major_id IN (
    SELECT major_id
    FROM student
    GROUP BY major_id
    HAVING count(major_id) >= 3)
ORDER BY major_id ASC, student_id ASC;