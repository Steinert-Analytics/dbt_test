    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{ source('dbt_official_training', 'orders') }}