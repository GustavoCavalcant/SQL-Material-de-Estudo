-- 11_conversoes_de_dados.sql

-- #####  https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_date-format  #####
-- Link de referência útil para funções de data e hora no MySQL.

-- #### CONVERSÃO DE DADOS ####
-- Retorna a data e hora atual.
SELECT CURRENT_TIMESTAMP() AS RESULTADO;

-- DATE_FORMAT(): Formata uma data para um formato específico.
-- %W: Nome completo do dia da semana.
-- %d: Dia do mês (01-31).
-- %m: Mês como número (01-12).
-- %Y: Ano com quatro dígitos.
-- %U: Semana do ano (00-53), onde o domingo é o primeiro dia da semana.
SELECT CONCAT('O dia de hoje é: ',
DATE_FORMAT(CURRENT_TIMESTAMP(),'%W, %d/%m/%Y - %U')) AS RESULTADO;

-- CONVERT(expressao, tipo_dados): Converte uma expressão para um tipo de dados especificado.
-- Neste caso, converte um número decimal para CHAR e extrai o primeiro caractere.
SELECT SUBSTRING(CONVERT(23.3, CHAR), 1,1) AS RESULTADO;

-- #### FATURAMENTO DE CADA CLIENTE NO ANO DE 2016 ####
-- Constrói uma sentença que resume o faturamento de cada cliente no ano de 2016.
-- Utiliza CONCAT para unir strings e CAST para converter números em CHAR para a concatenação.
SELECT CONCAT('O Cliente ', TC.NOME, ' faturou ',
CAST(SUM(ROUND(INF.QUANTIDADE * INF.PRECO)) AS CHAR (20)), ' no ano ',
CAST(YEAR(NF.DATA_VENDA) AS CHAR (20))) AS SENTENCA FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TC.NOME, YEAR(DATA_VENDA);