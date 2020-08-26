DESC station;
SELECT * FROM station;

# 1) city 이름별 길이로 정렬 (오름차순),그 다음 city 이름을 알파벳(오름차순) 으로 정렬 했을 경우에 가장 첫번째 city 와 길이, 가장 마지막 city 와 길이를 구하시오

select *
from station 
order by length(city) asc, city
limit 1 ;

-- 첫번째 행은 오름차순 정렬 후 limit 1

select *
from station 
order by length(city) desc, city
limit 1 ;

-- 마지막 행은 내림차순 한 뒤 limit 1


# 2) city 첫글자가 모음이고, 동시에 마지막 글자도 모음인 city 목록을 조회하시오. (모음, a, e, I, o, u) , 중복 없음

select distinct station.*
from station
where left(city, 1) in  ('A','E','I','O','U') AND right(city, 1) in  ('A','E','I','O','U'); 

-- select문에 조건을 주면 불린인덱싱으로 나오므로 where절에 조건을 걸어야 함

        
# 3) city 첫글자가 모음이 아닌 city 를 조회하시오. 중복 없음			

select distinct station.*
from station
where left(city, 1) NOT in  ('A','E','I','O','U') ;


# 4) state 가 MA, FL 인 경우만 조회하는데, MA 인 경우에는 모두 대문자로 city명을, FL인 경우 모두 소문자로 city 명을 조회하세요. (출력 : city)					

select if(state = 'MA', upper(city), if(state = 'FL', lower(city), city)) as city, state
from station
where state in ('MA', 'FL');

 -- if문 중첩 가능

