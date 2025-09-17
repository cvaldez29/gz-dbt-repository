select 
orders_id,
max(date_date) as date_date,
sum(revenue) as revenue,
sum(quantity) as quantity,
sum(purchase_cost) as purchase_cost,
sum(margin) as margin
from
{{ref('int_sales_margin')}}
group by orders_id
order by orders_id DESC
