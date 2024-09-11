SELECT *
FROM {{ref("int_campaigns_day")}}
JOIN {{ref("finance_days")}}
USING (date_date)