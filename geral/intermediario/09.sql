-- 9- Mostre a média de valor dos pedidos.
SELECT avg(t2.valor) AS mediaValores 
       
FROM pedidos as t1

INNER JOIN pagamentos as t2
ON t1.id_pedido = t2.id_pedido