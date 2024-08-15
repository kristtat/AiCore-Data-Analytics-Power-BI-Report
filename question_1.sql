SELECT
  EXTRACT(YEAR FROM date) AS year,
  EXTRACT(MONTH FROM date) AS month
FROM orders_columns
WHERE MAX(SUM(product_quantity));