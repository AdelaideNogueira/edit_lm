
select *
from {{ref("stg_stripe_payments")}}
where payment_status<>'success' and payment_method='credit_card'
and amount > 500000
