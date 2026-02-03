-- 3. Liste os pedidos cujo valor do pagamento é maior que a média de todos os pagamentos.

SELECT id_pedido,
       valor 
FROM pagamentos

WHERE valor > (
    SELECT avg(valor)
    FROM pagamentos
)