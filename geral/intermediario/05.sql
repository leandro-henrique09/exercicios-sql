-- Qual categoria tem mais produtos cadastrados?

SELECT categoria,
       count(*) AS qtdeCadastrados 
FROM produtos

GROUP BY categoria
ORDER BY qtdeCadastrados DESC

LIMIT 1