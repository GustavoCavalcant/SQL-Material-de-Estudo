-- 02_ordenacao_e_limite.sql

-- #### LIMIT É UTILIZADO PARA LIMITAR A QUANTIDADE DE REGISTROS RETORNADOS ####
-- LIMIT 2,3 significa que a consulta deve começar a partir do registro de índice 2 (o terceiro registro, já que o índice começa em 0)
-- e retornar 3 registros.
SELECT * FROM tabela_de_produtos LIMIT 2,3;

-- Retorna as primeiras 10 notas fiscais com data de venda '2017-01-01'.
SELECT * FROM notas_fiscais WHERE DATA_VENDA = '2017-01-01' LIMIT 10;

-- #### ORDER BY ORDENA PELO CAMPO ESCOLHIDO, PODENDO SER DE FORMA CRESCENTE(ASC) OU DECRESCENTE(DESC), PODE USAR 1 OU MAIS CAMPOS ####
-- ORDER BY PRECO_DE_LISTA (ASC por padrão) ordena os produtos pelo preço de lista em ordem crescente.
SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA;

-- ORDER BY PRECO_DE_LISTA DESC ordena os produtos pelo preço de lista em ordem decrescente.
SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA DESC;

-- A ordenação pode ser feita por múltiplos campos. Primeiro por EMBALAGEM e depois por PRECO_DE_LISTA.
SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM, PRECO_DE_LISTA;

-- Seleciona todos os produtos com o nome específico.
SELECT * FROM tabela_de_produtos WHERE nome_do_produto = 'Linha Refrescante - 1 Litro - Morango/Limão';

-- Ordena os itens de notas fiscais pelo código do produto '1101035' pela quantidade em ordem decrescente.
SELECT * FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = '1101035' ORDER BY QUANTIDADE DESC;