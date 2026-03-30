CREATE DATABASE tilice;
USE tilice;

CREATE TABLE usuario (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(50) NOT NULL UNIQUE,
senha VARCHAR(20) NOT NULL,
nome VARCHAR(50) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE,
dt_cadastro_usuario TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE empresa (
id_empresa INT PRIMARY KEY AUTO_INCREMENT,
nome_empresa VARCHAR(50) NOT NULL,
cnpj_empresa VARCHAR(14) NOT NULL UNIQUE,
dt_cadastro_empresa TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE container (
id_container INT PRIMARY KEY AUTO_INCREMENT,
codigo_de_serie VARCHAR(20),
dt_cadastro_container TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE registro (
id_registro INT PRIMARY KEY AUTO_INCREMENT,
temperatura DECIMAL(5,2),
umidade DECIMAL(5,2),
dt_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO usuario (email, senha, nome, cpf) VALUES
('douglas@email.com', 'senhaforte', 'Douglas Henrique', '12345678910'),
('maria@email.com', 'senhamuitoforte', 'Maria Campos', '11111111111'),
('jose@email.com', 'senhafraca', 'José Alves', '00000000000');

INSERT INTO empresa (nome_empresa, cnpj_empresa) VALUES
('Fishman Island', '12345678901234'),
('Peixes LTDA', '11111111111111'),
('Triangulo Bermudas', '000000000000');

INSERT INTO container (codigo_de_serie) VALUES
('CONT-AA00'),
('CONT-BB11'),
('CONT-CC22');

INSERT INTO registro (temperatura, umidade) VALUES
(-1.15, 82.50),
(2.40, 88.70),
(3.20, 84.40);

SELECT * FROM usuario;

SELECT * FROM empresa;

SELECT * FROM container;

SELECT * FROM registro;

SELECT * FROM registro WHERE temperatura < 0;