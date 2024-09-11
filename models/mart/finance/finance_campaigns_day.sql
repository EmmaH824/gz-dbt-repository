SELECT 
    icd.date_date
    ,ROUND((operational_margin - ads_cost),2) AS ads_margin
    ,av_basket
    ,operational_margin
    ,nb_transactions
    ,total_revenue
    ,total_purchase_cost
    ,total_shipping_fees
    ,total_logcost
    ,total_products_sold
    ,ads_cost
    ,ads_impression
    ,ads_clicks
FROM {{ref("int_campaigns_day")}} icd
JOIN {{ref("finance_days")}}
USING (date_date)
ORDER BY date_date DESC