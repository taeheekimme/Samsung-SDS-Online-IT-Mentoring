USE mystudy;

CREATE TABLE student1(
	id INT(5) NOT NULL,
    name VARCHAR(20) NOT NULL,
    birth DATE NOT NULL,
    gender VARCHAR(1),
    address VARCHAR(400), 
    zip_code VARCHAR(5) DEFAULT(11111),
    class VARCHAR(1),
    score INT(2),
    created_at DATETIME,
    PRIMARY KEY(id)
    );
    
DESC student1;
select * from student1;


INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(10004,'이지웅','2000-01-03','M','서울 용산구 한강대로 405','23123','3',5,'2019-01-02 12:33:23');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(12321,'오미란','1999-03-24','F','서울 강남구 영동대로 640 산산아파트 203-201','44312','2',4,'2018-02-11 23:31:12'); 
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(30123,'김수미','1997-08-12','M','서울 강남구 밤고개로21길 79 사랑 APT 223-102','12310','2',3,'2017-02-01 13:02:12'); 
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(10123,'박현수','2001-06-04','F','경기 성남시 중원구 둔촌대로 425 1층','54412','1',1,'2019-03-01 11:23:55');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(20001,'김길동','1998-07-07','F','경기 용인시 기흥구 마북로 184 신사아파트 443동 1202호','11121','2',2,'2019-03-01 11:23:56');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(11031,'이만두','2000-02-05','M','인천 안인시 어흥구 서천서로 79','12321','3',3,'2018-01-21 10:11:57');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(13021,'이한빛','1996-12-24','F','인천 지성시 큰재봉길 16 동산 아파트 3-12','72322','2',4,'2019-01-06 11:00:53');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(53032,'장길벗','1998-11-08','M','경기 수원시 장안구 송원로 101','32122','2',3,'2020-03-01 15:23:59');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(43123,'유우미','1999-05-01','F','경기 안산시 상록구 순환로 532','78765','1',3,'2019-03-01 11:23:00');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(34432,'김진환','2001-09-18','M','인천 남동구 무네미로 236','','3',2,'2019-03-01 11:23:01');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(64343,'임순한','2000-10-10','M','인천 동구 송림동 344 이룸 APT 22-203','','3',1,'2019-03-01 11:23:02');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(11343,'박사영','1999-04-27','F','인천 서구 오류동 1548-1','12131','2',4,'2018-02-11 23:31:12');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(23213,'노희진','1994-02-01','F','경기 파주시 청석로 370 하영아 파트 123','23111','1',5,'2019-03-01 11:23:59');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(40031,'정건우','1995-06-12','M','경기 양주시 장흥면 일영리 산 33-1 필수 Apt 303-212','21321','1',4,'2018-02-11 23:31:12');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(80321,'오현','1998-10-03','M','서울 마포구 매봉산로2길 16','12312','3',2,'2018-02-11 23:31:12');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(30990,'정거장','2001-12-30','M','서울 강동구 아리수로50길 50 Star APT. 122-3323','75623','1',3,'2018-02-11 23:31:12');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(33233,'원준현','2000-05-28','M','서울 강동구 천호대로186길 7','','3',4,'2019-03-01 11:23:56');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(49494,'이기상','2002-12-21','M','서울 강남구 선릉로116길 45','','1',2,'2019-03-01 11:23:58');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(18554,'김윤진','1999-04-01','F','경기 안양시 동안구 동편로 110','73928','1',3,'2018-02-11 23:31:12');
INSERT INTO student1 (id, name, birth, gender, address, zip_code, class, score, created_at) VALUES(10004,'이지웅','2000-01-03','M','서울 용산구 한강대로 405','23123','3',5,'2019-01-02 12:33:23');


# 1. update : 위 데이터 중 zip_code 가 7 로 시작하는 데이터를 9로 시작하도록 변경

UPDATE student1 
SET zip_code =  concat(‘9’,substr(zip_code,2)) 
WHERE zip_code LIKE '7%';

-- concat(‘9’,substr(zip_code,2)): 9 + zip_code의 2번째 글자~마지막글자
-- replace를 사용하면 중간에 들어간 7도 9로 변경됨
-- set은 항상 = 를 사용해야 함


# 2. select : 생일 내림 차순으로 전체 데이터 조회

SELECT * 
FROM student1 
ORDER BY birth DESC;


# 3. select : 남 녀 별 각각 인원 수 조회 (gender, 인원수)

SELECT gender, count(id) "인원수"
FROM student1
GROUP BY gender;


# 4. select : 반 별 score 합계 및 평균 조회 (class, sum, avg)

SELECT class, sum(score) sum, AVG(score) avg 
FROM student1
GROUP BY class
ORDER BY 1;

-- order by 1 : 1열 기준으로 오름차순


# 5. select : 시도 별 인원 수 조회 (서울, 경기, 인천별 인원수)

SELECT substr(address, 1,2) ‘시도’,  COUNT(id) ‘인원수’ 
FROM student1 
GROUP BY substr(address, 1,2);


# 6. select : 전체인원 birth 데이터 응용하여 오늘 기준(curdate), 나이계산, 태어난 요일 조회

SELECT id, name, birth, floor((curdate() - birth)/10000) age, DATE_FORMAT(birth , '%W') weekday
FROM student1;

-- date_fromat : %w는 week만 뽑아옴


# 7. select : 반 별 평균 점수 이상인 사람 조회 하기 (id, 이름, class, 점수)

SELECT m.id, m.name, m.class, m.score, class_base.avg
FROM student1
LEFT JOIN(select class, AVG(score) avg from student1 group by class) class_base
ON class_base.class = m.class 
WHERE m.score >= class_base.avg;

-- 테이블 2개를 left join하여 매핑
-- 인라인 뷰 : 쿼리안에서만 쓸 수 있는 가상테이블(뷰)
-- 서브쿼리는 select안에 select넣음


# 8. select : 12월에 태어난 사람들의 점수 합계 및 평균 구하기 (합계, 평균)

SELECT sum(score) "합계", avg(score) "평균"
FROM student1
WHERE DATE_FORMAT(birth, '%m') = '12';

