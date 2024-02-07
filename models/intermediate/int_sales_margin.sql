SELECT products_id, revenue, quantity, purchase_price,orders_id,
quantity*revenue as tot,
(quantity*revenue) - cast(purchase_price AS FLOAT64) as margin,
FROM {{ref('stg_gz_raw_data__raw_gz_sales')}}
JOIN {{ref('stg_gz_raw_data__raw_gz_product')}}
USING(products_id)