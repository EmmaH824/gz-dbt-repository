SELECT 
    MAX(date_date) AS datemonth
    ,ROUND(SUM(ads_margin),2) AS ads_margin
    ,ROUND(SUM(av_basket),2) AS av_basket
    ,ROUND(SUM(operational_margin),2) AS operational_margin
    ,ROUND(SUM(nb_transactions),2) AS nb_transactions
    ,ROUND(SUM(total_revenue),2) AS total_revenue
    ,ROUND(SUM(total_purchase_cost),2) AS total_purchase_cost
    ,ROUND(SUM(total_shipping_fees),2) AS total_shipping_fees
    ,ROUND(SUM(total_logcost),2) AS total_logcost
    ,ROUND(SUM(total_products_sold),2) AS total_products_sold
    ,ROUND(SUM(ads_cost),2) AS ads_cost
    ,ROUND(SUM(ads_impression),2) AS ads_impression
    ,ROUND(SUM(ads_clicks),2) AS ads_clicks
FROM {{ref("finance_campaigns_day")}}
GROUP BY EXTRACT(MONTH FROM date_date) 
ORDER BY datemonth DESC