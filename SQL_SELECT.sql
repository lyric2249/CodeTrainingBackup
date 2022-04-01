SELECT (속성1, 속성2, … ) FROM (테이블명) WHERE (조건식);

SELECT * FROM (테이블명);

SELECT * FROM (테이블명) WHERE (조건1) AND (조건2);

SELECT * FROM (테이블명) WHERE (속성1) BETWEEN (값1) AND (값2);
SELECT * FROM (테이블명) WHERE age > 19 AND age < 30;
SELECT * FROM (테이블명) WHERE age BETWEEN 19 AND 30;
-- 두 명령어를 통한 결과 값은 같지만 성능은 BETWEEN을 사용한 명령어가 더 좋습니다.
-- 단순히 AND만 사용한 첫번째 쿼리는 전체 데이터에서 age가 19보다 큰 값과 30보다 작은 데이터를 각각 구해 이들의 교집합 값을 구하는 연산이며
-- BETWEEN을 사용한 두번째 쿼리는 age라는 속성에서 19라는 값부터 시작하여 30이라는 값보다 작은 값을 찾는 연산이기 때문입니다.

SELECT * FROM (테이블명) WHERE (조건1) OR (조건2);

SELECT * FROM (테이블명) WHERE (속성1) IN (조건1, 조건2, … );
SELECT * FROM (테이블명) WHERE age = 19 OR age = 20 OR age = 21;
SELECT * FROM (테이블명) WHERE age IN (19,20,21);
-- IN을 사용한 구문 또한 BETWEEN을 사용한 구문과 같이 OR보다 성능이 좋습니다.
-- 두 쿼리 모두 같은 결과를 출력하지만 IN을 사용한 두번째 쿼리가 성능이 좋습니다.

 

SELECT * FROM (테이블명) WHERE age = 19 OR age = 20 AND birth = 1998 OR birth = 1999;
SELECT * FROM (테이블명) WHERE (age = 19 OR age = 20)AND(birth = 1998 OR birth = 1999);
-- AND 연산이 OR 연산보다 우선순위가 높습니다.
-- 즉, age가 19 또는 20인 열과 birth가 1998 또는 1999인 행의 모든 열을 선택하려면 둘째

 

SELECT * FROM (테이블명) WHERE NOT (조건1);

SELECT * FROM (테이블명) WHERE (속성1) LIKE ‘A_’;
-- (테이블명)의 테이블에서 (속성1) 중 ‘A+1글자’ 값을 가진 행의 모든 열을 선택합니다.

SELECT * FROM (테이블명) WHERE (속성1) LIKE ‘A__’;

SELECT * FROM (테이블명) WHERE (속성1) LIKE ‘A%’;

SELECT * FROM (테이블명) WHERE (속성1) LIKE ‘%A’;
 
SELECT * FROM (테이블명) WHERE (속성1) LIKE ‘%A%’;

SELECT * FROM (테이블명) ORDER BY (속성1) (순서);

SELECT (속성1) AS ‘별명1’, (속성2) AS ‘별명2’ FROM (테이블명);

SELECT DISTINCT (속성1), (속성2), … FROM (테이블명);
-- (테이블명)이란 테이블에서 (속성1), (속성2), … 를 선택하는데 이때 중복되는 값은 제외합니다.

