//1
SELECT name, surname, score
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY name

SELECT name, surname, score
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY surname

SELECT name, surname, score
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY score

SELECT name, surname
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY name DESC

SELECT name, surname, score
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY surname DESC

SELECT name, surname, score
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY score DESC

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY n 

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY n DESC

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY s 

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY s DESC

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY sc 

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY sc DESC

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY n, s 

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY s, n 

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY n, sc 

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY sc, n 

SELECT name as n, surname as s, score as sc
FROM student
WHERE (score>=4) and (score<=4.5)
ORDER BY 1

//2

SELECT name, surname, n_group
FROM student
WHERE n_group::text LIKE '2%'

//3
SELECT name, surname, n_group, date_birth, city, email, score
FROM student
ORDER BY n_group DESC, name
//4
SELECT name, surname, n_group, date_birth, city, email, score
FROM student
WHERE score>4 
ORDER BY score DESC
//5
SELECT name, risk
FROM hobby
WHERE id = 1 or id = 2
//6
SELECT id_student, id_hobby, date_start, date_finish
FROM student_hobby
WHERE date_start >= '2015-01-01' and date_start <'2020-10-10' and date_finish is null
//7
SELECT name, surname, n_group, date_birth, city, email, score
FROM student
WHERE score>4.5 
ORDER BY score DESC
//8
SELECT name, surname, n_group, date_birth, city, email, score
FROM student
WHERE score>4.5 
ORDER BY score DESC
LIMIT 5
//9
SELECT name, CASE
WHEN risk >= 8 THEN 'очень высокий'
WHEN (risk >= 6 and risk <8) THEN 'высокий'
WHEN (risk >= 4 and risk <6)THEN 'средний'
WHEN (risk >= 2 and risk <4) THEN 'низкий'
WHEN risk < 2 THEN 'очень низкий'
END
FROM hobby
//10
SELECT name, risk
FROM hobby
WHERE risk = 10
LIMIT 3


