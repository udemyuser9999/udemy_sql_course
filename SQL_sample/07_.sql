/*【練習問題】日付関数 */
--練習問題1--
select
    current_timestamp()
    ,DATE_ADD(date(current_timestamp()), INTERVAL 7 DAY) AS add_7day
    ,DATE_SUB(current_date(), INTERVAL 7 DAY) AS sub_7day
    ,DATE_ADD(current_date(), INTERVAL 1 month) AS add_1month
    ,DATE_SUB(current_date(), INTERVAL 1 month) AS sub_1month


--練習問題2--
select
    name
    ,membership
    ,first_visit
    ,DATE_DIFF(first_visit, membership, DAY) AS diff_day
FROM `udemyproject70919.udemy_sample.meibo_q2`


--練習問題3--
select
    name
    ,membership
    ,date_trunc(membership, month) AS trunc_membership
FROM `udemyproject70919.udemy_sample.meibo_q2`
