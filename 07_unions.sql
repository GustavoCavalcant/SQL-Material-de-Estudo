-- 07_unions.sql

-- Seleciona os bairros distintos da tabela de clientes.
SELECT DISTINCT BAIRRO FROM tabela_de_clientes;

-- Seleciona os bairros distintos da tabela de vendedores.
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

-- ##### UNION FAZ A JUNÇÃO DE DUAS OU MAIS CONSULTAS DESDE QUE TENHAM OS MESMOS CAMPOS SELECIONADOS #####
-- UNION: Combina os resultados de duas ou mais instruções SELECT.
-- Retorna apenas os valores DISTINTOS (remove duplicatas).
SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

-- UNION ALL: Combina os resultados de duas ou mais instruções SELECT.
-- Retorna TODOS os valores, incluindo duplicatas.
SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

-- Exemplo de UNION combinando diferentes tipos de entidades (CLIENTE e VENDEDOR) em uma única lista.
-- É importante que o número e o tipo de dados das colunas sejam os mesmos em todas as SELECTs do UNION.
SELECT DISTINCT BAIRRO,NOME, 'CLIENTE' AS TIPO FROM tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO, NOME, 'VENDEDOR' AS TIPO FROM tabela_de_vendedores;

-- Simulação de FULL OUTER JOIN usando UNION de LEFT JOIN e RIGHT JOIN.
-- Retorna todos os registros quando há uma correspondência em uma das tabelas.
SELECT tabela_de_vendedores.Bairro,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores LEFT JOIN
tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO
UNION
SELECT tabela_de_vendedores.Bairro,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores RIGHT JOIN
tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;