//1
SELECT n_group, count(*)
FROM student
GROUP BY n_group 
//2
SELECT n_group, MAX(score)
FROM student
GROUP BY n_group 
//3
select surname, count(*)
from student
group by surname
//4
select 	SUBSTR (date_birth::text,1,4) year_student, count(*)
from student
group by SUBSTR (date_birth::text,1,4)
//5
select substr (n_group::text,1, 1) as kurs, avg(score)::real as sr_ball
from student
group by substr (n_group::text,1, 1)
//6
select n_group, max(score)
from student
group by n_group
having n_group::text LIKE '2%' 
ORDER BY max(score) DESC
LIMIT 1
//7
select n_group, avg(score)::real
from student 
group by n_group
having avg(score)>=3.5
order by avg(score)
//8
select n_group, count(*), max(score), avg(score)::real, min(score)
from student
group by n_group
//9
select n_group, surname, name, score
from student
where score = (select max(score) from student where n_group = 2254 ) 
group by n_group, surname, name, score
//10
select s.name, s.surname, s.n_group, s.score 
from student s,
(select n_group, max(score) as max_score from student group by n_group)ps
where s.n_group = ps.n_group and s.score = ps.max_score

