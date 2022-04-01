CREATE TABLE girl_group
(
  _id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(32) NOT NULL,
  debut DATE NOT NULL,
  hit_song_id INT
);

CREATE TABLE song
(
  _id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32) NOT NULL,
  lyrics VARCHAR(32)
);
INSERT INTO song (_id, title, lyrics) VALUES (101, 'Tell Me', 'tell me tell me tetetete tel me');
INSERT INTO song (title, lyrics) VALUES ('Gee', 'GEE GEE GEE GEE GEE BABY BABY');
INSERT INTO song (title, lyrics) VALUES ('미스터', '이름이 뭐야 미스터');
INSERT INTO song (title, lyrics) VALUES ('Abracadabra', '이러다 미쳐 내가 여리여리');
INSERT INTO song (title, lyrics) VALUES ('8282', 'Give me a call Baby baby');
INSERT INTO song (title, lyrics) VALUES ('기대해', '기대해');
INSERT INTO song (title, lyrics) VALUES ('I Don\'t car', '다른 여자들의 다리를');
INSERT INTO song (title, lyrics) VALUES ('Bad Girl Good Girl', '앞에선 한 마디 말도');
INSERT INTO song (title, lyrics) VALUES ('피노키오', '뉴예삐오');
INSERT INTO song (title, lyrics) VALUES ('별빛달빛', '너는 내 별빛 내 마음의 별빛');
INSERT INTO song (title, lyrics) VALUES ('A', 'A 워오우 워오우워 우우우');
INSERT INTO song (title, lyrics) VALUES ('나혼자', '나 혼자 밥을 먹고 나 혼자 영화 보고');
INSERT INTO song (title, lyrics) VALUES ('LUV', '설레이나요 ');
INSERT INTO song (title, lyrics) VALUES ('짧은치마', '짧은 치마를 입고 내가 길을 걸으면');
INSERT INTO song (title, lyrics) VALUES ('위아래', '위 아래 위위 아래');
INSERT INTO song (title, lyrics) VALUES ('Dumb Dumb' , '너 땜에 하루종일');


INSERT INTO girl_group (name, debut, hit_song_id) 
VALUES ('원더걸스', '2007-09-12', 101);
INSERT INTO girl_group (name, debut, hit_song_id) 
VALUES ('소녀시대', '2009-06-03', 102);
INSERT INTO girl_group (name, debut, hit_song_id) 
VALUES ('카라', '2009-07-30', 103);
INSERT INTO girl_group (name, debut, hit_song_id) 
VALUES ('브라운아이드걸스', '2008-01-17', 104);
INSERT INTO girl_group (name, debut, hit_song_id) 
VALUES ('다비치', '2009-02-27', 105);
INSERT INTO girl_group (name, debut, hit_song_id) 
VALUES ('2NE1', '2009-07-08', 107);
INSERT INTO girl_group (name, debut, hit_song_id) 
VALUES ('f(x)', '2011-04-20', 109);
INSERT INTO girl_group (name, debut, hit_song_id) 
VALUES ('시크릿', '2011-01-06', 110);
INSERT INTO girl_group (name, debut, hit_song_id) 
VALUES ('레인보우', '2010-08-12', 111);
INSERT INTO girl_group (name, debut) 
VALUES ('에프터 스쿨', '2009-11-25');
INSERT INTO girl_group (name, debut) 
VALUES ('포미닛', '2009-08-28');




-- INNER JOIN


SELECT gg._id, gg.name, s.title
FROM girl_group AS gg
JOIN song AS s
ON s._id = gg.hit_song_id;




-- LEFT OUTER, RIGHT OUTER 조인


SELECT gg._id, gg.name, s.title
FROM girl_group AS gg
LEFT OUTER JOIN song AS s
ON s._id = gg.hit_song_id;

SELECT s._id, s.title, gg.name
FROM girl_group AS gg
RIGHT OUTER JOIN song AS s
ON s._id = gg.hit_song_id;


-- OUTER 조인

SELECT s._id, s.title, gg.name
FROM girl_group AS gg
JOIN song AS s
ON s._id <> gg.hit_song_id;




-- CROSS JOIN, CARTESIAN JOIN


SELECT s._id, s.title, gg.name
FROM girl_group AS gg
CROSS JOIN song AS s;

SELECT s._id, s.title, gg.name
FROM girl_group AS gg, song AS s;







-- SELF JOIN


CREATE TABLE chicken_gate
(
  _id INT PRIMARY KEY,
  name VARCHAR(16) NOT NULL,
  boss INT NOT NULL
);

INSERT INTO chicken_gate VALUES (3, '최목사', 3);
INSERT INTO chicken_gate VALUES (6, 'sunsil', 3);
INSERT INTO chicken_gate VALUES (8, '닭', 3);
INSERT INTO chicken_gate VALUES (9, '말주인', 6);
INSERT INTO chicken_gate VALUES (2, '우병우', 8);
INSERT INTO chicken_gate VALUES (4, '김기춘', 8);
INSERT INTO chicken_gate VALUES (11, '안종범', 8);



SELECT c.name AS child, p.name AS parent
FROM chicken_gate AS p
JOIN chicken_gate AS c
ON p._id = c.boss;






-- FULL JOIN


SELECT * FROM t1
LEFT JOIN t2 ON t1.id = t2.id
UNION
SELECT * FROM t1
RIGHT JOIN t2 ON t1.id = t2.id


-- The query above works for special cases where a full outer join operation would not produce any duplicate rows. The query above depends on the UNION set operator to remove duplicate rows introduced by the query pattern. 
-- We can avoid introducing duplicate rows by using an anti-join pattern for the second query, and then use a UNION ALL set operator to combine the two sets. In the more general case, where a full outer join would return duplicate rows, we can do this:

-- 위의 쿼리는 full outer join 연산이 그어떤 중복 row 를 만들지 않는 특수한 경우에 한해 작동한다. 위의 쿼리는 쿼리 패턴에 의해 생성되는 duplicate row 를 지우기 위해 UNION 연산자에 의존한다. 
-- 우리는 두번째 쿼리에 anti-join 패턴을 짜넣는 것으로 duplicate row 의 생산 자체를 피할 수 있다. 그 후 UNION ALL 연산자를 사용하여 두개의 셋을 결합할 수 있다. full outer join 에서 duplicate row 가 생성되는 것이 더 자주 발생하는 상황이므로, 해당 케이스에선 이하를 쓰면 된다.


SELECT * FROM t1
LEFT JOIN t2 ON t1.id = t2.id
UNION ALL
SELECT * FROM t1
RIGHT JOIN t2 ON t1.id = t2.id
WHERE t1.id IS NULL



