## 15. 관계형데이터베이스의 중요성
### 왜 관계형 데이터베이스가 필요한가?
- 데이터가 중복되면 문제점이 발생하고 이는 개선의 필요성이 있다는 의미<
- SQL의 JOIN을 통해 데이터를 별도의 테이블로 보관하여 중복 데이터를 제거한 하나의 표로 표현하고자 함


### 중복 제거
- 장점
  - 한 테이블에서 중복을 제거하기 위해 두 개의 테이블을 만들어 식별자로 인식하게 함
  - 식별자를 통해 동명이인의 등의 문제점을 해결할 수 있어 유지보수가 편리해짐

- 단점 
  - 중복을 제거하기 전 테이블이 하나일때가 직관적으로 이해하기 쉬움
  - 두 개의 테이블이 되면 직관적으로 이해하기 어려움
  - trade off: 장점이 생기면 단점도 생김<BR><BR>


## 16. 기존 테이블 분리하기
### author 테이블 생성

CREATE TABLE author ( <br>
  id int(11) NOT NULL AUTO_INCREMENT,<br>
  name varchar(20) NOT NULL,<br>
  profile varchar(200) DEFAULT NULL,<br>
  PRIMARY KEY (id)<br>
);
 
### 데이터 삽입
INSERT INTO author (id, name, profile) VALUES (1,'egoing','developer');<br>
INSERT INTO author (id, name, profile) VALUES (2,'duru','database administrator');<br>
INSERT INTO author (id, name, profile) VALUES (3,'taeho','data scientist, developer');

 
### topic 테이블 생성

CREATE TABLE topic (<br>
  id int(11) NOT NULL AUTO_INCREMENT,<br>
  title varchar(30) NOT NULL,<br>
  description text,<br>
  created datetime NOT NULL,<br>
  author_id int(11) DEFAULT NULL,    <br>
  PRIMARY KEY (id)<br>
);

 
### 데이터 삽입
INSERT INTO topic(id, title, description, created, author_id) VALUES (1,'MySQL','MySQL is...','2018-01-01 12:10:11',1);<br>
INSERT INTO topic(id, title, description, created, author_id)VALUES (2,'Oracle','Oracle is ...','2018-01-03 13:01:10',1);<br>
INSERT INTO topic(id, title, description, created, author_id) VALUES (3,'SQL Server','SQL Server is ...','2018-01-20 11:01:10',2);<br>
INSERT INTO topic(id, title, description, created, author_id) VALUES (4,'PostgreSQL','PostgreSQL is ...','2018-01-23 01:03:03',3);<br>
INSERT INTO topic(id, title, description, created, author_id) VALUES (5,'MongoDB','MongoDB is ...','2018-01-30 12:31:03',1);<br><br>

## 17. JOIN
### 테이블을 분리한다는 것은 식별자 값을 행에 포함하고 있다면 JOIN을 통해 얼마든지 관계를 맺을 수 있다는 것<br><br>

**1. topic 테이블의 모든 행을 출력하되, author_id의 값과 같은 값을 가지고 있는 author 테이블에 있는 행을 가져와 topic 테이블에 붙이기**
SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.id;<br><br>

**2. 위에서 모든 칼럼을 출력하니 동일한 값인 author_id와 id 모두 출력되므로 둘 중 하나만 출력**
SELECT topic.id, title, description, created, name, profile FROM topic LEFT JOIN author ON topic.author_id = author.id; 
  - topic.id라고 어느 테이블의 칼럼인지 지정해줘야 함<br><br>

**3. AS를 이용해 칼럼 이름을 변경하여 출력 가능**
SELECT topic.id AS topic_id, title, description, created, name, profile FROM topic LEFT JOIN author ON topic.author_id = author.id; <br><br>

## 18. 인터넷과 데이터베이스
### 인터넷과 데이터베이스 관계
- 데이터베이스 서버에서 ‘서버’의 의미를 알아보기 위해 인터넷을 알아봐야 함

### 인터넷의 의미
- 각자 흩어져있는 컴퓨터들이 인터넷으로 연결되어 컴퓨터들간의 사회가 만들어지는 것

- 인터넷이 작동하기 위해서는 컴퓨터가 최소, 최대로 2대가 필요함
  - 2대의 컴퓨터가 서로 정보를 요청하고 응답
  - 이러한 역할 분담을 client와 server의 역할이라고 함

- MySQL을 설치하면 2개의 프로그램이 설치됨
  - database client: client를 통해 server에 접속
  - database server : 실제 데이터 저장

- database server는 직접 다룰 수 없음
  - database client 중 하나인 MySQL monitor 명령어와 MySQL workbench를 통해서 database server를 다루는 것<br><br>

## 19. MySQL Client
### MySQL monitor
- 장점
  - MySQL server를 설치하면 자동으로 설치되어 어디서나 사용 가능
  - GUI(마우스로 조작할 수 있는 프로그램)가 아닌 명령어를 사용하는 명령어 기반의 프로그램
  - 명령어 기반이라 어디서든 사용 가능
- 단점
  - 명령어를 통해 제어를 해야하므로 명령어를 알고 있어야 사용 가능

### MySQL workbench
- GUI기반의 프로그램(마우스로 조작할 수 있는 프로그램)<br><br>


## 21. 수업을 마치며
### SQL
- 관계형 데이터베이스 공식 언어
### CRUD 
- R에 해당되는 SELECT구문을 잘 활용해야 함

### INDEX
- 인덱스를 통한 데이터 정리정돈 필요
- 사용자들이 자주 검색하는 칼럼들에 INDEX를 걸어둠

### MODELING
- 테이블을 효율적으로 생성해야 함

### BACKUP
- 데이터가 날아가지 않도록 주의
- 데이터를 복제해서 보관할 것
   - mysqldump
   - binary log

### CLOUD
- 데이터베이스 서버를 쓰는 것이 아닌 큰 회사들이 운영하는 인프라를 임대해 사용하는 것
- 회사들의 데이터 센터를 원격제어를 통해 사용하는 것
- 필요할 때 바로 사용할 수 있고, 엔지니어들이 보안을 위해 노력함
   - AWS RDS
   - Google Cloud SQL for MySQL
   - AZURE Database for MySQL

### PROGRAMMING
- api를 붙여 검색하면 해당 언어로 데이터베이스를 핸들링 할 수 있는 장치를 찾을 수 있음
- 프로그래밍 언어로 데이터베이스 서버를 사용
   - Python mysql api
   - PHP mysql api
   - Java mysql api


 
