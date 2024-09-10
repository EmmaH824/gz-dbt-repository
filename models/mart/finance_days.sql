SELECT 
    date_date
    ,COUNT(orders_id) AS nb_transactions
    ,ROUND(SUM(revenue),2) AS total_revenue
    ,ROUND(AVG(revenue),2) AS av_basket

FROM {{ref("int_orders_operational")}}
JOIN {{ref("stg_raw__ship")}}
USING (orders_id)
GROUP BY date_date