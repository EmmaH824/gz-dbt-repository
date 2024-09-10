SELECT 
    date_date
    ,COUNT(orders_id) AS nb_transactions
    ,ROUND(SUM(revenue),2) AS total_revenue
    ,ROUND(AVG(revenue),2) AS av_basket
    ,ROUND(SUM(operational_margin),2) AS operational_margin
    ,ROUND(SUM(purchase_cost),2) AS total_purchase_cost
    ,ROUND(SUM(shipping_fee),2) AS total_shipping_fees
    ,ROUND(SUM(logcost),2) AS total_logcost
    ,ROUND(SUM(quantity),2) AS total_products_sold

FROM {{ref("int_orders_operational")}}
JOIN {{ref("stg_raw__ship")}}
USING (orders_id)
GROUP BY date_date