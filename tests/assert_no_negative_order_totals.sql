select
    order_id,
    order_total_price
from {{ ref('fct_orders') }}
where order_total_price < 0
