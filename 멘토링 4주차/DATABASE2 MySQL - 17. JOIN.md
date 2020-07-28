### 관계형 데이터베이스의 꽃 JOIN<br>
테이블을 분리한다는 것은 식별자 값을 행에 포함하고 있다면 JOIN을 통해 얼마든지 관계를 맺을 수 있다는 것<br><br>


**1. topic 테이블의 모든 행을 출력하되, author_id의 값과 같은 값을 가지고 있는 author 테이블에 있는 행을 가져와 topic 테이블에 붙이기**<br>

SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.id;<br><br>

**2. 위에서 모든 칼럼을 출력하니 동일한 값인 author_id와 id 모두 출력되므로 둘 중 하나만 출력**<br>

SELECT topic.id, title, description, created, name, profile FROM topic LEFT JOIN author ON topic.author_id = author.id; 
- topic.id라고 어느 테이블의 칼럼인지 지정해줘야 함<br><br>


**3. AS를 이용해 칼럼 이름을 변경하여 출력 가능**<br>
SELECT topic.id AS topic_id, title, description, created, name, profile FROM topic LEFT JOIN author ON topic.author_id = author.id; <br><br>



