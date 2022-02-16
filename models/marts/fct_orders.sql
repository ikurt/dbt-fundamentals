with orders as (
    select * from {{ ref('stg_orders') }}
),

payments as (
    select * from {{ ref('stg_payments') }}
)

select 
    order_id,
    customer_id,
    a.order_date,
    coalesce(b.amount, 0) as amount
from orders a join payments b on a.order_id=b.orderid
