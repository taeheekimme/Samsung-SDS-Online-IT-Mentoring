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


# 5) state 별로 city 수가 가장 적은 state 를 구하세요 (state)		
			
select state, count(city)
from station
group by state
order by count(city) asc
limit 1;


# 6) city 가 2단어 이상으로 된 city 를 조회하세요 (출력, city)		
			
select city
from station
where instr(city, ' ') > 0;

-- 2단어 구분은 공백으로 함
-- 찾고자 하는 것이 있냐 없냐를 알기위해 instr사용


# 7) state 별로 city 길이가 가장 긴 city 를 각각 조회하세요 (출력, state, city)	
				
select state, length(city)
from station
group by state
order by length(city) desc
limit 1;

-- 길이나 개수를 알고 싪을 때 length 사용


# 8) state 가 MO 인 city를 조회하는데, city 이름에서 모음(a,e,I,o,u) 가 들어 있는 경우 그 알파벳을 을 'x' 로 치환(변경)하세요. (예, cuba -> cxbx)					

select if(state = 'mo', replace(replace(city,), 'a'or 'e' or 'i' or 'o' or 'u', 'x'), city) as city, state
replace(city, 'e','')
replace(city, 'i','')
replace(city, 'o','')
replace(city, 'u','')

from station
where state = 'mo';


# 9) state 가 KS 인 city 를 조회하는데, city 이름을 모두 소문자로 변경하는데, 세번째 순서의 알파벳과 , 가장마지막 알파벳은 대문자로 조회하시오. (예, Dorrance -> doRrancE)					

select if(state = 'ks', lower(city), city),  upper(substr(city, 3, 1)) and upper(substr(city, -1, 1))
from station
where state = 'ks';

select city, substr(city,length(city),1), length(city)
from station;

# 10) city 에서 모음갯수가 몇개인지 표시하시오, (출력, city, 모음개수) (모음, a,e,I,o,u) (예, Kissee Mills 4)	

select length(length(city) - length(replace(city, 'a','')
- length(replace(city, 'e','')
- length(replace(city, 'i','')
- length(replace(city, '0','')
- length(replace(city, 'u','') 

from station;

-- 몇 개인지 알고싶을 때 length 사용

