SELECT max(product_weight_g) as maior_peso,
  min(product_weight_g) as menor_peso,
  round(avg(product_weight_g), 2) as avg_peso
FROM tb_products