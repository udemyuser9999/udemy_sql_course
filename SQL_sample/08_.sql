/*【練習問題】ウィンドウ関数 */
--練習問題1--
select
    id
    ,name
    ,area
    ,jpn
    ,round(avg(jpn) over(partition by area),1) as avg_jpn
    ,max(jpn) over(partition by area) as max_jpn
    ,min(jpn) over(partition by area) as min_jpn
from `udemyproject70919.udemy_sample.meibo_q2`
order by area


--練習問題2--
select
    id
    ,name
    ,area
    ,count(1) over(partition by area) as count_stu
from `udemyproject70919.udemy_sample.meibo_q2`
order by area


--練習問題3--
select
    id
    ,name
    ,area
    ,sum(jpn) over(partition by area) as sum_jpn
    ,sum(math) over(partition by area) as sum_math
    ,sum(eng) over(partition by area) as sum_eng
from `udemyproject70919.udemy_sample.meibo_q2`
order by area


--練習問題4--
select
    id
    ,name
    ,area
    ,eng
    ,rank() over(partition by area order by eng desc) as rank_eng
    ,dense_rank() over(partition by area order by eng desc) as d_rank_eng
from `udemyproject70919.udemy_sample.meibo_q2`
order by area
