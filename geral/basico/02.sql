-- Liste nome e preço de todos os produtos ativos.

SELECT nome_produto,
       preco 
FROM produtos

WHERE ativo = 1