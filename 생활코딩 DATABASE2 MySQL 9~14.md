## 9. CRUD
### CRUD 중에서 중요한 것은 create와 read
- create
  - 생성하지 않으면 나머지가 존재하지 않음
- read
  - 읽지 않을거라면 create할 필요 없음

### update와 delete는 존재하지 않을 수 있음
- 역사는 고칠 수 없음
- 회계에서는 거래내역을 삭제하면 범죄가 됨<BR><BR>

## 10. INSERT
![캡처](https://user-images.githubusercontent.com/59272674/88622292-78b99700-d0dd-11ea-9d1e-1c2cdaf0472c.JPG)

### CREATE
INSERT
- 데이터 추가는 행을 삽입하는 것
  
INSERT INTO topic (title,description,created,author,profile) VALUES(‘MySQL’,’MySQL is …’,NOW(),’egoing’,’developer’); 
- id칼럼은 값을 지정하지 않으면 자동으로 auto_increment되므로 지정하지 않음
- title을 그 다음으로 언급하면 됨

INSERT INTO topic (title,description,created,author,profile) VALUES(‘ORACLE’,’Oracle is …’,NOW(),’egoing’,’developer’); <br>
INSERT INTO topic (title,description,created,author,profile) VALUES(‘SQL Server’,’SQL Server’,NOW(),’duru’,’database administrator’);   <br>
INSERT INTO topic (title,description,created,author,profile) VALUES(‘PostgreSQL’,’Postgre SQL’,NOW(),’taeho’,’data scientist, developer’);<br>
INSERT INTO topic (title,description,created,author,profile) VALUES(‘MongoDB,’Mongo DB is’,NOW(),’egoing’,’developer’);      

### READ

SELECT * FROM topic ;            
- topic 테이블로부터 모든 데이터를 읽어옴<br><br>

## 11. SELECT

![캡처](https://user-images.githubusercontent.com/59272674/88622292-78b99700-d0dd-11ea-9d1e-1c2cdaf0472c.JPG)<br><br>



### 모든 데이터를 출력
SELECT * FROM topic;

### id, title, created, author 데이터만 출력
SELECT id, title, created, author FROM topic;

### author가 egoing인 것만 출력
SELECT id, title, created, author FROM topic WHERE author = ‘egoing’;

### id값을 기준으로 내림차순 정렬
SELECT id, title, created, author FROM topic WHERE author = ‘egoing’ ORDER BY id DESC;

### 3건 중 2건의 데이터만 출력
SELECT id, title, created, author FROM topic WHERE author = ‘egoing’ ORDER BY id DESC LIMIT 2;<br><br>


## 12. UPDATE
![캡처](https://user-images.githubusercontent.com/59272674/88622292-78b99700-d0dd-11ea-9d1e-1c2cdaf0472c.JPG)

### id가 2인 description은  ‘Oracle is …’으로, title은  ‘Oracle’ 로 데이터 업데이트
UPDATE topic SET description = ‘Oracle is …’, title = ‘Oracle’ WHERE id = 2;<br><br>

## 13. DELETE

![캡처](https://user-images.githubusercontent.com/59272674/88622292-78b99700-d0dd-11ea-9d1e-1c2cdaf0472c.JPG)

### id가 5인 행 삭제
DELETE FROM topic WHERE id = 5;<br><br>

## 14. 수업의 정상
### 혁신 innovation (Relational)
- 혁신은 복잡성들이 존재하므로 난이도가 있음
- CRUD만을 이용하면 어려운 문제들이 발생함
- 이를 해결하기 위해 관계형 데이터베이스 사용

### 본질 essence (Database)
- 데이터베이스라면 객체지향이건, 관계형이건 상관없이 공통적으로 공유하는 특징
- CRUD 4가지 작업을 가지고 있다면 데이터베이스라고 봄



