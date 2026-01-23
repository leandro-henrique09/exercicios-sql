-- Qual cliente gastou mais dinheiro na loja?

SELECT t1.id_cliente,
       t1.nome,  
       sum(t3.valor) AS totalGasto
FROM clientes AS t1

LEFT JOIN pedidos AS t2
ON t1.id_cliente = t2.id_cliente

LEFT JOIN pagamentos AS t3
ON t2.id_pedido = t3.id_pedido

GROUP BY t1.id_cliente, t1.nome

ORDER BY totalGasto DESC
LIMIT 1