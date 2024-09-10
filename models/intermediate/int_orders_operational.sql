SELECT 
    stg_raw__ship.orders_id
    ,MAX(date_date) AS date_date
    ,SUM(margin + shipping_fee - logcost - ship_cost) AS operational_margin
FROM
{{ref("int_orders_margin")}}
JOIN
{{ref("stg_raw__ship")}}
USING (orders_id)
GROUP BY stg_raw__ship.orders_id