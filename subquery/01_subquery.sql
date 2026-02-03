-- 1. Liste o nome dos clientes que fizeram algum pedido.

SELECT nome
FROM clientes AS cl

WHERE cl.id_cliente IN (
    SELECT id_cliente
    FROM pedidos
)