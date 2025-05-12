-- tenho que fazer o teste para falhar , ou seja, quando amount < 0
select *
from {{ref('stg_stripe_payments')}}
where amount <0