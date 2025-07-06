-- 04_condicoes_com_having.sql

-- #### HAVING É UMA CONDIÇÃO QUE SE APLICA AO RESULTADO DE UMA AGREGAÇÃO ####
-- WHERE filtra linhas antes do GROUP BY.
-- HAVING filtra grupos após o GROUP BY.
-- Aqui, filtramos os estados onde a soma do limite de crédito é maior que 900000.
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE FROM tabela_de_clientes
GROUP BY ESTADO HAVING SUM(LIMITE_DE_CREDITO) > 900000;

-- Exemplo com múltiplas condições no HAVING.
-- Filtra grupos de embalagens onde a soma do PRECO_DE_LISTA é menor ou igual a 80 E o PRECO_DE_LISTA máximo é maior ou igual a 5.
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO, MIN(PRECO_DE_LISTA) AS MENOR_PRECO
FROM tabela_de_produtos GROUP BY EMBALAGEM HAVING SUM(PRECO_DE_LISTA) <= 80 AND MAX(PRECO_DE_LISTA) >= 5;

-- Conta o número de notas fiscais por CPF no ano de 2016 e filtra aqueles com mais de 2000 notas.
SELECT CPF, COUNT(*) FROM notas_fiscais WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CPF HAVING COUNT(*) > 2000;