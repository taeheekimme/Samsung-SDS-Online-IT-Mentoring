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
				
