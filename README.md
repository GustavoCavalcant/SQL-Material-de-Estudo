# Material de Estudo SQL 🚀

Bem-vindo ao **Material de Estudo SQL**! Este repositório é uma coletânea organizada de queries SQL, perfeitas para aprimorar suas habilidades ou para consulta rápida. Cada arquivo `.sql` explora um conceito específico, com comandos detalhadamente comentados em português para facilitar o aprendizado.

---

## 📚 Sumário

* [Estrutura do Conteúdo](#estrutura-do-conteúdo)
* [Como Usar](#como-usar)
* [Configuração do Banco de Dados Local](#configuração-do-banco-de-dados-local)
* [Executando as Queries de Estudo](#executando-as-queries-de-estudo)
* [Melhore Sua Experiência](#melhore-sua-experiência)

---

## Estrutura do Conteúdo

O material está cuidadosamente organizado em arquivos `.sql`, com cada um focado em um bloco temático distinto. Conheça a função de cada um:

* **`01_buscas_simples.sql`**: 🔍 Queries básicas usando `LIKE` para buscar informações em strings e `DISTINCT` para retornar valores únicos.
* **`02_ordenacao_e_limite.sql`**: 🔢 Exemplos de como ordenar resultados com `ORDER BY` (ascendente e descendente) e limitar a quantidade de registros com `LIMIT`.
* **`03_funcoes_agregacao.sql`**: ➕ Demonstrações de funções matemáticas como `SUM` e `MAX` para agregar dados, combinadas com a cláusula `GROUP BY` para agrupar resultados.
* **`04_condicoes_com_having.sql`**: 🎯 Uso da cláusula `HAVING` para aplicar condições e filtros em resultados de funções de agregação.
* **`05_estrutura_case.sql`**: 🚦 Exemplos práticos da instrução `CASE` para criar lógica condicional nas queries, retornando diferentes valores com base em critérios.
* **`06_joins.sql`**: 🔗 Diferentes tipos de `JOIN` (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `CROSS JOIN`) para combinar dados de múltiplas tabelas. Inclui exemplos de como identificar registros sem correspondência.
* **`07_unions.sql`**: 🤝 Utilização do `UNION` e `UNION ALL` para combinar resultados de duas ou mais queries, garantindo a compatibilidade das colunas selecionadas.
* **`08_subconsultas.sql`**: 🧩 Exemplos de subconsultas (subqueries) que podem atuar como tabelas temporárias ou filtros para consultas principais, aumentando a complexidade e poder das suas buscas.
* **`09_funcoes_de_string_e_data.sql`**: 📅 Demonstrações de funções para manipulação de strings (`CONCAT`) e de datas (`CURDATE`, `CURRENT_TIME`, `YEAR`, `MONTH`, `DAY`, `MONTHNAME`, `DATEDIFF`, `TIMESTAMPDIFF`).
* **`10_funcoes_numericas_e_matematicas.sql`**: 🧮 Aplicação de funções numéricas como `CEILING`, `ROUND`, `FLOOR` e `RAND` em cálculos dentro das queries.
* **`11_conversoes_de_dados.sql`**: ↔️ Exemplos de como realizar a conversão de tipos de dados (`CAST`, `CONVERT`) e formatação de datas.
* **`12_analise_de_vendas.sql`**: 📈 Queries mais complexas focadas em análise de vendas, incluindo:
    * Consulta de vendas de clientes por mês.
    * Cálculo e status do limite de compra mensal por cliente.
    * Análise de quantidade e percentual de venda por sabor e por tamanho de embalagem em um ano específico, utilizando subconsultas.

---

## Como Usar

Para aproveitar ao máximo este material didático, basta clonar ou baixar o conteúdo deste repositório para o seu ambiente local. Todos os arquivos necessários estão disponíveis diretamente nas pastas.

---

## Configuração do Banco de Dados Local

Para que você possa executar e testar todas as queries, é essencial configurar um ambiente MySQL local.

1.  **Localize o arquivo `setup_database.sql`**: Este arquivo, encontrado na raiz do projeto, contém os comandos **DDL** (para criar as tabelas) e **DML** (para inserir dados de exemplo).

2.  **Abra seu cliente MySQL**: Utilize sua ferramenta preferida, como MySQL Workbench, linha de comando (`mysql -u seu_usuario -p`), DBeaver, ou qualquer outra IDE de banco de dados.

3.  **Crie ou selecione um banco de dados**:
    * Se você quiser criar um **novo banco de dados** para esses estudos, **descomente as três primeiras linhas** do arquivo `setup_database.sql` e **substitua `'seu_banco_de_dados'`** pelo nome que deseja (ex: `'estudo_sql'`).
        ```sql
        DROP DATABASE IF EXISTS `estudo_sql`;
        CREATE DATABASE `estudo_sql`;
        USE `estudo_sql`;
        ```
    * Se você já tem um banco de dados e quer apenas **adicionar essas tabelas nele**, **mantenha as três primeiras linhas comentadas** e certifique-se de que seu cliente MySQL esteja conectado ao banco de dados correto antes de executar o script.

4.  **Execute o script `setup_database.sql`**:
    * **Opção 1 (Recomendado)**: Copie todo o conteúdo do arquivo `setup_database.sql` e cole-o diretamente no console ou editor de queries do seu cliente MySQL, executando-o.
    * **Opção 2**: Se sua ferramenta permite, execute o arquivo `.sql` diretamente (ex: no MySQL Workbench, vá em `File > Open SQL Script...` e depois clique no raio para executar).

5.  **Verifique a configuração**: Após a execução bem-sucedida, você deverá ver as tabelas (`tabela_de_produtos`, `tabela_de_clientes`, `tabela_de_vendedores`, `notas_fiscais`, `itens_notas_fiscais`) criadas e populadas com os dados de exemplo.

---

## Executando as Queries de Estudo

Com o banco de dados configurado e pronto:

1.  **Explore os arquivos `.sql`**: Abra os arquivos de `01_buscas_simples.sql` a `12_analise_de_vendas.sql` em seu editor de texto ou IDE de banco de dados.
2.  **Execute as queries**: Conecte-se ao banco de dados que você configurou (usando `USE seu_banco_de_dados;` se necessário) e execute as queries linha por linha ou em blocos para observar os resultados em tempo real.
3.  **Entenda os comentários**: Cada query possui comentários explicativos, detalhando sua funcionalidade e o que ela busca alcançar.

---

## Melhore Sua Experiência

Para tornar este material ainda mais interativo e acessível, você pode considerar:

* **Demos Online**: Crie um "fiddle" em plataformas como [DB Fiddle](https://www.db-fiddle.com/) ou [SQL Fiddle](http://sqlfiddle.com/) contendo o `setup_database.sql` e algumas queries de exemplo. Adicione links diretos para esses "fiddles" no `README.md` ou nos arquivos `.sql` correspondentes, permitindo que as pessoas testem as queries diretamente no navegador sem precisar configurar um ambiente local.
* **Jupyter Notebooks**: Para um estudo mais aprofundado, considere converter os arquivos `.sql` em Jupyter Notebooks. Isso permitiria combinar código SQL, explicações em Markdown e até mesmo visualizações de dados no mesmo arquivo, criando uma experiência de aprendizado mais rica.
