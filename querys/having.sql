SELECT seller_state,
  count(*) as qtd_sellers
FROM tb_sellers
WHERE seller_state in ('SP', 'RJ', 'PR', 'AC', 'MG')
GROUP BY seller_state
HAVING count(*) > 10
ORDER BY qtd_sellers DESC