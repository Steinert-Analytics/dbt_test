select 
id as payment_id,
orderid as order_id,
paymentmethod,
status,
amount / 100 as amount,
created as created_date

from {{ source('dbt_official_training', 'payment') }}
where status != 'fail'