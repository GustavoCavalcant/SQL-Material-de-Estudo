-- 05_estrutura_case.sql

-- #### CASE - FAZEMOS UM TESTE EM UM OU MAIS CAMPOS E, DEPENDENDO DO RESULTADO, TEREMOS UM OU OUTRO VALOR ####
-- A instrução CASE avalia uma lista de condições e retorna um valor para a primeira condição verdadeira.
-- Se nenhuma condição for verdadeira, o valor no ELSE é retornado.
SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA,
CASE
	WHEN PRECO_DE_LISTA >= 12 THEN 'Produto Caro'
    WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'Produto em Conta'
    ELSE 'Produto Barato'
END AS STATUS_PRECO
FROM tabela_de_produtos;

-- Classifica a senioridade dos clientes com base no ano de nascimento.
SELECT NOME,
CASE
	WHEN YEAR(DATA_DE_NASCIMENTO) < 1990 THEN 'VELHOTE'
    WHEN YEAR(DATA_DE_NASCIMENTO) BETWEEN 1990 AND 1995 THEN 'JOVEN'
    ELSE 'CRIANÇA'
END AS SENIORIDADE
FROM tabela_de_clientes;

-- Visualiza todos os vendedores.
SELECT * FROM tabela_de_vendedores;

-- Visualiza todas as notas fiscais.
SELECT * FROM notas_fiscais;