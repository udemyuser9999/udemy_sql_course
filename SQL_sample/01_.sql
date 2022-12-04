/*【練習問題】基礎的なSQL文 */
--練習問題1--
SELECT 
    id
    ,name as fullname
    ,sex
    ,membership
FROM `udemyproject70919.udemy_sample.meibo_q1`
LIMIT 10


--練習問題2--
SELECT
    sex
    ,area
FROM `udemyproject70919.udemy_sample.meibo_q2`
group by sex,area
order by sex


--練習問題3--
with q1 as(
    SELECT
        *
    FROM `udemyproject70919.udemy_sample.meibo_q1`
    where sex = '男'
)
select
    id
    ,name
    ,membership
from q1
where area = 3

--もう一つの書き方
select
    id
    ,name
    ,membership
from (
    SELECT
        *
    FROM `udemyproject70919.udemy_sample.meibo_q1`
    where sex = '男'
    )
where area = 3