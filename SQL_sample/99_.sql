/* 力試し問題 */
--問題1--
with union_tb as(
  SELECT * FROM `udemyproject70919.udemy_sample.meibo_q1`
  UNION ALL
  SELECT * FROM `udemyproject70919.udemy_sample.meibo_q2`
),all_test as (
  select
      ut.name
      ,ut.area as area_id
      ,ar.name as area_name
      ,ut.jpn + ut.math + ut.eng as all_t_point
    from union_tb ut
      left join `udemyproject70919.udemy_sample.area` ar
      on ut.area = ar.cd
  where ut.area is not null
), ranking as (
  select
    name
    ,area_id
    ,area_name
    ,all_t_point
    ,rank() over(partition by area_name order by all_t_point desc) as area_rank
  from all_test
  where area_name is not null
)
select
  *
from ranking
where area_rank = 1
order by area_id


--問題2--
with tmp as(
    SELECT * FROM `udemyproject70919.udemy_sample.meibo_q1`
    UNION ALL
    SELECT * FROM `udemyproject70919.udemy_sample.meibo_q2`
), tmp1 as(
    select
        tmp.name
        ,tmp.area
        ,ar.name as area_name
        ,tmp.jpn
        ,tmp.math
        ,tmp.eng
        ,tmp.jpn + tmp.math + tmp.eng as all_t_point
        ,date_trunc(tmp.membership, month) as trunc_month
    from tmp
        left join `udemyproject70919.udemy_sample.area` ar
        on tmp.area = ar.cd
    where tmp.area is not null and ar.name is not null
    order by trunc_month
), tmp2 as(
select
        name
        ,tmp1.area_name
        ,all_t_point
        ,rank() over(partition by trunc_month order by all_t_point desc) as month_rank
        ,trunc_month
    from tmp1
)
select
    name
    ,area_name
    ,all_t_point
    ,month_rank
    ,SUBSTR(cast(trunc_month as string),1,7) as trunc_month
from tmp2
where month_rank in (1,2,3)
order by trunc_month
