/*【練習問題】集計関数 */
--練習問題1--
with union_tb as(
    SELECT * FROM `udemyproject70919.udemy_sample.meibo_q1`
    UNION ALL
    SELECT * FROM `udemyproject70919.udemy_sample.meibo_q1`
)
select
    count(1)
from union_tb


--練習問題2--
with union_tb as(
    SELECT * FROM `udemyproject70919.udemy_sample.meibo_q1`
    UNION ALL
    SELECT * FROM `udemyproject70919.udemy_sample.meibo_q1`
)
select
    sum(jpn) as sum_jpn
    ,sum(math) as sum_math
    ,sum(eng) as sum_eng
from union_tb


--練習問題3--
with union_tb as(
    SELECT * FROM `udemyproject70919.udemy_sample.meibo_q1`
    UNION ALL
    SELECT * FROM `udemyproject70919.udemy_sample.meibo_q2`
)
select
    area
    ,round(avg(jpn),1) as avg_jpn
    ,max(jpn) as max_jpn
    ,min(jpn) as min_jpn
from union_tb
where sex in('男','女')
group by area

