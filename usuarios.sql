USE prova2_clinica;

-- DROP USER 'administrador'@'localhost';
-- DROP USER 'dentista1'@'localhost';
-- DROP USER 'dentista2'@'localhost';
-- DROP USER 'assistente'@'localhost';
-- DROP USER 'atendente'@'localhost';
-- DROP USER 'paciente'@'localhost';

CREATE USER 'administrador'@'localhost'
IDENTIFIED BY 'senhaAdmin';

CREATE USER 'dentista1'@'localhost'
IDENTIFIED BY 'senhaDentista1';

CREATE USER 'dentista2'@'localhost'
IDENTIFIED BY 'senhaDentista2';

CREATE USER 'assistente'@'localhost'
IDENTIFIED BY 'senhaAssistente';

CREATE USER 'atendente'@'localhost'
IDENTIFIED BY 'senhaAtendente';

CREATE USER 'paciente'@'localhost'
IDENTIFIED BY 'senhaPaciente';

GRANT 'administrador_role'@'localhost' TO 'administrador'@'localhost';
GRANT 'dentista_role'@'localhost' TO 'dentista1'@'localhost';
GRANT 'dentista_role'@'localhost' TO 'dentista2'@'localhost';
GRANT 'assistente_role'@'localhost' TO 'assistente'@'localhost';
GRANT 'atendente_role'@'localhost' TO 'atendente'@'localhost';
GRANT 'paciente_role'@'localhost' TO 'paciente'@'localhost';