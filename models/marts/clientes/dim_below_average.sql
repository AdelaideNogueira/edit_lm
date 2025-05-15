select user_id, avaliacao_media
from {{ref('dim_user_fidelaty')}}
where avaliacao_media < (select avg(avaliacao_media) from {{ref('dim_user_fidelaty')}})