create database TILICE;
use TILICE;

-- criando tabelas
create table usuario(
id_usuario int primary key auto_increment,
usuario varchar(50),
email varchar(50) not null,
nome varchar(50) not null,
senha varchar (50) not null,
cpf char(11) not null unique,
dt_cadastro_usuario datetime default now(),
constraint cEmail check(email like '%@%' and email like'%.%')
);


create table container(
	id_container int primary key auto_increment,
    codigoDeSerie varchar(20),
    dtContainer datetime default now()
);

create table registro(
	id_registro int primary key auto_increment,
    temperatura decimal(5,2),
    umidade decimal(5,2),
    dtRegistro datetime default now()
);

-- inserindo dados nas tabelas
insert into usuario(usuario,email,nome,senha,cpf) values
('Leonardo123','leonardoernersilva@gmail.com','Leonardo Werner','12345','50343078805'),
('Julialinda','julia@gmail.com','Julia Marques','93402','45067045606');


insert into container (codigoDeSerie) values 
('CONT-D100'),
('CONT-E200'),
('CONT-F300');

insert into registro(temperatura,umidade) values
('9.50','12.40'),
('-4.20','13.40'),
('4.25','12.50');

-- atualizando dados
update usuario set usuario='Leleo' where id_usuario=1;

update usuario set usuario='Juliamarques' where id_usuario=2;

update usuario set usuario='Joaobrabo' where id_usuario=3;

update container set codigoDeSerie ='CONT-G300' where id_container=3;

-- selecionando dados
select *from container;

select*from usuario;

select usuario from usuario where usuario like '%o';

select temperatura from registro where temperatura<0;

select concat('temperatura:',temperatura,'umidade:',umidade) as Temperatura_umidade from registro;
-- inserindo dados
insert into usuario(usuario,email,nome,senha,cpf)values
('Maria','Maria@gmail.com','Maria Julia','32445','87598475923');
insert into usuario(usuario,email,nome,senha,cpf)values
('Joãopedro','joao@gmail.com','João Pedro','78696','89768867056');

insert into container(codigoDeSerie) values
('CONT-H500'),
('CONT-I600');

