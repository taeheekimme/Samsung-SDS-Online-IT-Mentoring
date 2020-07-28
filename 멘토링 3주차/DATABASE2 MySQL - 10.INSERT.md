![캡처](https://user-images.githubusercontent.com/59272674/88622292-78b99700-d0dd-11ea-9d1e-1c2cdaf0472c.JPG)<br><br>


### CREATE
INSERT:  데이터 추가는 행을 삽입하는 것<br><br>

INSERT INTO topic (title,description,created,author,profile) VALUES(‘MySQL’,’MySQL is …’,NOW(),’egoing’,’developer’); <br>             

- id칼럼은 값을 지정하지 않으면 자동으로 auto_increment되므로 지정하지 않음<br>
- title을 그 다음으로 언급하면 됨<br>

INSERT INTO topic (title,description,created,author,profile) VALUES(‘ORACLE’,’Oracle is …’,NOW(),’egoing’,’developer’);    <br>

INSERT INTO topic (title,description,created,author,profile) VALUES(‘SQL Server’,’SQL Server’,NOW(),’duru’,’database administrator’);    <br>

INSERT INTO topic (title,description,created,author,profile) VALUES(‘PostgreSQL’,’Postgre SQL’,NOW(),’taeho’,’data scientist, developer’);<br>

INSERT INTO topic (title,description,created,author,profile) VALUES(‘MongoDB,’Mongo DB is’,NOW(),’egoing’,’developer’);        <br><br>



### READ

SELECT * FROM topic ;             <br>
- topic 테이블로부터 모든 데이터를 읽어옴

