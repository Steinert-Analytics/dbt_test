select
o.order_id,
o.customer_id,
p.amount

from {{ ref('stg_jaffle_shop__orders') }} as o 
left join {{ ref('stg_stripe__payments') }} as p ON o.order_id = p.order_id
