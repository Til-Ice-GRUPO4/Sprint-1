CREATE DATABASE bancotil_ice;

USE bancotil_ice;

-- Tabela de registro

CREATE TABLE loginUsuario (
id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(255) NOT NULL UNIQUE,
senha VARCHAR(255) NOT NULL
);

INSERT INTO loginUsuario (email, senha) VALUES
('SPTech@school.spteech','000000000'),
('Til-ice@gmail.com','000011000');

-- Cadastro usuário

CREATE TABLE cadastroUsuario(
id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(255) NOT NULL UNIQUE,
senha VARCHAR(255) NOT NULL,
nomeCompleto VARCHAR(1000) NOT NULL,
CPF VARCHAR(11) NOT NULL UNIQUE,
nomeUsuario VARCHAR(50) NOT NULL UNIQUE,
dataCadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO cadastroUsuario(email, senha, nomeCompleto, CPF, nomeUsuario, dataCadastro) VALUES
('usuario@gmail.com','0000111000','Fagundes Pereira da Silva','00000000000','usuario','1990-05-05'),
('usuario1@gmail.com','0000111000','Adagoberto Charles','00000000100','usuario1','1990-05-05');

-- Cadastro empresa

CREATE TABLE cadastroTransportadora(
id INT PRIMARY KEY AUTO_INCREMENT,
nomeTransportadora VARCHAR(255) NOT NULL,
CNPJ VARCHAR(14) NOT NULL UNIQUE
);

INSERT INTO cadastroTransportadora(nomeTransportadora, CNPJ) VALUES
('BrazilianFish','00000000000100'),
('Epagri','01000000000200');

-- Tabela para funcionarios

CREATE TABLE funcionarios(
id INT PRIMARY KEY AUTO_INCREMENT,
nomeFuncionarios VARCHAR(255) NOT NULL,
email VARCHAR(50) NOT NULL UNIQUE,
empresaContratante VARCHAR (255) NOT NULL,
CPFfuncionario VARCHAR(11) NOT NULL UNIQUE,
senhaFuncionario VARCHAR(255) NOT NULL
);

INSERT INTO funcionarios (nomeFuncionarios, email, empresaContratante, CPFfuncionario, senhaFuncionario) VALUES
('Roberto Valdo Pereira','robervald@gmail.com','BrazilianFish','11111111111','vbnndsaqw1'),
('Chico Bona Parte','chicob@gmail.com','Epagri','33333333350','xxdcvmvuwqwie');

-- Tabela para registro de temperatura de umidade

CREATE TABLE temperaturaUmidade(
temperaturaC DECIMAL(5,2),
umidade TINYINT
);

INSERT INTO temperaturaUmidade(temperaturaC,umidade) VALUES
('20','10'),
('-1','60');

-- Alguns comandos

SELECT * FROM loginUsuario;

SELECT * FROM cadastroUsuario;

SELECT * FROM cadastroTransportadora;

SELECT * FROM temperaturaUmidade;

SELECT * FROM funcionarios;

DELETE FROM funcionarios WHERE id = 1;

DESCRIBE funcionarios;

TRUNCATE funcionarios;
 
 