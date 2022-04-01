SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A%'

SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES
where UPPER(FIRST_NAME) like '%NA'

SELECT first_name, last_name 
FROM employees 
WHERE last_name LIKE '__a%' 

SELECT last_name
FROM employees 
WHERE last_name LIKE '%a%' and last_name LIKE '%e%'

SELECT last_name
FROM employees 
where substr(last_name, 1, 1) in ( 'a', 'b', 'c', 'd', 'e')

select JOB_ID
from employees
where JOB_ID like '%#___' ESCAPE '#'; 






select *
from employees
where regexp_like (phone_number, '^551|^552|^553|^011');

select * from employees
where regexp_like(first_name, 'ne');

elect * from employees
where regexp_like(first_name, 'ne', 'i');

select * from employees
where regexp_like(first_name, 'ett|ana');

select * from employees
where regexp_like(first_name, 'an(c|i|e)');

select * from employees
where regexp_like(first_name, '^na|na$', 'i');

select * from employees
where regexp_like(phone_number, '^51[0-9]\.[0-9]{3}\.[0-9]{4}$');

select * from employees
where not regexp_like(phone_number, '^515|^555');

select * 
from employees 
where regexp_like (COL1, '[[:digit:]]{4}');



REGEXP_REPLACE 	-- 정규식 패턴을 검색하여 대체 문자열로 변경합니다.
REGEXP_INSTR	-- 정규식 패턴에 대해 문자열을 검색하고 일치가 발견된 위치를 반환합니다.
REGEXP_SUBSTR	-- 지정된 문자열 내에서 정규식 패턴을 검색하고 일치하는 부분 문자열을 추출합니다. 
REGEXP_COUNT 	-- 입력 문자열에서 패턴 일치가 발견되는 횟수를 반환합니다.











