
select user_id, avg(rating) avaliacao_media, count(rating) num_contribuicoes, min(rating_date)  primeiro_registo
 from {{ref('stg_rating')}}
 group by user_id
 --order by num_contribuicoes desc