-- Liste os pedidos com o nome do cliente.

SELECT t1.*,
       t2.nome 

FROM pedidos AS t1

LEFT JOIN clientes AS t2
ON t1.id_cliente = t2.id_cliente