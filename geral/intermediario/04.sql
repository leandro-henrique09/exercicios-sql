-- Quantos pedidos cada cliente já fez?

SELECT t1.id_cliente,
       t1.nome, 
       count(t2.id_pedido) AS qtdePedidos
FROM clientes AS t1

LEFT JOIN pedidos AS t2
ON t1.id_cliente = t2.id_cliente

GROUP BY t1.id_cliente
