create database db_rh;
use db_rh;

create table funcionario (
id bigint auto_increment,
idade int not null,
nome varchar(250) not null,
cpf varchar(11) not null,
cargo varchar(250) not null,
salario decimal(8,2) not null,

CONSTRAINT id_funcionario_pk primary key (id));

INSERT INTO funcionario(nome,idade,cpf,cargo,salario) VALUES ("João",25,"12547863548", "Analista",1600.00);
INSERT INTO funcionario(nome,idade,cpf,cargo,salario) VALUES ("Maria",24,"59568747231", "Desenvolvedora Júnior",2500.00);
INSERT INTO funcionario(nome,idade,cpf,cargo,salario) VALUES ("Felipe",38,"52536349857", "Desenvolvedor Sênior",5000.00);
INSERT INTO funcionario(nome,idade,cpf,cargo,salario) VALUES ("José",45,"46528937321", "DBA",10000.00);
INSERT INTO funcionario(nome,idade,cpf,cargo,salario) VALUES ("Fernanda",34,"41236885497", "Analista de testes",4000.00);

select * from funcionario where salario > 2000;

select * from funcionario where salario < 2000;
 
update funcionario set salario = 1900 where id = 1;
