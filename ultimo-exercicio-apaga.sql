-- ------------------- < aula3exer1 > -----------------------
--
--                    SCRIPT DE APAGA (DDL)
--
-- Data Criacao ...........: 10/12/2024
-- Autor(es) ..............: Shaíne Aparecida Cardoso de Oliveira
-- Banco de Dados .........: Oracle Apex
-- Base de Dados (nome) ...: vrvr
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 02 Sequences
--         => 02 Triggers
--
-- Ultimas Alteracoes
--   12/12/2024 => Instrucoes de remocao das duas triggers colocadas como comentario.
--              => Ajustes para melhor apresentacao da organizacao no script.
-- ---------------------------------------------------------

-- TABELAS
DROP TABLE VRVR_TEM;
DROP TABLE VRVR_PERTENCE;
DROP TABLE VRVR_ESPECIALIDADE;
DROP TABLE VRVR_SETOR;
DROP TABLE VRVR_PLANTONISTA;


-- SEQUENCES
DROP SEQUENCE VRVR_SEQ_ESPECIALIDADE;
DROP SEQUENCE VRVR_SEQ_SETOR;

/*
-- TRIGGERS
DROP TRIGGER VRVR_SETOR_TRIGGER;
DROP TRIGGER VRVR_ESPECIALIDADE_TRIGGER;
*/