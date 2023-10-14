-- DROP DATABASE prova2_clinica;

CREATE DATABASE prova2_clinica;

USE prova2_clinica;

CREATE TABLE dentistas (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    sobrenome VARCHAR(40),
    email VARCHAR(40),
    telefone INTEGER
);

CREATE TABLE assistentes (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    sobrenome VARCHAR(40),
    email VARCHAR(40),
    telefone INTEGER
);

CREATE TABLE atendentes (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    sobrenome VARCHAR(40),
    email VARCHAR(40),
    telefone INTEGER
);

CREATE TABLE pacientes (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    sobrenome VARCHAR(40),
    email VARCHAR(40),
    telefone INTEGER
);

CREATE TABLE consultas (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    data_consulta DATE,
    horario TIME,
    id_dentista INTEGER,
    id_assistente INTEGER,
    id_paciente INTEGER,
    FOREIGN KEY (id_dentista) REFERENCES dentistas(id),
    FOREIGN KEY (id_assistente) REFERENCES assistentes(id),
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id)
);