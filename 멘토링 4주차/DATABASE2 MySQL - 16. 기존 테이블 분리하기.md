### 1.1 author 테이블 생성<br>

CREATE TABLE author ( <br>
  id int(11) NOT NULL AUTO_INCREMENT,<br>
  name varchar(20) NOT NULL,<br>
  profile varchar(200) DEFAULT NULL,<br>
  PRIMARY KEY (id)<br>
);<br><br>
 
### 1.2 데이터 삽입<br>
 
INSERT INTO author (id, name, profile) VALUES (1,'egoing','developer');<br>
INSERT INTO author (id, name, profile) VALUES (2,'duru','database administrator');<br>
INSERT INTO author (id, name, profile) VALUES (3,'taeho','data scientist, developer');<br><br>
 

 
### 2.1 topic 테이블 생성<br>

CREATE TABLE topic (<br>
  id int(11) NOT NULL AUTO_INCREMENT,<br>
  title varchar(30) NOT NULL,<br>
  description text,<br>
  created datetime NOT NULL,<br>
  author_id int(11) DEFAULT NULL,    <br>
  PRIMARY KEY (id)<br>
);<br><br>

 
### 2.2 데이터 삽입
 
INSERT INTO topic(id, title, description, created, author_id) VALUES (1,'MySQL','MySQL is...','2018-01-01 12:10:11',1);<br>
INSERT INTO topic(id, title, description, created, author_id)VALUES (2,'Oracle','Oracle is ...','2018-01-03 13:01:10',1);<br>
INSERT INTO topic(id, title, description, created, author_id) VALUES (3,'SQL Server','SQL Server is ...','2018-01-20 11:01:10',2);<br>
INSERT INTO topic(id, title, description, created, author_id) VALUES (4,'PostgreSQL','PostgreSQL is ...','2018-01-23 01:03:03',3);<br>
INSERT INTO topic(id, title, description, created, author_id) VALUES (5,'MongoDB','MongoDB is ...','2018-01-30 12:31:03',1);<br>
