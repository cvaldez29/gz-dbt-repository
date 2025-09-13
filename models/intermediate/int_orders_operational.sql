select 
im.orders_id,
im.date_date,
(im.margin+sh.shipping_fee-sh.logcost-sh.ship_cost) as operational_margin,
im.quantity,
im.purchase_cost,
im.margin,
sh.shipping_fee,
sh.logcost,
sh.ship_cost
from
{{ref('int_orders_margin')}} im
join
{{ref('stg_raw__ship')}} sh
using (orders_id)
order by orders_id DESC