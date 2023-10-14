USE prova2_clinica;

-- DROP ROLE 'administrador_role'@'localhost';
-- DROP ROLE 'dentista_role'@'localhost';
-- DROP ROLE 'assistente_role'@'localhost';
-- DROP ROLE 'atendente_role'@'localhost';
-- DROP ROLE 'paciente_role'@'localhost';

CREATE ROLE 'administrador_role'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON dentistas TO 'administrador_role'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON assistentes TO 'administrador_role'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON atendentes TO 'administrador_role'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON pacientes TO 'administrador_role'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON consultas TO 'administrador_role'@'localhost';

CREATE ROLE 'dentista_role'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON consultas TO 'dentista_role'@'localhost';
GRANT SELECT ON dentistas TO 'dentista_role'@'localhost';
GRANT SELECT ON assistentes TO 'dentista_role'@'localhost';
GRANT SELECT ON pacientes TO 'dentista_role'@'localhost';

CREATE ROLE 'assistente_role'@'localhost';
GRANT SELECT ON consultas TO 'assistente_role'@'localhost';
GRANT SELECT ON dentistas TO 'assistente_role'@'localhost';
GRANT SELECT ON assistentes TO 'assistente_role'@'localhost';
GRANT SELECT ON pacientes TO 'assistente_role'@'localhost';

CREATE ROLE 'atendente_role'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON consultas TO 'atendente_role'@'localhost';
GRANT SELECT ON dentistas TO 'atendente_role'@'localhost';
GRANT SELECT ON assistentes TO 'atendente_role'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON pacientes TO 'atendente_role'@'localhost';

CREATE ROLE 'paciente_role'@'localhost';
GRANT SELECT ON consultas TO 'paciente_role'@'localhost';
GRANT SELECT ON dentistas TO 'paciente_role'@'localhost';

