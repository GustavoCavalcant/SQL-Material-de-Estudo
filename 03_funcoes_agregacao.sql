-- 03_funcoes_agregacao.sql

-- #### UTILIZANDO FUNÇÕES MATEMATICAS NOS CAMPOS ####
-- SUM() calcula a soma total de uma coluna numérica.
-- GROUP BY ESTADO agrupa os resultados pela coluna ESTADO, permitindo que a função SUM() seja aplicada a cada grupo.
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTADO;

-- MAX() retorna o valor máximo de uma coluna numérica.
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos GROUP BY EMBALAGEM;

-- Combinação de GROUP BY com múltiplos campos.
-- Agrupa primeiro por ESTADO, depois por BAIRRO para calcular o limite total de crédito.
-- A cláusula WHERE filtra os resultados antes da agregação.
SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes
WHERE CIDADE = 'Rio de Janeiro' GROUP BY ESTADO, BAIRRO ORDER BY BAIRRO;