-- -------- < Aula 13 - Programação Procedural > --------
--
--                    SCRIPT PROCEDURAL
--
-- Data Criacao ...........: 16/12/2024
-- Autor(es) ..............: Maria Helena Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: agenda
--
-- PROJETO => 04 Procediementos
--
-- ---------------------------------------------------------

-- 1) Contar tuplas da tabela Pessoa
CREATE PROCEDURE contar_tuplas_pessoa ()
SELECT COUNT(*) as qtdTuplas FROM pessoa;

-- CALL contar_tuplas_pessoa();


-- 2) Contar quantos telefones têm uma pessoa específica
CREATE PROCEDURE contar_telefones_pessoa(varPessoaNome varchar(80))
SELECT COUNT(*) as qtdTelefones
	FROM pessoa p
		JOIN telefone t on t.idPessoa = p.idPessoa
	WHERE p.nome = varPessoaNome;

-- CALL contar_telefones_pessoa('Regis Carvalho');


-- 3) Quantidade de produtos específicos
CREATE PROCEDURE contar_quantidade_produtos(varNomeProduto varchar(80))
SELECT qtde FROM produtos WHERE nome = varNomeProduto;

-- CALL contar_quantidade_produtos('Pasta de dente');


-- 4) Calcula de um produto específico a quantidade em valor financeiro R$ que está armazenada
CREATE PROCEDURE calcula_valor_armazenado_produto(varNomeProduto varchar(80))
SELECT  qtde * preco as qtdValorFinanceiro FROM produtos WHERE nome = varNomeProduto;

-- CALL calcula_valor_armazenado_produto('Cerveja');
