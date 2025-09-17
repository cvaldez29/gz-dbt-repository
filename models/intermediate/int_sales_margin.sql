select 
s.*,
p.purchase_price,
p.purchase_price * s.quantity AS purchase_cost,
s.revenue - (s.quantity * p.purchase_price) AS margin
from
{{ref('stg_raw__sales')}} s
join
{{ref('stg_raw__product')}} p
using (products_id)