-- Liste os itens do pedido mostrando: número do pedido, nome do produto,
-- quantidade, preço unitário

SELECT t1.id_pedido,
       t3.nome_produto,
       t1.quantidade,
       t1.preco_unitario
        
FROM itens_pedido AS t1

LEFT JOIN pedidos AS t2
ON t1.id_pedido = t2.id_pedido

LEFT JOIN produtos AS t3
ON t1.id_produto = t3.id_produto
