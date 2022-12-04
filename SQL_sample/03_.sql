/*【練習問題】テーブル結合 */
--練習問題1--
SELECT
    A.name as name
    ,A.area as area_id
    ,B.name as area_name
FROM `udemyproject70919.udemy_sample.meibo_q1` A
    left join `udemyproject70919.udemy_sample.area` B
    on A.area = B.cd
