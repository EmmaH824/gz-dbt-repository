SELECT 
    orders_id
   ,date_date
   ,SUM(revenue) AS revenue
   ,SUM(quantity) AS quantity
   ,SUM(purchase_cost) AS purchase_cost
   ,SUM(margin) AS margin
FROM
{{ref("stg_raw__sales")}}
JOIN
{{ref("int_sales_margin")}}
USING  (products_id)
GROUP BY orders_id, date_date

