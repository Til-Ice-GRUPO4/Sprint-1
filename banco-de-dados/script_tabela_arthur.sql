CREATE DATABASE til_ice;
USE til_ice;

CREATE TABLE container (
codigo_container INT PRIMARY KEY AUTO_INCREMENT,
numeracao_container VARCHAR (8) NOT NULL UNIQUE,
empresa_container VARCHAR (30) NOT NULL UNIQUE
);


CREATE TABLE transportadora (
id_transportadora INT PRIMARY KEY AUTO_INCREMENT,
nome_transportadora VARCHAR (40) NOT NULL UNIQUE,
cnpj CHAR(14) NOT NULL UNIQUE
);


CREATE TABLE usuario (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR (50) NOT NULL UNIQUE,
senha VARCHAR (30) NOT NULL,
nome_completo VARCHAR (30) NOT NULL,
cpf CHAR (11) NOT NULL UNIQUE,
username VARCHAR (30) NOT NULL UNIQUE
);


CREATE TABLE funcionario (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nome_funcionario VARCHAR (30),
email_funcionario VARCHAR (50) NOT NULL UNIQUE,
empresa VARCHAR (30) NOT NULL,
cpf_funcionario CHAR (11) NOT NULL UNIQUE,
senha_funcionario VARCHAR (30) NOT NULL
);



INSERT INTO container (numeracao_container, empresa_container) VALUES
('TCKU3456', 'Maersk Line'),
('MSCU7821', 'Mediterranean Shipping'),
('CMAU1234', 'CMA CGM Brasil'),
('HLCU9900', 'Hapag-Lloyd'),
('EVRU5543', 'Evergreen Marine');


INSERT INTO transportadora (nome_transportadora, cnpj) VALUES
('Maersk Line Brasil Ltda', '12345678000191'),
('MSC Agência Marítima Ltda', '23456789000102'),
('CMA CGM do Brasil Ltda', '34567890000113'),
('Hapag-Lloyd do Brasil Ltda', '45678901000124'),
('Evergreen Shipping Brasil Ltda', '56789012000135');


INSERT INTO usuario (email, senha, nome_completo, cpf, username) VALUES
('carlos.silva@email.com', 'Senha@123', 'Carlos Eduardo Silva', '12345678901', 'carlos.silva'),
('ana.souza@email.com', 'Senha@321', 'Ana Paula Souza', '23456789012', 'ana.souza'),
('roberto.lima@email.com', 'velma_00', 'Roberto Lima Pereira', '34567890123', 'roberto.lima'),
('fernanda.costa@email.com', 'biscoito&scooby', 'Fernanda Costa Mendes', '45678901234', 'fernanda.costa'),
('lucas.martins@email.com', 'password@', 'Lucas Martins Oliveira', '56789012345', 'lucas.martins');


INSERT INTO funcionario (nome_funcionario, email_funcionario, empresa, cpf_funcionario, senha_funcionario) VALUES
('João Pedro Alves', 'joao.alves@tilice.com', 'TIL-ICE Monitoramento', '67890123456', '123456789'),
('Mariana Rocha', 'mariana.rocha@maersk.com', 'Maersk Line Brasil', '78901234567', 'senha123@'),
('Felipe Nascimento', 'felipe.nasc@cmacgm.com', 'CMA CGM do Brasil', '89012345678', 'salsicha@001'),
('Beatriz Ferreira', 'beatriz.ferr@hapag.com', 'Hapag-Lloyd do Brasil', '90123456789', 'Thor321'),
('Thiago Cavalcante', 'thiago.caval@msc.com', 'MSC Agência Marítima', '01234567890', 'Scooby@');

