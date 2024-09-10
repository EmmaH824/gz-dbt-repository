SELECT 
    date_date
    ,COUNT(orders_id) AS nb_transactions
    ,ROUND(SUM(revenue),2) AS revenue
    ,ROUND(AVG(revenue),2) AS average_basket
    ,SUM(revenue - (quantity*purchase_price)) AS margin
    ,SUM(shipping_fee - (logcost + ship_cost)) AS log_ship
    ,MAX(logcost)
    ,MAX(ship_cost)
    -- ,ROUND(SUM((revenue - (quantity*purchase_price)) + shipping_fee - logcost - ship_cost),2) AS operational_margin
FROM {{ref("stg_raw__sales")}}
JOIN {{ref("stg_raw__ship")}}
USING (orders_id)
JOIN {{ref("stg_raw__product")}}
USING (products_id)
GROUP BY date_date