SELECT product_category_name,
  count(*) as qtd_produtos,
  max(product_weight_g) as maior_peso,
  min(product_weight_g) as menor_peso,
  avg(product_weight_g) as avg_peso
FROM tb_products
WHERE product_category_name IS NOT NULL
  AND product_category_name != 'alimentos'
GROUP BY product_category_name
ORDER BY qtd_produtos DESC