SELECT DISTINCT CASE
    WHEN product_category_name IS NULL THEN 'outros'
    WHEN product_category_name = 'alimentos'
    OR product_category_name = 'alimentos_bebidas' THEN 'alimentos'
    WHEN product_category_name IN ('artes', 'artes_e_artesanato') THEN 'artes'
    WHEN product_category_name LIKE '%artigos%' THEN 'artigos'
    WHEN product_category_name LIKE '%construcao%' THEN 'construcao'
    WHEN product_category_name LIKE '%eletrodomesticos%' THEN 'eletrodomesticos'
    WHEN product_category_name LIKE '%fashion%' THEN 'fashion'
    WHEN product_category_name LIKE '%livros%' THEN 'livros'
    WHEN product_category_name LIKE '%casa_conforto%' THEN 'casa_conforto'
    WHEN product_category_name LIKE '%portateis_%' THEN 'portateis_casa'
    WHEN product_category_name LIKE '%moveis_%' THEN 'moveis'
    ELSE product_category_name
  END AS categoria_fillna
FROM tb_products
ORDER BY categoria_fillna