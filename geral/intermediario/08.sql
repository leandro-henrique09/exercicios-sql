-- 8- Quantos produtos foram vendidos por categoria?
SELECT t1.categoria,
       sum(t2.quantidade) AS totalVendido
FROM produtos as t1

LEFT JOIN itens_pedido as t2
ON t1.id_produto = t2.id_produto

WHERE t1.ativo = 1

GROUP BY t1.categoria

