/*【練習問題】文字列関数 */
--練習問題1--
SELECT
    name
    ,kana
    ,length(kana) as len_kana
    ,upper(kana) as upp_kana
    ,lower(kana) as low_kana
FROM `udemyproject70919.udemy_sample.meibo_q1` 


--練習問題2--
SELECT
    CONCAT('U',lpad(CAST(id AS string),9,'0')) AS u_id
    ,id
    ,name
    ,LENGTH(CONCAT('U',lpad(CAST(id AS string),9,'0'))) AS len_u_id
FROM `udemyproject70919.udemy_sample.meibo_q1`


--練習問題3--
select
    name
    ,trim(name)
    FROM `udemyproject70919.udemy_sample.meibo_q1`
where name like '%　%'　or name like '% %'


--練習問題4--
select
    name
    ,membership
    ,SUBSTR(cast(membership as string), 1, 4) as yyyy
    ,substr(cast(membership as string), 6,2) as mm
    ,substr(cast(membership as string), 9,2) as dd
FROM `udemyproject70919.udemy_sample.meibo_q1`

