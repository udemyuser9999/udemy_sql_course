/*【練習問題】演算子 */
--練習問題1--
-- 合計点上位TOP10位の生徒を教えてください。
with q1 as(
    SELECT 
        *
        ,jpn + math + eng as sum_test
        ,(jpn + math + eng)/3 as avg_test
    FROM `udemyproject70919.udemy_sample.meibo_q1`
)
select
    name
    ,sum_test
    ,avg_test
from q1
order by sum_test desc

-- 合計点が200~249の生徒を教えてください。
with q1 as(
    SELECT 
        *
        ,jpn + math + eng as sum_test
        ,(jpn + math + eng)/3 as avg_test
    FROM `udemyproject70919.udemy_sample.meibo_q1`
)
select
    name
    ,sum_test
    ,avg_test
from q1
where sum_test between 200 and 249
order by sum_test desc

-- 合計点が200未満の生徒を教えてください。
with q1 as(
    SELECT 
        *
        ,jpn + math + eng as sum_test
        ,(jpn + math + eng)/3 as avg_test
    FROM `udemyproject70919.udemy_sample.meibo_q1`
)
select
    name
    ,sum_test
    ,avg_test
from q1
where sum_test < 200

-- 平均点上位TOP10位の生徒を教えてください。
with q1 as(
    SELECT 
        *
        ,jpn + math + eng as sum_test
        ,(jpn + math + eng)/3 as avg_test
    FROM `udemyproject70919.udemy_sample.meibo_q1`
)
select
    name
    ,sum_test
    ,avg_test
from q1
order by avg_test desc


--練習問題2--
with q1_list as(
    SELECT
        *
        ,jpn + math + eng as sum_test
        ,(jpn + math + eng)/3 as avg_test
    FROM `udemyproject70919.udemy_sample.meibo_q1`
)
select
    name
    ,sum_test
    ,case
        when sum_test = 300 then '5'
        when sum_test between 100 and 149 then '1'
        when sum_test < 200 then '2'
        when sum_test < 250 then '3'
        when sum_test < 300 then '4'
        else '9'
    end as flag
from q1_list
order by flag


--練習問題3--
with q1_list as(
    SELECT
        *
        ,jpn + math + eng as sum_test
        ,(jpn + math + eng)/3 as avg_test
    FROM `udemyproject70919.udemy_sample.meibo_q1`
)
select
    *
from q1_list
where jpn is null or math is null or eng is null


--練習問題4--
with q1_list as(
    SELECT
        *
        ,jpn + math + eng as sum_test
        ,(jpn + math + eng)/3 as avg_test
    FROM `udemyproject70919.udemy_sample.meibo_q1`
)
select
    *
from q1_list
where area = 1 and avg_test >= 80


--練習問題5--
with union_tb as (
    SELECT * FROM `udemyproject70919.udemy_sample.meibo_q1`
    UNION ALL
    SELECT * FROM `udemyproject70919.udemy_sample.meibo_q2`
)
select
    name
    ,area
    ,jpn
from union_tb
where (area = 1 or area = 3) and jpn >= 80

