![캡처](https://user-images.githubusercontent.com/59272674/88622292-78b99700-d0dd-11ea-9d1e-1c2cdaf0472c.JPG) <BR> 



mysql -uroot -p      <BR>     

USE opentutorials;    <BR>      

CREATE TABLE topic(   <BR> 
	id INT(11) NOT NULL AUTO_INCREMENT, PRIMARY KEY(id) <BR> 
	title VARCHAR(100) NOT NULL,     <BR> 
 	description TEXT NULL,              <BR> 
	created DATETIME NOT NULL, <BR> 
	author VARCHAR(30) NULL, <BR> 
  profile VARCHAR(100) NULL, <BR> 
	);             <BR>  <BR> 



### INT(11)
INT : 정수  <BR> 
BIGINT : 큰 정수 -> 저장공간 많이 차지 <BR> 
데이터베이스는 컬럼의 데이터 타입을 정할 수 있음 <BR>
사용자들이 기상천외한 데이터를 입력하므로 미리 제한시킴 <BR>
(11)은 숫자를 얼마까지만 노출시킬지 정함 <BR>
보통 11사용


### NOT NULL
본문은 없어도 되지만, 제목은 삽입과 삭제를 위해 필수임


### AUTO_INCREMENT
같은 이름의 행이 있을 경우 동시에 삭제될 가능성이 있음 <BR>
따라서 번호를 매겨 중복된 데이터를 구분할 수 있어야 함 <BR>
중복되지 않는 식별자를 갖게 함 <BR>
ID칼럼은 자동으로 1씩 증가하게끔 함


###  PRIMARY KEY(id)
topic 테이블의 id칼럼은 행을 식별해야 하므로 중복 방지


### title 칼럼 만들기
VARCHAR(size) : variable는 변하는 char는 문자, 255문자까지 허용 <BR>
100글자로 지정하면 1000글자를 입력해도 100글자에 잘림


### description 칼럼 만들기
본문이라 글자가 길어야 함 <BR>
VARCHAR보다 긴 TEXT사용  <BR>
description 칼럼은 본문이므로 빈 값도 가능


### created 칼럼 만들기
DATETIME : 날짜와 시간 모두 표현


### author 칼럼 만들기
30글자 정도 들어가면 될 것 같으므로 VARCHAR


### profile 칼럼 만들기
내용 없을수도 있으니 NULL 허용

