SELECT
  f.date_date,
  f.operational_margin,
  c.ads_cost,
  f.operational_margin - c.ads_cost AS ads_margin,
  f.average_basket,
  c.ads_impression,
  c.ads_clicks,
  f.quantity,
  f.revenue,
  f.purchase_cost,
  f.shipping_fee,
  f.log_cost,
  f.ship_cost
FROM {{ ref('finance_days') }} f
LEFT JOIN {{ ref('int_campaigns_day') }} c
ON f.date_date = c.date_date