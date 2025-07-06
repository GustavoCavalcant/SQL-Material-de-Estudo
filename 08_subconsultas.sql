-- 08_subconsultas.sql

-- Seleciona os bairros distintos da tabela de vendedores.
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

-- ##### SUBCONSULTAS PODEM FAZER O PAPEL DE UMA TABELA #####
-- Subconsulta como filtro: Seleciona todos os clientes cujo bairro está na lista de bairros dos vendedores.
SELECT DISTINCT * FROM tabela_de_clientes WHERE BAIRRO
IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);

-- Subconsulta no FROM (tabela derivada):
-- Primeiro, a subconsulta (X) calcula o maior preço de lista por embalagem.
-- Depois, a consulta externa seleciona as embalagens e maiores preços onde o MAIOR_PRECO é maior ou igual a 10.
SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.MAIOR_PRECO >= 10;

-- Exemplo de consulta com HAVING (já vista anteriormente).
-- Conta o número de notas fiscais por CPF no ano de 2016 e filtra aqueles com mais de 2000 notas.
SELECT CPF, COUNT(*) FROM notas_fiscais
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CPF HAVING COUNT(*) > 2000;

-- Mesma lógica acima, mas utilizando uma subconsulta para simular o resultado do HAVING.
-- A subconsulta (X) calcula o contador de notas fiscais por CPF em 2016.
-- A consulta externa filtra os CPFs onde o contador é maior que 2000.
SELECT X.CPF, X.CONTADOR FROM
(SELECT CPF, COUNT(*) AS CONTADOR FROM notas_fiscais
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CPF) X WHERE X.CONTADOR > 2000;

-- Outro exemplo de subconsulta no FROM, renomeada para SUB.
-- Seleciona embalagens e maiores preços onde o MAIOR_PRECO é maior que 10.
SELECT SUB.EMBALAGEM, SUB.MAIOR_PRECO FROM
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM) SUB WHERE SUB.MAIOR_PRECO > 10;

-- Este exemplo pressupõe a existência de uma VIEW chamada 'VW_MAIORES_EMBALAGENS'.
-- Se a VIEW existe, ela encapsula a subconsulta anterior, tornando a query mais limpa.
SELECT SUB.EMBALAGEM, SUB.MAIOR_PRECO FROM
VW_MAIORES_EMBALAGENS SUB WHERE SUB.MAIOR_PRECO > 10;

-- Cálculo percentual: Compara o preço de lista de cada produto com o maior preço da sua embalagem.
-- É feito um JOIN entre a tabela de produtos e uma VIEW (ou subconsulta) que contém os maiores preços por embalagem.
SELECT A.NOME_DO_PRODUTO, A.EMBALAGEM, A.PRECO_DE_LISTA, B.MAIOR_PRECO,
((A.PRECO_DE_LISTA / B.MAIOR_PRECO) -1) * 100 AS PERCENTUAL
FROM tabela_de_produtos A INNER JOIN VW_MAIORES_EMBALAGENS B
ON A.EMBALAGEM = B.EMBALAGEM
GROUP BY A.NOME_DO_PRODUTO, A.EMBALAGEM, A.PRECO_DE_LISTA, B.MAIOR_PRECO -- Adicionado todos os campos não agregados ao GROUP BY
ORDER BY B.MAIOR_PRECO DESC;