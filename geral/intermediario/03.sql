-- Mostre o valor total de cada pedido.

SELECT  t1.id_pedido,
        sum(t1.preco_unitario * t1.quantidade) AS totalPedido
        
FROM itens_pedido AS t1

GROUP BY t1.id_pedido
