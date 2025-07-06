-- 10_funcoes_numericas_e_matematicas.sql

-- CEILING(): Retorna o menor inteiro maior ou igual ao número especificado (arredonda para cima).
SELECT CEILING(12.2284654) AS RESULTADO;

-- ROUND(): Arredonda um número para o inteiro mais próximo ou para um número especificado de casas decimais.
SELECT ROUND(12.2284654) AS RESULTADO;

-- FLOOR(): Retorna o maior inteiro menor ou igual ao número especificado (arredonda para baixo).
SELECT FLOOR(12.2284654) AS RESULTADO;

-- RAND(): Retorna um número de ponto flutuante pseudo-aleatório entre 0 (inclusive) e 1 (exclusive).
SELECT RAND() AS RESULTADO;

-- Cálculo do faturamento de cada item de nota fiscal (quantidade * preço).
SELECT NUMERO, QUANTIDADE, PRECO, QUANTIDADE * PRECO AS FATURAMENTO
FROM itens_notas_fiscais;

-- Cálculo do faturamento arredondado para 2 casas decimais.
SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO, 2) AS FATURAMENTO
FROM itens_notas_fiscais;

-- #### VALOR DO IMPOSTO PAGO NO ANO DE 2016 ####
-- Calcula o imposto total pago no ano de 2016, arredondado para baixo.
SELECT YEAR(DATA_VENDA) ANO_VENDA, FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) IMPOSTO_PAGO
FROM notas_fiscais NF INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA);