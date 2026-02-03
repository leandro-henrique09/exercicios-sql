-- 2. Liste os clientes que não fizeram nenhum pedido.

SELECT nome
FROM clientes AS cl

WHERE cl.id_cliente NOT IN (
    SELECT id_cliente
    FROM pedidos
)

