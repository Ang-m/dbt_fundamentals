select order_id,
sum(PAYMENT_AMOUNT) as total_amount
from {{ ref('stg_stripe__payment') }}
group by 1
having sum(PAYMENT_AMOUNT) < 0