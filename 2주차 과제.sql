# mystudy라는 DB(스키마)생성하고 default 스키마로 사용
# mystudy라는 DB(스키마)에 student라는 테이블 생성
-- student_id : 8자리 정수 숫자형, NULL 금지, PK, 자동증가
-- name : 20자리 문자열, NULL 금지
-- age : 4자리 정수형, NULL 허용
-- birthday : 날짜형, NULL 허용

CREATE DATABASE mystudy;
USE mystudy;  
-- default 스키마 사용한다는 뜻

CREATE TABLE student(
student_id INT(8) NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
age INT(4) NULL,
birthday DATE NULL,
PRIMARY KEY(student_id)
);

DESC student;
select * from student;
