SELECT 
    date_date
    ,COUNT(orders_id) AS nb_orders
FROM {{ref("stg_raw__sales")}}
GROUP BY date_date