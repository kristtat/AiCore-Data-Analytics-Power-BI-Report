SELECT 
    dim_stores.store_type AS top_store_type,
    SUM(sale_price * "Product Quantity") AS total_revenue
FROM 
    orders_powerbi
INNER JOIN 
    dim_products ON orders_powerbi.product_code = dim_products.product_code
INNER JOIN
    dim_stores ON orders_powerbi."Store Code" = dim_stores."store code"
WHERE 
    TO_CHAR("Order Date"::DATE, 'YYYY') = '2022'
    AND 
    dim_stores.country_code = 'DE'
GROUP BY 
    dim_stores.store_type
ORDER BY 
    total_revenue DESC
LIMIT 
    1;
