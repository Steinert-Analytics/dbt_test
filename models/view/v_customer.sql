{{ config(materialized='view') }}
 
 
   SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address
   FROM dbt_training_sales.customer