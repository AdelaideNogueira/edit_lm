--select t.user_id, a.avg_relevance
--from {{ref('stg_tag')}} t inner join 
--(select movie_id, avg(relevance) avg_relevance
--from {{ref('stg_relevancy')}}
--group by movie_id) a on t.movie_id = a.movie_id

with ranked_data as (
    select t.user_id, avg(a.relevance) as avg_relevance,
    row_number() over (order by avg(a.relevance) desc) as row_num
    from {{ref('stg_tag')}} t
    inner join {{ref('stg_relevancy')}} a
    on t.movie_id = a.movie_id
    group by t.user_id
)
select user_id, avg_relevance
from ranked_data
where row_num <= 10
