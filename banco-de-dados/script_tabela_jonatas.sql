create database TILICE;
use TILICE;

create table usuario(
	id_usuario int primary key auto_increment,
    usuario varchar(50),
    email varchar(50) not null,
    nome varchar(50) not null,
    senha varchar(50) not null,
    cpf char(11) not null unique,
    dtCadastro_usuario datetime default now(),
    constraint cEmail check (email like '%@%' and email like '%.%')
);

create table empresa(
	id_empresa int primary key auto_increment,
    nome_empresa varchar(50),
    cnpj_lei varchar(20) unique,
    dtCadastro_empresa datetime default now()
);

create table registro(
	id_registro int primary key auto_increment,
    temperatura decimal(5,2),
    umidade decimal(5,2),
    dtRegistro datetime default now()
);

create table container(
	id_container int primary key auto_increment,
    codigoDeSerie varchar(20),
    dtContainer datetime default now()
);

insert into usuario (usuario, email, nome, senha, cpf) values 
('joao_silva', 'joao@empresa.com', 'João Silva', 'senha123', '12345678901'),
('maria_souza', 'maria@empresa.com', 'Maria Souza', 'senha321', '23456789012'),
('carlos_alberto', 'carlos@empresa.com', 'Carlos Alberto', 'senha231', '34567890123');

insert into empresa (nome_empresa, cnpj_lei) values 
('GeneSeas', '12.345.678/0001-99'),
('Brazilian Fish', '98.765.432/0001-00'),
('Cristalina Pescados', '11.222.333/0001-11');

insert into registro (temperatura, umidade) values 
(22.50, 60.00),
(-5.20, 15.30),
(18.00, 45.50);

insert into container (codigoDeSerie) values 
('CONT-A100'),
('CONT-B200'),
('CONT-C300');

select *from usuario;

select *from empresa;

select *from registro;

select *from container;

select *from registro where temperatura < 0;

select concat('A temperatura do registro de id ',id_registro,' é ',temperatura,'C° e a umidade do container é ',umidade,'%') as 'Relatório' from registro;

select ifnull(usuario,'Sem usuário') from usuario;