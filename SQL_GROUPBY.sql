SELECT name, COUNT(name) AS cnt 
FROM table_ggmouse 
GROUP BY name

--------------------------------------------

SELECT COUNT(name) AS cnt 
FROM ( 
	SELECT name 
	FROM table_ggmouse 
	GROUP BY name 
	) AS A

--------------------------------------------

SELECT name, SUM(COUNT(DISTINCT name)) OVER() AS cnt
FROM table_ggmouse
GROUP BY name
 



-- 윈도우함수 : 
SELECT SUM(profit) OVER (PARTITION BY country) FROM table

-- Group By : 
SELECT SUM(profit) FROM table GROUP BY country


--------------------------------------------



MAX(열) OVER (PARTITION BY 그룹열)  -- 예시) 최대값
 
SUM(열) OVER (ORDER BY 순서열) -- 누적합
SUM(열) OVER (ORDER BY 순서열 PARTITION BY 그룹열) -- 그룹끼리 누적합


--------------------------------------------



SELECT val

    -- 행 번호
    , ROW_NUMBER() OVER (ORDER BY val) AS 'row_number'
 
    -- 순위
    , RANK() OVER (ORDER BY val) AS 'rank'
 
    -- 순위 : 순차적
    , DENSE_RANK() OVER (ORDER BY val) AS 'dense_rank'
    
FROM table



--------------------------------------------




SELECT Id
    , RecordDate  -- ORDER 열
    , Temperature  -- 대상 열
 
    -- 미루기
    , LAG(Temperature) OVER (ORDER BY RecordDate) AS 'lag'
 
    -- 당기기
    , LEAD(Temperature) OVER (ORDER BY RecordDate) AS 'lead'
 
FROM table