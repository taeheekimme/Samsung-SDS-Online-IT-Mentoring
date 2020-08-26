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

