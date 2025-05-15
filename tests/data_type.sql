select ra.movie_id, ra.rating, re.relevance
from {{ref('stg_rating')}} ra
full join {{ref('stg_relevancy')}} re
on ra.movie_id=re.movie_id
where rating not like ''