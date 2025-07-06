-- 06_joins.sql

-- #### JUNÇÃO DE TABELA, TIPOS DE JOIN ####

-- INNER JOIN: Retorna apenas as linhas que possuem correspondência em AMBAS as tabelas.
-- Neste caso, une vendedores e notas fiscais onde a MATRICULA é a mesma em ambas as tabelas.
SELECT * FROM tabela_de_vendedores A INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA;

-- Contagem de notas fiscais por vendedor, mostrando a matrícula e o nome do vendedor.
SELECT A.MATRICULA, A.NOME, COUNT(*) FROM
tabela_de_vendedores A INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;

-- Cálculo do faturamento total por ano, unindo notas fiscais e itens de notas fiscais.
SELECT YEAR(DATA_VENDA), SUM(QUANTIDADE * PRECO) AS FATURAMENTO
FROM notas_fiscais NF INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA_VENDA);

-- Contagem total de clientes.
SELECT COUNT(*) FROM tabela_de_clientes;

-- Contagem de notas fiscais por CPF do cliente.
SELECT CPF, COUNT(*) FROM notas_fiscais GROUP BY CPF;

-- LEFT JOIN: Retorna todas as linhas da tabela da ESQUERDA e as linhas correspondentes da tabela da DIREITA.
-- Se não houver correspondência na direita, os valores das colunas da direita serão NULL.
-- Usado para encontrar clientes que NÃO possuem notas fiscais (CPF na tabela B é NULL).
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A LEFT JOIN notas_fiscais B
ON A.CPF = B.CPF
WHERE B.CPF IS NULL;

-- Exemplo de INNER JOIN para encontrar vendedores e clientes no mesmo bairro.
SELECT tabela_de_vendedores.Bairro,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores INNER JOIN
tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

-- Exemplo de LEFT JOIN: Retorna todos os vendedores e, se houver, os clientes do mesmo bairro.
SELECT tabela_de_vendedores.Bairro,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores LEFT JOIN
tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

-- Exemplo de RIGHT JOIN: Retorna todos os clientes e, se houver, os vendedores do mesmo bairro.
SELECT tabela_de_vendedores.Bairro,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores RIGHT JOIN
tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

-- #### CROSS JOIN ####
-- CROSS JOIN: Retorna o produto cartesiano das duas tabelas, ou seja, cada linha da primeira tabela é combinada com cada linha da segunda tabela.
-- Não é necessário especificar uma condição ON.
SELECT tabela_de_vendedores.Bairro,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME FROM tabela_de_vendedores,
tabela_de_clientes;

-- FULL JOIN (Simulado com UNION de LEFT e RIGHT JOIN, pois MySQL não possui FULL JOIN nativo):
-- Retorna todas as linhas quando há uma correspondência em uma das tabelas.
-- É uma combinação de LEFT JOIN e RIGHT JOIN.
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