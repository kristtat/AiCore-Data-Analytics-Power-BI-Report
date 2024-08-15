SELECT 
    CONCAT(country_region, ', ', country_code) AS merged_region,
    dim_products.category AS top_category,
    SUM(sale_price * "Product Quantity") AS total_profit
FROM 
    orders_powerbi
INNER JOIN 
    dim_products ON orders_powerbi.product_code = dim_products.product_code
INNER JOIN 
    dim_stores ON orders_powerbi."Store Code" = dim_stores."store code"
WHERE 
    TO_CHAR("Order Date"::DATE, 'YYYY') = '2021'
    AND CONCAT(country_region, ', ', country_code) = 'Wiltshire, GB'
GROUP BY 
    top_category,
    merged_region
ORDER BY 
    total_profit DESC
LIMIT 
    1;