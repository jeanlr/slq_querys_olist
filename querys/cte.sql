WITH tb_best_categoria AS (
  SELECT t2.product_category_name
  FROM tb_order_items as t1
    LEFT JOIN tb_products as t2 ON t1.product_id = t2.product_id
  GROUP BY t2.product_category_name
  ORDER BY count(*) DESC
  LIMIT 10
)
SELECT *
FROM tb_best_categoria