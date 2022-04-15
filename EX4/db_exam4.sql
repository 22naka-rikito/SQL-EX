--1
CREATE INDEX m_name ON major(major_name);
CREATE INDEX s_name ON student(student);
CREATE INDEX name_grade ON student(grade,student);

--2
CREATE VIEW v_student AS
SELECT s.student_id, s.student, s.hometown, m.major_name
FROM student s
JOIN major m
ON s.major_id=m.major_id
WHERE hometown!='東京';

--3
CREATE MATERIALIZED VIEW mv_student AS
SELECT s.student_id, s.student, s.hometown, m.major_name
FROM student s
JOIN major m
ON s.major_id=m.major_id
WHERE hometown!='東京';

--4
CREATE OR REPLACE FUNCTION func(amount numeric) RETURNS INT
AS $$
begin
    return trunc(amount * 1.1);
end;
$$LANGUAGE plpgsql;
select *, func(amount) from sales;

--5
CREATE TABLE users(
id SERIAL PRIMARY KEY
,name VARCHAR(50)
);

ALTER SEQUENCE users_id_seq RESTART WITH 101;