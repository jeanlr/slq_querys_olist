SELECT count(*) as qtd_linhas,
  count(product_id) as qtd_produtos,
  count(DISTINCT product_id) as qtd_produtos_distintos,
  count(DISTINCT product_category_name) as qtde_categorias
FROM tb_products