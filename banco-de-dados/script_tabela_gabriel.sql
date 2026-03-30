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
('GabrielFarina', 'GabrielFarina@pedPeixe.com', 'Gabriel Galhiardo Farina', 'sGp24@', '12345678901'),
('Luciano_Carvalho', 'Luciano@subtropc.com', 'Luciano Carvalho', 'senha321', '23456789012'),
('Mickaela_rodrigues', 'Mickaela@lestti.com', 'Mickaela Rodrigues Casiane', 'sEnh@391', '34567890123');

insert into empresa (nome_empresa, cnpj_lei) values 
('GeneSeas', '12.345.678/0001-99'),
('Brazilian Fish', '98.765.432/0001-00'),
('Cristalina Pescados', '11.222.333/0001-11');

insert into registro (temperatura, umidade) values 
(9.50, 13.40),
(-5.20, 22.30),
(22.00, 65.50);

insert into container (codigoDeSerie) values 
('CONT-BA15'),
('CONT-A234'),
('CONT-F029');

select *from usuario;

select nome from usuario;

select concat('O usuario: ', nome, 'tem a senha de: ', senha ) as login from usuario;

select *from empresa;

select cnpj_lei from empresa where nome_empresa = 'GeneSeas';

select * from registro;

select ifnull(temperatura, 'Não verificao') as temperatura, ifnull(umidade, 'nao verificado') as umidade from registro;

select *from registro where temperatura < 0;

select id_registro, dtRegistro ,case when temperatura <= 10 or umidade < 45 then 'Alerta, verifique o container' else 'Tudo certo' end as 'alerta' from registro;

select *from container;

select * from container where year(dtContainer) < 2025;



