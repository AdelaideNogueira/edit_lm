select ra.movie_id, ra.rating, ta.tag_date, ra.rating_date
from {{ref('stg_rating')}} ra
full join {{ref('stg_tag')}} ta
on ra.user_id=ta.user_id
where DATE_DIFF(timestamp(ta.tag_date), current_timestamp(), DAY) >0 
or DATE_DIFF(timestamp(ra.rating_date), current_timestamp(), DAY) >0 