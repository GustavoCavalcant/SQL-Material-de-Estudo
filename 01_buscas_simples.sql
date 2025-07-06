-- 01_buscas_simples.sql

-- #### UTILIZANDO O LIKE PARA SABER SE CONTÉM TAL INFORMAÇÃO ####
-- O operador LIKE é usado em uma cláusula WHERE para procurar por um padrão especificado em uma coluna.
-- O caractere '%' é um curinga que representa zero, um ou múltiplos caracteres.
-- '%maça%' significa que a string pode ter qualquer sequência de caracteres antes ou depois de 'maça'.
SELECT * FROM tabela_de_produtos WHERE sabor LIKE '%maça%';

-- '%Mattos' significa que a string deve terminar com 'Mattos'.
SELECT * FROM tabela_de_clientes WHERE nome LIKE '%Mattos';

-- #### DISTINCT É UTILIZADO PARA TRAZER APENAS OS VALORES DISTINTOS ####
-- DISTINCT é usado para retornar apenas valores únicos na coluna especificada.
-- Ele remove linhas duplicadas do conjunto de resultados.
SELECT DISTINCT embalagem, tamanho FROM tabela_de_produtos;

-- Retorna todos os bairros únicos de clientes localizados no Rio de Janeiro.
SELECT DISTINCT bairro FROM tabela_de_clientes WHERE cidade = 'Rio de Janeiro';

-- Retorna os primeiros 4 bairros únicos de clientes localizados no Rio de Janeiro.
SELECT DISTINCT bairro FROM tabela_de_clientes WHERE cidade = 'Rio de Janeiro' LIMIT 4;