-- 예제 1

SELECT SUBSTR(store_name, 3) 
FROM geography 
WHERE store_name = 'Los Angeles';


-- 's Angeles'



-- 예제 2
SELECT SUBSTR(store_name, 2, 4) 
FROM geography 
WHERE store_name = 'San Diego';

-- 'an D'
