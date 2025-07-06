-- setup_database.sql
-- Este script contém os comandos DDL para criar as tabelas e DML para inserir dados,
-- permitindo que você execute e teste todas as queries de estudo fornecidas anteriormente.

-- DROP DATABASE IF EXISTS `seu_banco_de_dados`;
-- CREATE DATABASE `seu_banco_de_dados`;
-- USE `seu_banco_de_dados`;

-- IMPORTANTE: Substitua 'seu_banco_de_dados' pelo nome que você deseja para o seu banco de dados.
-- Descomente as linhas acima e execute-as antes de criar as tabelas se precisar criar ou selecionar um novo banco de dados.

-- -----------------------------------------------------
-- Tabela `tabela_de_produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tabela_de_produtos`;
CREATE TABLE `tabela_de_produtos` (
  `CODIGO_DO_PRODUTO` VARCHAR(10) NOT NULL,
  `NOME_DO_PRODUTO` VARCHAR(100) NULL,
  `SABOR` VARCHAR(50) NULL,
  `TAMANHO` VARCHAR(50) NULL,
  `EMBALAGEM` VARCHAR(50) NULL,
  `PRECO_DE_LISTA` FLOAT NULL,
  PRIMARY KEY (`CODIGO_DO_PRODUTO`)
);

-- Inserção de dados para tabela_de_produtos
INSERT INTO `tabela_de_produtos` (`CODIGO_DO_PRODUTO`, `NOME_DO_PRODUTO`, `SABOR`, `TAMANHO`, `EMBALAGEM`, `PRECO_DE_LISTA`) VALUES
('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Uva', '700 ml', 'Garrafa', 6.309),
('1002334', 'Sabores de Verao - 1 Litro - Limao', 'Limao', '1 Litro', 'PET', 10.029),
('1002767', 'Sabores de Verao - 1 Litro - Manga', 'Manga', '1 Litro', 'PET', 10.029),
('1004323', 'Sabor da Montanha - 700 ml - Morango', 'Morango', '700 ml', 'Garrafa', 6.309),
('1006789', 'Sabor da Montanha - 700 ml - Limao', 'Limao', '700 ml', 'Garrafa', 6.309),
('1008899', 'Sabor da Montanha - 700 ml - Laranja', 'Laranja', '700 ml', 'Garrafa', 6.309),
('1013793', 'Sabor da Montanha - 2 Litros - Limao', 'Limao', '2 Litros', 'PET', 12.01),
('1014587', 'Linha Refrescante - 1 Litro - Morango/Limao', 'Morango/Limao', '1 Litro', 'PET', 12.01),
('1015593', 'Sabor da Montanha - 2 Litros - Laranja', 'Laranja', '2 Litros', 'PET', 12.01),
('1017390', 'Sabor da Montanha - 2 Litros - Uva', 'Uva', '2 Litros', 'PET', 12.01),
('1022457', 'Linha Refrescante - 1 Litro - Pessego', 'Pessego', '1 Litro', 'PET', 12.01),
('1023388', 'Sabor da Montanha - 700 ml - Melancia', 'Melancia', '700 ml', 'Garrafa', 6.309),
('1025002', 'Sabor da Montanha - 2 Litros - Morango', 'Morango', '2 Litros', 'PET', 12.01),
('1031002', 'Sabor da Montanha - 700 ml - Pessego', 'Pessego', '700 ml', 'Garrafa', 6.309),
('1031383', 'Linha Refrescante - 1 Litro - Laranja', 'Laranja', '1 Litro', 'PET', 12.01),
('1032742', 'Linha Refrescante - 1 Litro - Coco', 'Coco', '1 Litro', 'PET', 12.01),
('1037797', 'Sabor da Montanha - 2 Litros - Pessego', 'Pessego', '2 Litros', 'PET', 12.01),
('1041119', 'Linha Refrescante - 1 Litro - Uva', 'Uva', '1 Litro', 'PET', 12.01),
('1046789', 'Sabores de Verao - 1 Litro - Uva', 'Uva', '1 Litro', 'PET', 10.029),
('1051593', 'Sabor da Montanha - 2 Litros - Melancia', 'Melancia', '2 Litros', 'PET', 12.01),
('1052335', 'Sabor da Montanha - 1 Litro - Morango', 'Morango', '1 Litro', 'PET', 8.52),
('1053075', 'Linha Refrescante - 1 Litro - Melancia', 'Melancia', '1 Litro', 'PET', 12.01),
('1054545', 'Sabor da Montanha - 1 Litro - Limao', 'Limao', '1 Litro', 'PET', 8.52),
('1055920', 'Sabor da Montanha - 1 Litro - Laranja', 'Laranja', '1 Litro', 'PET', 8.52),
('1057737', 'Sabor da Montanha - 1 Litro - Pessego', 'Pessego', '1 Litro', 'PET', 8.52),
('1061993', 'Linha Refrescante - 1 Litro - Pera', 'Pera', '1 Litro', 'PET', 12.01),
('1062002', 'Linha Refrescante - 1 Litro - Maça', 'Maça', '1 Litro', 'PET', 12.01),
('1070779', 'Sabor da Montanha - 700 ml - Coco', 'Coco', '700 ml', 'Garrafa', 6.309),
('1072979', 'Sabor da Montanha - 700 ml - Pera', 'Pera', '700 ml', 'Garrafa', 6.309),
('1075253', 'Linha Refrescante - 1 Litro - Cereja', 'Cereja', '1 Litro', 'PET', 12.01),
('1086543', 'Linha Refrescante - 1 Litro - Framboesa', 'Framboesa', '1 Litro', 'PET', 12.01),
('1088126', 'Sabor da Montanha - 1 Litro - Uva', 'Uva', '1 Litro', 'PET', 8.52),
('1088220', 'Sabor da Montanha - 1 Litro - Melancia', 'Melancia', '1 Litro', 'PET', 8.52),
('1088235', 'Sabor da Montanha - 1 Litro - Coco', 'Coco', '1 Litro', 'PET', 8.52),
('1090100', 'Sabor da Montanha - 1 Litro - Framboesa', 'Framboesa', '1 Litro', 'PET', 8.52),
('1096818', 'Sabor da Montanha - 1 Litro - Pera', 'Pera', '1 Litro', 'PET', 8.52);


-- -----------------------------------------------------
-- Tabela `tabela_de_clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tabela_de_clientes`;
CREATE TABLE `tabela_de_clientes` (
  `CPF` VARCHAR(11) NOT NULL,
  `NOME` VARCHAR(100) NULL,
  `ENDERECO_1` VARCHAR(150) NULL,
  `ENDERECO_2` VARCHAR(150) NULL,
  `BAIRRO` VARCHAR(50) NULL,
  `CIDADE` VARCHAR(50) NULL,
  `ESTADO` VARCHAR(50) NULL,
  `CEP` VARCHAR(8) NULL,
  `DATA_DE_NASCIMENTO` DATE NULL,
  `IDADE` INT NULL,
  `SEXO` VARCHAR(1) NULL,
  `LIMITE_DE_CREDITO` FLOAT NULL,
  `VOLUME_DE_COMPRA` FLOAT NULL,
  `PRIMEIRA_COMPRA` BIT NULL,
  PRIMARY KEY (`CPF`)
);

-- Inserção de dados para tabela_de_clientes (apenas alguns para demonstração)
INSERT INTO `tabela_de_clientes` (`CPF`, `NOME`, `ENDERECO_1`, `BAIRRO`, `CIDADE`, `ESTADO`, `CEP`, `DATA_DE_NASCIMENTO`, `IDADE`, `SEXO`, `LIMITE_DE_CREDITO`, `VOLUME_DE_COMPRA`, `PRIMEIRA_COMPRA`) VALUES
('00388934505', 'João Geraldo da Fonseca', 'R. projetada A número 10', 'Vila Roman', 'Caratinga', 'Minas Gerais', '2222222', '1992-03-12', 33, 'M', 100000.0, 2000.0, 0),
('00424594727', 'Elisete da Conceição', 'R. dos Jacarandás número 420', 'Jardins', 'Uberlandia', 'Minas Gerais', '3333333', '1987-10-29', 37, 'F', 200000.0, 3000.0, 1),
('00544920239', 'Valdecy Mattos', 'Rua São Tomé número 120', 'Centro', 'Rio de Janeiro', 'Rio de Janeiro', '4444444', '1980-05-15', 45, 'M', 300000.0, 4000.0, 0),
('00702816987', 'Abelardo da Fonseca', 'Rua dos Limoeiros número 30', 'Jardins', 'Uberlandia', 'Minas Gerais', '5555555', '1995-11-20', 29, 'M', 150000.0, 2500.0, 0),
('00886111356', 'Roberto da Silva', 'Av. Brasil 1000', 'Centro', 'Rio de Janeiro', 'Rio de Janeiro', '6666666', '1988-08-01', 36, 'M', 250000.0, 3500.0, 1),
('1471156710', 'Érica Carvalho', 'R. Hélio Guimarães, 147', 'Jardins', 'São Paulo', 'São Paulo', '87654321', '1990-09-01', 35, 'F', 170000.0, 2800.0, 0),
('1929099274', 'Fernando Cavalcante', 'R. do Ouvidor, 50', 'Centro', 'Rio de Janeiro', 'Rio de Janeiro', '22222222', '2000-02-12', 25, 'M', 100000.0, 2000.0, 1),
('2182283787', 'Gabarro da Costa', 'R. Santa Luzia, 658', 'Centro', 'Rio de Janeiro', 'Rio de Janeiro', '22222222', '1983-05-23', 42, 'M', 180000.0, 3000.0, 0),
('2376008442', 'Osvaldo Mattos', 'Rua Santo Amaro, 240', 'Jardins', 'Rio de Janeiro', 'Rio de Janeiro', '4444444', '1980-05-15', 45, 'M', 300000.0, 4000.0, 0), -- Cliente com mesmo sobrenome que Valdecy
('2600588920', 'Marcos Nunes', 'Av. Presidente Vargas, 1000', 'Glória', 'Rio de Janeiro', 'Rio de Janeiro', '2222222', '1998-07-25', 27, 'M', 950000.0, 1800.0, 0),
('3470028892', 'Márcio Mattos', 'Rua Tiradentes, 10', 'Bela Vista', 'São Paulo', 'São Paulo', '01311000', '1970-01-15', 55, 'M', 1500000.0, 5000.0, 0), -- Cliente com mesmo sobrenome
('492472718', 'Edson Costa', 'Rua das Flores, 123', 'Centro', 'São Paulo', 'São Paulo', '01000000', '1975-04-20', 50, 'M', 1000000.0, 4000.0, 0);


-- -----------------------------------------------------
-- Tabela `tabela_de_vendedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tabela_de_vendedores`;
CREATE TABLE `tabela_de_vendedores` (
  `MATRICULA` VARCHAR(5) NOT NULL,
  `NOME` VARCHAR(100) NULL,
  `BAIRRO` VARCHAR(50) NULL,
  `COMISSAO` FLOAT NULL,
  `DATA_ADMISSAO` DATE NULL,
  `DE_FERIAS` BIT NULL,
  PRIMARY KEY (`MATRICULA`)
);

-- Inserção de dados para tabela_de_vendedores
INSERT INTO `tabela_de_vendedores` (`MATRICULA`, `NOME`, `BAIRRO`, `COMISSAO`, `DATA_ADMISSAO`, `DE_FERIAS`) VALUES
('00233', 'João da Silva', 'Jardins', 0.1, '2014-08-15', 0),
('00235', 'Márcia Almeida', 'Centro', 0.12, '2015-03-10', 0),
('00236', 'Claudia Morais', 'Copacabana', 0.11, '2013-06-20', 1),
('00237', 'Roberta Guedes', 'Glória', 0.1, '2016-01-05', 0),
('00238', 'Pedro Henrique', 'Ipanema', 0.09, '2017-09-01', 0),
('00239', 'Ana Paula', 'Laranjeiras', 0.095, '2018-02-14', 0),
('00240', 'Mariana Santos', 'Barra da Tijuca', 0.13, '2019-07-22', 0),
('00241', 'Carlos Alberto', 'Centro', 0.11, '2020-04-01', 0), -- Bairro compartilhado com cliente
('00242', 'Patricia Costa', 'Jardins', 0.1, '2021-11-11', 0); -- Bairro compartilhado com cliente

-- -----------------------------------------------------
-- Tabela `notas_fiscais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `notas_fiscais`;
CREATE TABLE `notas_fiscais` (
  `CPF` VARCHAR(11) NOT NULL,
  `MATRICULA` VARCHAR(5) NOT NULL,
  `NUMERO` INT NOT NULL,
  `DATA_VENDA` DATE NULL,
  `IMPOSTO` FLOAT NULL,
  PRIMARY KEY (`NUMERO`),
  INDEX `fk_NOTAS_FISCAIS_CLIENTES1_idx` (`CPF` ASC),
  INDEX `fk_NOTAS_FISCAIS_VENDEDORES1_idx` (`MATRICULA` ASC),
  CONSTRAINT `fk_NOTAS_FISCAIS_CLIENTES1`
    FOREIGN KEY (`CPF`)
    REFERENCES `tabela_de_clientes` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_NOTAS_FISCAIS_VENDEDORES1`
    FOREIGN KEY (`MATRICULA`)
    REFERENCES `tabela_de_vendedores` (`MATRICULA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

-- Inserção de dados para notas_fiscais (alguns registros para 2016 e 2017, e para CPF específicos)
INSERT INTO `notas_fiscais` (`CPF`, `MATRICULA`, `NUMERO`, `DATA_VENDA`, `IMPOSTO`) VALUES
('00388934505', '00233', 1, '2016-01-01', 0.17),
('00388934505', '00233', 2, '2016-01-15', 0.17),
('00424594727', '00235', 3, '2017-01-01', 0.17),
('00544920239', '00236', 4, '2016-02-10', 0.17),
('00544920239', '00236', 5, '2016-02-20', 0.17),
('00544920239', '00236', 6, '2016-02-25', 0.17),
('1929099274', '00235', 7, '2016-03-05', 0.17),
('1929099274', '00235', 8, '2016-03-10', 0.17),
('1929099274', '00235', 9, '2016-03-15', 0.17),
('1929099274', '00235', 10, '2016-03-20', 0.17),
('1929099274', '00235', 11, '2016-04-01', 0.17),
('1929099274', '00235', 12, '2016-04-05', 0.17),
('1929099274', '00235', 13, '2016-04-10', 0.17),
('1929099274', '00235', 14, '2016-04-15', 0.17),
('1929099274', '00235', 15, '2016-04-20', 0.17),
('1929099274', '00235', 16, '2016-05-01', 0.17),
('1929099274', '00235', 17, '2016-05-05', 0.17),
('1929099274', '00235', 18, '2016-05-10', 0.17),
('1929099274', '00235', 19, '2016-05-15', 0.17),
('1929099274', '00235', 20, '2016-05-20', 0.17),
('1929099274', '00235', 21, '2016-06-01', 0.17),
('1929099274', '00235', 22, '2016-06-05', 0.17),
('1929099274', '00235', 23, '2016-06-10', 0.17),
('1929099274', '00235', 24, '2016-06-15', 0.17),
('1929099274', '00235', 25, '2016-06-20', 0.17),
('1929099274', '00235', 26, '2016-07-01', 0.17),
('1929099274', '00235', 27, '2016-07-05', 0.17),
('1929099274', '00235', 28, '2016-07-10', 0.17),
('1929099274', '00235', 29, '2016-07-15', 0.17),
('1929099274', '00235', 30, '2016-07-20', 0.17),
('1929099274', '00235', 31, '2016-08-01', 0.17),
('1929099274', '00235', 32, '2016-08-05', 0.17),
('1929099274', '00235', 33, '2016-08-10', 0.17),
('1929099274', '00235', 34, '2016-08-15', 0.17),
('1929099274', '00235', 35, '2016-08-20', 0.17),
('1929099274', '00235', 36, '2016-09-01', 0.17),
('1929099274', '00235', 37, '2016-09-05', 0.17),
('1929099274', '00235', 38, '2016-09-10', 0.17),
('1929099274', '00235', 39, '2016-09-15', 0.17),
('1929099274', '00235', 40, '2016-09-20', 0.17),
('1929099274', '00235', 41, '2016-10-01', 0.17),
('1929099274', '00235', 42, '2016-10-05', 0.17),
('1929099274', '00235', 43, '2016-10-10', 0.17),
('1929099274', '00235', 44, '2016-10-15', 0.17),
('1929099274', '00235', 45, '2016-10-20', 0.17),
('1929099274', '00235', 46, '2016-11-01', 0.17),
('1929099274', '00235', 47, '2016-11-05', 0.17),
('1929099274', '00235', 48, '2016-11-10', 0.17),
('1929099274', '00235', 49, '2016-11-15', 0.17),
('1929099274', '00235', 50, '2016-11-20', 0.17),
('1929099274', '00235', 51, '2016-12-01', 0.17),
('1929099274', '00235', 52, '2016-12-05', 0.17),
('1929099274', '00235', 53, '2016-12-10', 0.17),
('1929099274', '00235', 54, '2016-12-15', 0.17),
('1929099274', '00235', 55, '2016-12-20', 0.17),
('1929099274', '00235', 56, '2016-12-25', 0.17),
('1929099274', '00235', 57, '2016-12-30', 0.17),
('1929099274', '00235', 58, '2016-12-31', 0.17),
('1929099274', '00235', 59, '2016-12-02', 0.17); -- Apenas para ter mais de 2000 em 2016 se necessário

-- Inserções adicionais para testes de volume e status de venda
-- Cliente 'João Geraldo da Fonseca' (CPF '00388934505') volume de compra 2000.0
INSERT INTO `notas_fiscais` (`CPF`, `MATRICULA`, `NUMERO`, `DATA_VENDA`, `IMPOSTO`) VALUES
('00388934505', '00233', 101, '2016-01-01', 0.17),
('00388934505', '00233', 102, '2016-01-01', 0.17),
('00388934505', '00233', 103, '2016-02-01', 0.17); -- Para teste de quantidade mensal

-- Cliente 'Márcio Mattos' (CPF '3470028892') com alto limite, para testar HAVING SUM > 900000
INSERT INTO `notas_fiscais` (`CPF`, `MATRICULA`, `NUMERO`, `DATA_VENDA`, `IMPOSTO`) VALUES
('3470028892', '00241', 200, '2016-01-01', 0.17);


-- -----------------------------------------------------
-- Tabela `itens_notas_fiscais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `itens_notas_fiscais`;
CREATE TABLE `itens_notas_fiscais` (
  `NUMERO` INT NOT NULL,
  `CODIGO_DO_PRODUTO` VARCHAR(10) NOT NULL,
  `QUANTIDADE` INT NULL,
  `PRECO` FLOAT NULL,
  PRIMARY KEY (`NUMERO`, `CODIGO_DO_PRODUTO`),
  INDEX `fk_ITENS_NOTAS_FISCAIS_PRODUTOS1_idx` (`CODIGO_DO_PRODUTO` ASC),
  CONSTRAINT `fk_ITENS_NOTAS_FISCAIS_NOTAS_FISCAIS1`
    FOREIGN KEY (`NUMERO`)
    REFERENCES `notas_fiscais` (`NUMERO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ITENS_NOTAS_FISCAIS_PRODUTOS1`
    FOREIGN KEY (`CODIGO_DO_PRODUTO`)
    REFERENCES `tabela_de_produtos` (`CODIGO_DO_PRODUTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

-- Inserção de dados para itens_notas_fiscais
INSERT INTO `itens_notas_fiscais` (`NUMERO`, `CODIGO_DO_PRODUTO`, `QUANTIDADE`, `PRECO`) VALUES
(1, '1000889', 500, 6.309),
(1, '1002334', 200, 10.029),
(2, '1004323', 300, 6.309),
(3, '1006789', 100, 6.309),
(4, '1008899', 400, 6.309),
(5, '1013793', 150, 12.01),
(6, '1014587', 250, 12.01),
(7, '1015593', 350, 12.01),
(8, '1017390', 500, 12.01),
(9, '1022457', 100, 12.01),
(10, '1023388', 200, 6.309),
(11, '1025002', 300, 12.01),
(12, '1031002', 400, 6.309),
(13, '1031383', 150, 12.01),
(14, '1032742', 250, 12.01),
(15, '1037797', 350, 12.01),
(16, '1041119', 500, 12.01),
(17, '1046789', 100, 10.029),
(18, '1051593', 200, 12.01),
(19, '1052335', 300, 8.52),
(20, '1053075', 400, 12.01),
(21, '1054545', 150, 8.52),
(22, '1055920', 250, 8.52),
(23, '1057737', 350, 8.52),
(24, '1061993', 500, 12.01),
(25, '1062002', 100, 12.01), -- Maçã
(26, '1070779', 200, 6.309),
(27, '1072979', 300, 6.309),
(28, '1075253', 400, 12.01),
(29, '1086543', 150, 12.01),
(30, '1088126', 250, 8.52),
(31, '1088220', 350, 8.52),
(32, '1088235', 500, 8.52),
(33, '1090100', 100, 8.52),
(34, '1096818', 200, 8.52),
-- Adicionar mais itens para a nota fiscal 1929099274 para simular muitas vendas em 2016
(35, '1000889', 50, 6.309), (36, '1002334', 50, 10.029), (37, '1004323', 50, 6.309),
(38, '1006789', 50, 6.309), (39, '1008899', 50, 6.309), (40, '1013793', 50, 12.01),
(41, '1014587', 50, 12.01), (42, '1015593', 50, 12.01), (43, '1017390', 50, 12.01),
(44, '1022457', 50, 12.01), (45, '1023388', 50, 6.309), (46, '1025002', 50, 12.01),
(47, '1031002', 50, 6.309), (48, '1031383', 50, 12.01), (49, '1032742', 50, 12.01),
(50, '1037797', 50, 12.01), (51, '1041119', 50, 12.01), (52, '1046789', 50, 10.029),
(53, '1051593', 50, 12.01), (54, '1052335', 50, 8.52), (55, '1053075', 50, 12.01),
(56, '1054545', 50, 8.52), (57, '1055920', 50, 8.52), (58, '1057737', 50, 8.52),
(59, '1061993', 50, 12.01), (101, '1000889', 1000, 6.309), -- Item para nota 101, CPF '00388934505', quantidade total 1000
(102, '1002334', 1200, 10.029), -- Item para nota 102, CPF '00388934505', quantidade total 1200 (ultrapassa limite de 2000 para Jan)
(103, '1000889', 2500, 6.309), -- Item para nota 103, CPF '00388934505', quantidade total 2500 (ultrapassa limite de 2000 para Fev)
(200, '1002334', 500, 10.029); -- Item para nota 200, CPF '3470028892'


-- -----------------------------------------------------
-- VIEW `VW_MAIORES_EMBALAGENS` (Criada para fins de demonstração das subconsultas)
-- -----------------------------------------------------
-- DROP VIEW IF EXISTS `VW_MAIORES_EMBALAGENS`;
-- CREATE VIEW `VW_MAIORES_EMBALAGENS` AS
-- SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
-- GROUP BY EMBALAGEM;

-- Observação: Se você quiser criar a VIEW para testar as queries que a utilizam,
-- descomente as linhas acima e execute-as.