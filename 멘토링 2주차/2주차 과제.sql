CREATE DATABASE mystudy;

USE mystudy;

CREATE TABLE student(
student_id INT(8) NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
age INT(4) NULL,
birthday DATE NULL,
PRIMARY KEY(student_id)
);

DESC student;
select * from student;
