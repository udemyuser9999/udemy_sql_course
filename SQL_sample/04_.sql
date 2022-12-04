/*【練習問題】変換関数 */
--練習問題1--
with q1_list as(
    SELECT
        cast(id as string) as id
        ,name
        ,kana
        ,sex
        ,area
        ,jpn
        ,math
        ,eng
        ,membership
        ,first_visit
        ,quarter
        ,jpn + math + eng as sum_test
        ,(jpn + math + eng)/3 as avg_test
    FROM `udemyproject70919.udemy_sample.meibo_q1`
)
select
    *
from q1_list


--練習問題2--
select
    name
    ,COALESCE(sex, '登録なし') AS sex
    ,COALESCE(area, 99) AS area
    ,COALESCE(jpn, 0) AS jpn
FROM `udemyproject70919.udemy_sample.meibo_q1`


--練習問題3--
select
    name
    ,avg_test
    ,ROUND(avg_test, 1) as avg_test_02
from q1_list
