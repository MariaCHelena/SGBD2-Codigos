-- ------------------- < aula3exer1 > -----------------------
--
--                    SCRIPT DE CRIACAO (DDL)
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
--   12/12/2024 => Correcoes dos nomes das FK das tabelas TEM e PERTENCE.
--              => Geracao dos valores das Sequences por default das tabelas SETOR
--                 e ESPECIALIDADE, alem da remocao das que nao sao necessarias.
--              => Ajustes nas Sequences para definir somente o valor inicial,
--                 deixando os demais parametros com as definicoes default do BD.
--              => Ajustes para melhor apresentacao da organizacao no script.
-- ---------------------------------------------------------

-- SEQUENCES
CREATE SEQUENCE VRVR_SEQ_SETOR
  INCREMENT BY 1;

CREATE SEQUENCE VRVR_SEQ_ESPECIALIDADE
  INCREMENT BY 1;


-- TABELAS
CREATE TABLE VRVR_SETOR (
    id_setor NUMBER DEFAULT VRVR_SEQ_SETOR.nextval NOT NULL,
    nome_setor VARCHAR2(20) NOT NULL,
    CONSTRAINT VRVR_SETOR_PK PRIMARY KEY (id_setor)
);

CREATE TABLE VRVR_ESPECIALIDADE (
    id_especialidade NUMBER DEFAULT VRVR_SEQ_ESPECIALIDADE.nextval NOT NULL,
    nome_especialidade VARCHAR2(20) NOT NULL,
    CONSTRAINT VRVR_ESPECIALIDADE_PK PRIMARY KEY (id_especialidade)
);

CREATE TABLE VRVR_PLANTONISTA (
    matricula NUMBER,
    nome_completo VARCHAR2(100) NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')),
    CONSTRAINT VRVR_PLANTONISTA_PK PRIMARY KEY (matricula)
);

CREATE TABLE VRVR_TEM (
    id_matricula NUMBER NOT NULL,
    id_especialidade NUMBER NOT NULL,
    CONSTRAINT VRVR_TEM_PK PRIMARY KEY (id_matricula, id_especialidade),
    CONSTRAINT VRVR_TEM_PLANTONISTA_FK FOREIGN KEY (id_matricula) REFERENCES VRVR_PLANTONISTA(matricula),
    CONSTRAINT VRVR_TEM_ESPECIALIDADE_FK FOREIGN KEY (id_especialidade) REFERENCES VRVR_ESPECIALIDADE(id_especialidade)
);

CREATE TABLE VRVR_PERTENCE (
    id_setor NUMBER NOT NULL,
    id_matricula NUMBER NOT NULL,
    horario DATE NOT NULL,
    CONSTRAINT VRVR_PERTENCE_PK PRIMARY KEY (id_setor, id_matricula, horario),
    CONSTRAINT VRVR_PERTENCE_SETOR_FK FOREIGN KEY (id_setor) REFERENCES VRVR_SETOR(id_setor),
    CONSTRAINT VRVR_PERTENCE_PLANTONISTA_FK FOREIGN KEY (id_matricula) REFERENCES VRVR_PLANTONISTA(matricula)
);


/*
-- TRIGGERS
CREATE OR REPLACE TRIGGER VRVR_SETOR_TRIGGER
BEFORE INSERT ON VRVR_SETOR
FOR EACH ROW
BEGIN
    :NEW.id_setor := VRVR_SEQ_SETOR.NEXTVAL;
END;


CREATE OR REPLACE TRIGGER VRVR_ESPECIALIDADE_TRIGGER
BEFORE INSERT ON VRVR_ESPECIALIDADE
FOR EACH ROW
BEGIN
    :NEW.id_especialidade := VRVR_SEQ_ESPECIALIDADE.NEXTVAL;
END;
*/