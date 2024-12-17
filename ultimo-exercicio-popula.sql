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
--   12/12/2024 => Retirada dos Insert All das tabelas que usam Sequence (TEM e PERTENCE).
--              => Inclusao de conjunto de Inserts por tuplas nas tabelas TEM e PERTENCE.
--              => Ajustes para melhor apresentacao da organizacao no script.
-- ---------------------------------------------------------

-- INSERCOES
INSERT INTO VRVR_SETOR (nome_setor) VALUES ('Cardiologia');
INSERT INTO VRVR_SETOR (nome_setor) VALUES ('Pediatria');
INSERT INTO VRVR_SETOR (nome_setor) VALUES ('Ortopedia');
INSERT INTO VRVR_SETOR (nome_setor) VALUES ('Neurologia');
INSERT INTO VRVR_SETOR (nome_setor) VALUES ('Ginecologia');


INSERT INTO VRVR_ESPECIALIDADE (nome_especialidade) VALUES ('Cardiologista');
INSERT INTO VRVR_ESPECIALIDADE (nome_especialidade) VALUES ('Pediatra');
INSERT INTO VRVR_ESPECIALIDADE (nome_especialidade) VALUES ('Ortopedista');
INSERT INTO VRVR_ESPECIALIDADE (nome_especialidade) VALUES ('Neurologista');
INSERT INTO VRVR_ESPECIALIDADE (nome_especialidade) VALUES ('Enfermeiro Geral');


INSERT ALL
    INTO VRVR_PLANTONISTA (matricula, nome_completo, sexo) VALUES (1001, 'Carlos Silva', 'M')
    INTO VRVR_PLANTONISTA (matricula, nome_completo, sexo) VALUES (1002, 'Maria Oliveira', 'F')
    INTO VRVR_PLANTONISTA (matricula, nome_completo, sexo) VALUES (1003, 'João Souza', 'M')
    INTO VRVR_PLANTONISTA (matricula, nome_completo, sexo) VALUES (1004, 'Ana Costa', 'F')
    INTO VRVR_PLANTONISTA (matricula, nome_completo, sexo) VALUES (1005, 'José Pereira', 'M')
SELECT * FROM dual;


INSERT ALL
    INTO VRVR_TEM (id_matricula, id_especialidade) VALUES (1001, 1)
    INTO VRVR_TEM (id_matricula, id_especialidade) VALUES (1001, 4)
    INTO VRVR_TEM (id_matricula, id_especialidade) VALUES (1002, 2)
    INTO VRVR_TEM (id_matricula, id_especialidade) VALUES (1003, 2)
    INTO VRVR_TEM (id_matricula, id_especialidade) VALUES (1004, 5)
SELECT * FROM dual;


INSERT ALL
    INTO VRVR_PERTENCE (id_setor, id_matricula, horario) VALUES (1, 1001, TO_DATE('2024-12-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'))
    INTO VRVR_PERTENCE (id_setor, id_matricula, horario) VALUES (1, 1002, TO_DATE('2024-12-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'))
    INTO VRVR_PERTENCE (id_setor, id_matricula, horario) VALUES (2, 1003, TO_DATE('2024-12-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'))
    INTO VRVR_PERTENCE (id_setor, id_matricula, horario) VALUES (3, 1004, TO_DATE('2024-12-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
    INTO VRVR_PERTENCE (id_setor, id_matricula, horario) VALUES (4, 1005, TO_DATE('2024-12-10 16:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT * FROM dual;
