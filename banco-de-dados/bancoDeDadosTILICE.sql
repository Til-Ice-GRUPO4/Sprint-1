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
('joao_silva', 'joao@empresa.com', 'João Silva', 'jao1290380', '12345678901'),
('maria_souza', 'maria@empresa.com', 'Maria Souza', 'souza190', '23456789012'),
('carlos_alberto', 'carlos@empresa.com', 'Carlos Alberto', 'carbebeto', '34567890123'),
('GabrielFarina', 'GabrielFarina@pedPeixe.com', 'Gabriel Galhiardo Farina', 'sGp24@', '50158290136'),
('Luciano_Carvalho', 'Luciano@subtropc.com', 'Luciano Carvalho', 'luciano793', '29571042967'),
('Mickaela_rodrigues', 'Mickaela@lestti.com', 'Mickaela Rodrigues Casiane', 'sEnh@391', '16027914681');

INSERT INTO usuario (email, senha, nome, cpf) VALUES
('carlos.silva@email.com', 'Sence2k54', 'Carlos Eduardo Silva', '12345678901'),
('ana.souza@email.com', 'kj5k435b3k', 'Ana Paula Souza', '23456789012'),
('roberto.lima@email.com', 'kb3k54b35bk3', 'Roberto Lima Pereira', '34567890123'),
('fernanda.costa@email.com', 'biscoito&scooby', 'Fernanda Costa Mendes', '45678901234'),
('lucas.martins@email.com', 'password@', 'Lucas Martins Oliveira', '56789012345');

insert into empresa (nome_empresa, cnpj_lei) values 
('GeneSeas', '04459073000105'),
('Brazilian Fish', '33628460000118'),
('Cristalina Pescados', '10666522000180'),
('Maersk Line Brasil Ltda', '03598524000114'),
('MSC Agência Marítima Ltda', '02378779000109'),
('CMA CGM do Brasil Ltda', '05951386000130'),
('Hapag-Lloyd do Brasil Ltda', '96452545000108'),
('Evergreen Shipping Brasil Ltda', '36040978000124');

insert into registro (temperatura, umidade) values 
(22.50, 60.00),
(-5.20, 15.30),
(18.00, 45.50),
(9.50, 13.40),
(-11.83, 22.30),
(27.31, 65.50);

insert into container (codigoDeSerie) values 
('CONT-A100'),
('CONT-B200'),
('CONT-C300'),
('CONT-BA15'),
('CONT-A234'),
('CONT-F029');

desc usuario;

select *from usuario;

select *from empresa;

select *from registro;

select *from container;

select *from registro where temperatura < 0;

select concat('A temperatura do registro de id ',id_registro,' é ',temperatura,
'C° e a umidade do container é ',umidade,'%') as 'Relatório' from registro;

select id_registro, ifnull(temperatura, 'Não verificado') as Temperatura, ifnull(umidade, 'Não verificado') 
as Umidade, date_format(dtRegistro, '%d/%m/%Y') as 'Data do Registro' from registro;

select id_registro, dtRegistro, case when temperatura <= 10 or umidade < 45 then 
'Alerta, verifique o container' else 'Tudo certo' end as 'Alerta' from registro;

insert into container(codigoDeSerie) values
('CONT-305');