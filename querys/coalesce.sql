-- tudo que tiver nulo em product_category_name ele vai substituir por 'outros'
SELECT DISTINCT coalesce(product_category_name, 'outros') as categoria_fillna
FROM tb_products
ORDER BY product_category_name