![캡처](https://user-images.githubusercontent.com/59272674/88622292-78b99700-d0dd-11ea-9d1e-1c2cdaf0472c.JPG)<br><br>



#### 모든 데이터를 출력
SELECT * FROM topic;<br><br>

#### id, title, created, author 데이터만 출력
SELECT id, title, created, author FROM topic;<br><br>

#### author가 egoing인 것만 출력
SELECT id, title, created, author FROM topic WHERE author = ‘egoing’;<br><br>

#### id값을 기준으로 내림차순 정렬
SELECT id, title, created, author FROM topic WHERE author = ‘egoing’ ORDER BY id DESC;<br><br>

#### 3건 중 2건의 데이터만 출력
SELECT id, title, created, author FROM topic WHERE author = ‘egoing’ ORDER BY id DESC LIMIT 2;
