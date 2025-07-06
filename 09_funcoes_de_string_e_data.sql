-- 09_funcoes_de_string_e_data.sql

-- #####   https://www.w3schools.com/mysql/mysql_ref_functions.asp   #####
-- Site de referência útil para funções MySQL.

-- #### FUNÇOES DE STRING ####
-- CONCAT() é usada para unir duas ou mais strings em uma única string.
SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM tabela_de_clientes;

-- Concatena endereço completo do cliente.
SELECT NOME, CONCAT(ENDERECO_1, ' - ', BAIRRO, ' - ', CIDADE, '/', ESTADO) AS ENDERECO_COMPLETO FROM tabela_de_clientes;

-- #### FUNÇÕES DE DATAS ####
-- CURDATE(): Retorna a data atual.
SELECT CURDATE();

-- CURRENT_TIME(): Retorna a hora atual.
SELECT CURRENT_TIME();

-- CURRENT_TIMESTAMP(): Retorna a data e hora atual.
SELECT CURRENT_TIMESTAMP();

-- YEAR(): Extrai o ano de uma data.
SELECT YEAR(CURRENT_TIMESTAMP());

-- MONTH(): Extrai o mês de uma data.
SELECT MONTH(CURRENT_TIMESTAMP());

-- DAY(): Extrai o dia do mês de uma data.
SELECT DAY(CURRENT_TIMESTAMP());

-- MONTHNAME(): Retorna o nome do mês para uma data.
SELECT MONTHNAME(CURRENT_TIMESTAMP());

-- DATEDIFF(data1, data2): Retorna o número de dias entre duas datas.
SELECT DATEDIFF(CURRENT_TIMESTAMP(), '1998-02-24') AS RESULTADO;

-- Extrai e exibe o dia da semana, mês e ano da DATA_VENDA de notas fiscais.
SELECT DISTINCT DATA_VENDA, DAYNAME(DATA_VENDA) AS DIA,
MONTHNAME(DATA_VENDA) AS MES, YEAR(DATA_VENDA) AS ANO
FROM NOTAS_FISCAIS;

-- TIMESTAMPDIFF(unidade, data_inicio, data_fim): Calcula a diferença entre duas datas em uma unidade específica (YEAR, MONTH, DAY, etc.).
-- Calcula a idade dos clientes.
SELECT NOME, TIMESTAMPDIFF(YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS IDADE
FROM tabela_de_clientes;