WITH tb_seller_product as (
  SELECT seller_id,
    product_id,
    count(*) as qte_produto,
    sum(price) as receita_produto
  FROM tb_orders as t1
    LEFT JOIN tb_order_items as t2 ON t1.order_id = t2.order_id
  WHERE order_status = 'delivered'
  GROUP BY seller_id,
    product_id
  ORDER BY seller_id
)
SELECT *,
  row_number() OVER (
    PARTITION BY seller_id
    ORDER BY qte_produto DESC
  ) AS order_qtde
FROM tb_seller_product