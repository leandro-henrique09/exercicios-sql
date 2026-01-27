-- 7- Liste apenas os pedidos com valor total maior que R$ 500.

-- minha resolução
-- SELECT t1.id_pedido,
--        t1.valor 
-- FROM pagamentos as t1

-- LEFT JOIN pedidos as t2
-- ON t1.id_pedido = t2.id_pedido

-- WHERE t1.valor > 500

-- resolução do chatgpt
SELECT 
    t1.id_pedido,
    SUM(t1.valor) AS total_pedido
FROM pagamentos AS t1

LEFT JOIN pedidos AS t2
    ON t1.id_pedido = t2.id_pedido

GROUP BY t1.id_pedido
HAVING SUM(t1.valor) > 500;