create database db_ecommerce;
use db_ecommerce;


create table produtos (
id bigint auto_increment,
descricao varchar(250) not null,
marca varchar(250) not null,
numero_serie varchar(250) not null,
peso decimal(8,2) not null,
valor decimal(8,2) not null,
CONSTRAINT id_produtos_pk primary key (id));


INSERT INTO produtos(descricao,marca,numero_serie,peso,valor) VALUES ("Mouse","logitech", "3210",0.1,80.00);
INSERT INTO produtos(descricao,marca,numero_serie,peso,valor) VALUES ("Teclado","reddragon", "3211",1.0,150.00);
INSERT INTO produtos(descricao,marca,numero_serie,peso,valor) VALUES ("Monitor","AOC", "3212",2.0, 550.00);
INSERT INTO produtos(descricao,marca,numero_serie,peso,valor) VALUES ("CPU","LG", "3213",5.5,1500.00);
INSERT INTO produtos(descricao,marca,numero_serie,peso,valor) VALUES ("Fone de ouvido","Samsung", "3214",0.2,200.00);
INSERT INTO produtos(descricao,marca,numero_serie,peso,valor) VALUES ("Fone de ouvido","LG", "3222",0.2,500.00);
INSERT INTO produtos(descricao,marca,numero_serie,peso,valor) VALUES ("mouse pad","hyperx", "3223",0.1,40.00);
INSERT INTO produtos(descricao,marca,numero_serie,peso,valor) VALUES ("roteador","Samsung", "3224",0.1,550.00);


select * from produtos where valor > 500;

select * from produtos where valor < 500;
 
update produtos set valor = 100 where id = 1;