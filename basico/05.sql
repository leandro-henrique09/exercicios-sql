-- Liste os pedidos feitos após 2024-01-01.
SELECT *
FROM pedidos

WHERE data_pedido > '2024-01-01'