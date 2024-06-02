-- qual a receita de cada categoria de produtos?
-- e o total de vendas?
-- em unidades e em pedidos?
SELECT t2.product_category_name,
  sum(t1.price) AS receita,
  count(*) AS total_itens_vendidos,
  count(DISTINCT t1.order_id) AS qtde_pedidos,
  round(
    count(*) / cast(count(DISTINCT t1.order_id) AS FLOAT),
    3
  ) AS avg_item_por_pedido
FROM tb_order_items AS t1
  LEFT JOIN tb_products AS t2 ON t1.product_id = t2.product_id
  LEFT JOIN tb_orders as t3 ON t1.order_id = t3.order_id
WHERE t3.order_status = 'delivered'
  AND strftime('%Y', t3.order_approved_at) = '2017'
GROUP BY t2.product_category_name
ORDER BY count(*) / cast(count(DISTINCT t1.order_id) AS FLOAT) DESC