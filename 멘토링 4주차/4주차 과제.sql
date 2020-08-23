### student2 
CREATE DATABASE mystudy;
USE mystudy;
CREATE TABLE student2(
	id INT(5) NOT NULL,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(1),
    loc_id VARCHAR(5),
    class VARCHAR(2), 
	birth date,
    PRIMARY KEY(id));

    DESC student2;
    SELECT * FROM student2;

    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10001,'김민','M','L03','C','2001-03-01');
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10002,'이승철','M','L01','D','1999-12-31');
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10003,'한승리','M','L05','E','2003-04-27');
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10004,'박구철','M','L02','A','2001-09-09');
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10005,'김희진','F','L01','B','2003-02-01');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10006,'성유일','M','L06','E','2002-04-27');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) values(10007,'천수민','F',null ,'C',null);
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10008,'정나훈','M','L05','C','1999-12-31');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10009,'민지국','M',null,'E',null);
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10010,'표치수','M','L14','B','2003-04-27');
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10011,'가온지','F','L07','A',null);                            
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10012,'이지현','F',null,'A','2002-04-27');
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10013,'장민혁','M','L04','C','2001-03-01');
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10014,'오인준','M','L02','B',null);
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10015,'윤석구','M',null,'D','2002-04-27');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10016,'김진수','M','L01','E','1999-12-31');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10017,'김미진','F', null,'E',null);
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10018,'현진곤','M','L10','D','1999-06-12');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10019,'유해순','M','L03','D','2001-03-01');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10020,'고용진','M',null,'A',null);
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10021,'사훈','M','L02','B','2002-04-27');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10022,'정도호','M','L01','C','2003-02-01');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10023,'권순민','M','L05','E','2003-04-27');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10024,'송치연','F',null,'E','1999-06-12');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10025,'지혜숙','F','L02','C',null);
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10026,'차동마','M',null,'B','1999-12-31');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10027,'나훈','M','L01','A',null);
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10028,'이태현','M',null,'B','2003-02-01');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10029,'김청기','M','L05','C','2003-04-27');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10030,'강지혜','F',null,'E','2001-09-09');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10031,'소현지','F','L01','C','1999-12-31');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10032,'김수민','F','L09','A',null);
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10033,'강성진','M','L02','B','2002-05-05');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10034,'김미진','F','L07','B','2001-03-01');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10035,'현승리','M','L03','A','2002-05-05');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10036,'이순진','F','L13','E','1999-12-31');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10037,'태형구','M','L11','D','2003-06-27');
    INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10038,'박진수','M','L06','C','2002-04-27');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10039,'용혜숙','F','L03','B','2001-03-01');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10040,'장지원','F',null,'A','1999-10-12');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10041,'추가영','F','L02','A','2003-01-27');
	INSERT INTO student2 (id, name, gender, loc_id, class, birth) VALUES(10042,'명진숙','F','L05','D','2001-03-01');
                  
                  
### location
CREATE DATABASE mystudy;
USE mystudy;
CREATE TABLE location(
	loc_id VARCHAR(5) NOT NULL,
    location VARCHAR(50) NOT NULL,
    PRIMARY KEY(loc_id));
    
    DESC location;
	SELECT * FROM location;

	INSERT INTO location (loc_id,location) VALUES('L01', '서울');
	INSERT INTO location (loc_id,location) VALUES('L02', '부산');
	INSERT INTO location (loc_id,location) VALUES('L03', '대구');
	INSERT INTO location (loc_id,location) VALUES('L04', '전북');
	INSERT INTO location (loc_id,location) VALUES('L05', '전남');
	INSERT INTO location (loc_id,location) VALUES('L06', '경남');
	INSERT INTO location (loc_id,location) VALUES('L07', '경북');
	INSERT INTO location (loc_id,location) VALUES('L08', '충남');
	INSERT INTO location (loc_id,location) VALUES('L09', '충북');
    INSERT INTO location (loc_id,location) VALUES('L10', '경기');
	INSERT INTO location (loc_id,location) VALUES('L11', '인천');
    INSERT INTO location (loc_id,location) VALUES('L12', '대전');
	INSERT INTO location (loc_id,location) VALUES('L13', '울산');
    INSERT INTO location (loc_id,location) VALUES('L14', '제주');
	INSERT INTO location (loc_id,location) VALUES('L15', '기타');
    
    
### class_info
CREATE DATABASE mystudy;
USE mystudy;
CREATE TABLE class_info(
	class VARCHAR(2) NOT NULL,
    class_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(class));
    
    DESC class_info;
	SELECT * FROM class_info;

	INSERT INTO class_info (class, class_name) VALUES('A', '햇님반');
	INSERT INTO class_info (class, class_name) VALUES('B', '풀꽃반');
	INSERT INTO class_info (class, class_name) VALUES('C', '바다반');
	INSERT INTO class_info (class, class_name) VALUES('D', '소망반');
	INSERT INTO class_info (class, class_name) VALUES('E', '사랑반');

### graduation
CREATE DATABASE mystudy;
USE mystudy;
CREATE TABLE graduation(
	id INT(5) NOT NULL,
    graduation_year VARCHAR(4) NOT NULL,
    PRIMARY KEY(id));
    
    DESC graduation;
	SELECT * FROM graduation;

INSERT INTO graduation(id, graduation_year) values(10001,'2020');				
INSERT INTO graduation(id, graduation_year) values(10003,'2019');				
INSERT INTO graduation(id, graduation_year) values(10004,'2018');				
INSERT INTO graduation(id, graduation_year) values(10006,'2020');				
INSERT INTO graduation(id, graduation_year) values(10007,'2019');				
INSERT INTO graduation(id, graduation_year) values(10008,'2020');				
INSERT INTO graduation(id, graduation_year) values(10020,'2018');				
INSERT INTO graduation(id, graduation_year) values(10023,'2018');				
INSERT INTO graduation(id, graduation_year) values(10024,'2018');				
INSERT INTO graduation(id, graduation_year) values(10026,'2020');				
INSERT INTO graduation(id, graduation_year) values(10027,'2020');				
INSERT INTO graduation(id, graduation_year) values(10028,'2018');				
INSERT INTO graduation(id, graduation_year) values(10030,'2020');				
INSERT INTO graduation(id, graduation_year) values(10031,'2019');				
INSERT INTO graduation(id, graduation_year) values(10033,'2018');				
INSERT INTO graduation(id, graduation_year) values(10034,'2020');				
INSERT INTO graduation(id, graduation_year) values(10035,'2019');				
INSERT INTO graduation(id, graduation_year) values(10036,'2019');				
INSERT INTO graduation(id, graduation_year) values(10039,'2020');				
INSERT INTO graduation(id, graduation_year) values(10041,'2019');				
INSERT INTO graduation(id, graduation_year) values(10042,'2020');				

    
### score                                                            
CREATE DATABASE mystudy;
USE mystudy;
CREATE TABLE score(
	id INT(5) NOT NULL,
    score INT(3) NOT NULL,
    PRIMARY KEY(id));
    
    DESC score;
	SELECT * FROM  score;
    
	INSERT INTO  score (id, score) VALUES(10001, 5);
    INSERT INTO  score (id, score) VALUES(10002, 4);
    INSERT INTO  score (id, score) VALUES(10003, 3);
    INSERT INTO  score (id, score) VALUES(10004, 1);
    INSERT INTO  score (id, score) VALUES(10005, 2);
    INSERT INTO  score (id, score) VALUES(10006, 3);
    INSERT INTO  score (id, score) VALUES(10007, 4);
    INSERT INTO  score (id, score) VALUES(10009, 4);
    INSERT INTO  score (id, score) VALUES(10010, 5);
    INSERT INTO  score (id, score) VALUES(10011, 3);
    INSERT INTO  score (id, score) VALUES(10012, 2);
    INSERT INTO  score (id, score) VALUES(10013, 3);
    INSERT INTO  score (id, score) VALUES(10014, 2);
    INSERT INTO  score (id, score) VALUES(10015, 3);
    INSERT INTO  score (id, score) VALUES(10016, 4);
    INSERT INTO  score (id, score) VALUES(10018, 2);
    INSERT INTO  score (id, score) VALUES(10019, 3);
    INSERT INTO  score (id, score) VALUES(10020, 5);
    INSERT INTO  score (id, score) VALUES(10021, 4);
    INSERT INTO  score (id, score) VALUES(10022, 3);
    INSERT INTO  score (id, score) VALUES(10023, 2);
    INSERT INTO  score (id, score) VALUES(10024, 1);
    INSERT INTO  score (id, score) VALUES(10025, 3);
    INSERT INTO  score (id, score) VALUES(10026, 5);
    INSERT INTO  score (id, score) VALUES(10027, 4);
    INSERT INTO  score (id, score) VALUES(10028, 3);
    INSERT INTO  score (id, score) VALUES(10029, 4);
    INSERT INTO  score (id, score) VALUES(10030, 4);
    INSERT INTO  score (id, score) VALUES(10031, 3);
    INSERT INTO  score (id, score) VALUES(10032, 1);
    INSERT INTO  score (id, score) VALUES(10033, 3);
    INSERT INTO  score (id, score) VALUES(10034, 4);
    INSERT INTO  score (id, score) VALUES(10035, 4);
    INSERT INTO  score (id, score) VALUES(10036, 3);
    INSERT INTO  score (id, score) VALUES(10037, 2);
    INSERT INTO  score (id, score) VALUES(10039, 2);
    INSERT INTO  score (id, score) VALUES(10040, 3);
    INSERT INTO  score (id, score) VALUES(10041, 4);
    INSERT INTO  score (id, score) VALUES(10042, 5);


### prize
CREATE DATABASE mystudy;
USE mystudy;
CREATE TABLE prize(
	id INT(5) NOT NULL,
    prize VARCHAR(10) NOT NULL);
    
    
    DESC prize ;
    SELECT * FROM  prize ;

	INSERT INTO prize (id, prize) VALUES(10027,'개근상');
	INSERT INTO prize (id, prize) VALUES(10027,'모범상');
	INSERT INTO prize (id, prize) VALUES(10039,'개근상');
	INSERT INTO prize (id, prize) VALUES(10040,'우수상');
	INSERT INTO prize (id, prize) VALUES(10007,'개근상');
	INSERT INTO prize (id, prize) VALUES(10011,'모범상');
	INSERT INTO prize (id, prize) VALUES(10022,'개근상');
	INSERT INTO prize (id, prize) VALUES(10009,'개근상');
	INSERT INTO prize (id, prize) VALUES(10007,'우수상');
	INSERT INTO prize (id, prize) VALUES(10039,'혁신상');
	INSERT INTO prize (id, prize) VALUES(10021,'노력상');
    INSERT INTO prize (id, prize) VALUES(10007,'성실상');
	INSERT INTO prize (id, prize) VALUES(10013,'봉사상');
	INSERT INTO prize (id, prize) VALUES(10010,'봉사상');
	INSERT INTO prize (id, prize) VALUES(10010,'성실상');

 
						
# 1) 다음의 정보를 조회하세요. (id, 이름, 반이름, 위치명, 성적, 졸업여부) 단, 지역코드가 없는 사람은 일괄 "기타" 로 처리함, 성적이 없을 경우 0점으로 처리, 졸업년도가 있는 사람은 졸업여부 Y, 졸업여부가 없으면 N						
SELECT student2.id, student2.name, class_info.class_name, if(location.location is null, '기타',location.location) AS location_name, if(score.score is null,0,score.score) as score, if(graduation.graduation_year is null,'Y', 'N' ) AS graduation
FROM student2
LEFT JOIN class_info ON student2.class = class_info.class
LEFT JOIN location ON student2.loc_id = location.loc_id
LEFT JOIN score ON student2.id = score.id
LEFT JOIN graduation ON student2.id = graduation.id;

# 2) 남녀 성별로 성적 합계, 평균을 구하시오. (성적이 없는 사람이 있습니다. 이때는 0점 처리 함)
SELECT student2.gender, SUM(if(score.score is null,0,score.score)), AVG(if(score.score is null,0,score.score))
FROM student2 
LEFT JOIN score ON student2.id = score.id  
GROUP BY student2.gender;
					
# 3) 연령별 성적 합계, 평균을 구하시오 (성적이 없는 사림이 있습니다. 이때는 0점 처리, 생년월일이 비어 있는 사람은 일괄 1998년 01년 01생으로 처리) (출력 : 연령, 성적평균)						
SELECT floor((curdate() - if(birth is null, str_to_date('1998-01-01','%Y-%m-%d'),birth))/10000) age, SUM(if(score.score is null, 0, score.score)), AVG(if(score.score is null, 0, score.score))  
FROM student2 
LEFT JOIN score ON student2.id = score.id  
GROUP BY age
ORDER BY age DESC ;
-- 별칭으로 언급해도 됨

# 4) 졸업년도가 있는 사람은 졸업생입니다. 졸업년도가 없는 사람은 재학생으로 분류 합니다. 재학생, 졸업년도 별 성적 평균을 구하시오. (컬럼 : 졸업년도 or 재학생, 성적평균)			
SELECT if(graduation.graduation_year is null, '재학생', '졸업생') 재학생, graduation.graduation_year as 졸업년도, avg(score) as 성적평균
FROM student2 
LEFT JOIN graduation ON student2.id = graduation.id
LEFT JOIN score ON student2.id = score.id
GROUP BY 재학생, 졸업년도;


# 5) 지역별 인원 수 합계가 2명 이하인 지역명을 조회하시오.		
-- SELECT location, COUNT(id) <= 2 as 인원수
-- FROM student2
-- LEFT JOIN location ON student2.loc_id = location.loc_id
-- GROUP BY location;
-- COUNT(id) <= 2 하면 불린 값으로 나오므로 0은 fasle로 2이하가 아닌 것, 1은 true로 2이상인 것

select a.location from (SELECT location, count(distinct id) <= 2 as 인원수
FROM student2
LEFT JOIN location ON student2.loc_id = location.loc_id
GROUP BY location) as a where a.인원수 =1 ;

-- count는 행 개수를 셈
-- sum은 숫자를 더하는 것이므로 숫자 칼럼을 지정해줘야 함. 데이터 타입도 int여야 함
-- count(*)하면 중복 포함한 개수
-- count(distinct id)하면 중복 제외한 id개수
-- select는 중복된 것도 가져오므로 distinct해줘야 함

# 6) 성씨를 제외한 이름이 동일한 사람들을 조회하시오. (출력: id, 이름)			
-- SELECT id, name
-- FROM student2 
-- WHERE substr(name, 2, 3 ) >1 ;
-- 이름이 2글자면?
-- substr에 칼럼이름?

select substring(name, 2) as name1, count(*) as count1
from student2
group by name1 
having name2 > 1 ;
-- substr는 오라클에서 사용
-- 그룹화한 것의 조건이므로 having

# 7) 졸업자들의 졸업 당시의 나이를 구하시오. (출력 : id, 이름, 졸업년도, 생년월일, 당시나이)	
SELECT student2.id, student2.name, graduation.graduation_year, ifnull(student2.birth,'1998-01-01'), (graduation.graduation_year - ifnull(year(birth), '1998')) +1  as graduation_age
FROM student2
LEFT JOIN graduation ON student2.id = graduation.id
where graduation_year is not null;
-- 졸업당시나이 = 현재년도 - 졸업년도 +1
-- ifnull(student2.birth,'1998-01-01') : null이 아닐 때 값을 지정해 주지 않아도 됨
-- if(location.location is null, '기타',location.location): null이 아닐 때 값도 지정해줘야 함



# 8) 수상 실적이 있는 사람들을 수상건수 다음과 같이 조회하시오 (출력 : id, 이름, 수상건수)	
SELECT student2.id, student2.name, count(prize.prize) as '수상건수'
FROM student2
LEFT JOIN prize ON student2.id = prize.id
group by student2.name;
-- having 조건을 주지 않으면 수상 실적이 없는 사람도 추출됨

SELECT student2.id, student2.name, count(prize.prize)
FROM student2
LEFT JOIN prize ON student2.id = prize.id
group by student2.name
having count(prize.prize)  > 0;
-- having 조건을 주면 수상 실적있는 사람만 추출

# 9) 연령대별 수상자 수를 구하고, 수상자가 높은 순으로 정렬하여, 가장 수상자가 많은 연령대를 구하시오. (단, 생년월일 비어있는경우 1998년 01년 01생으로 처리) 			
SELECT floor((curdate() - if(birth is null, str_to_date('1998-01-01','%Y-%m-%d'), birth))/10000) as age, count(prize.prize) as 수상자수
FROM student2 
LEFT JOIN prize ON student2.id = prize.id
GROUP BY age
ORDER BY 수상자수 DESC 
limit 1;
-- 가장 수상자가 많은 연령대가 첫 행이므로 첫 행만 출력하기 위해 limit 1
-- 가장 수상자가 적은 연령대를 뽑고 싶으면 오름차순으로 한뒤에 limit 1하면 됨



# 10) 사랑반 중에서 성적이 햇님반 평균 이하인 사람들을 조회하고 성적 내림차순으로 조회하시오 (출력 : id, 이름, 성적)		
SELECT student2.id, student2.name, score.score 
FROM student2 
LEFT JOIN class_info ON student2.class = class_info.class
LEFT JOIN score ON student2.id = score.id
where class_name = '사랑반' and score.score <= (select avg(score.score)
from student2
left join class_info on student2.class = class_info.class
LEFT JOIN score ON student2.id = score.id
where class_info.class_name = '햇님반')
ORDER BY score.score DESC;
-- select, from, where에 또다른 select문을 적을 수 있음
-- 이 문제는 where 조건에 select문을 줌
				

   