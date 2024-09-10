SELECT 
    date_date
    ,orders_id
    ,revenue
    ,quantity
    ,products_id
    ,quantity*purchase_price AS purchase_cost
    ,revenue - (quantity*purchase_price) AS margin
FROM
{{ref("stg_raw__sales")}}
JOIN
{{ref("stg_raw__product")}}
USING (products_id)