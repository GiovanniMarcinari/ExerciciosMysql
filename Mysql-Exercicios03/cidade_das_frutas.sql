create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
Tipo varchar (255),
Marca varchar (255),
Organico boolean,
primary key (id)
);

insert into tb_categoria (Tipo, Marca, Organico) Values ("Frutas", "Boa Fruta", TRUE);
insert into tb_categoria (Tipo, Marca, Organico) Values ("Legumes", "Pratigel", FALSE);
insert into tb_categoria (Tipo, Marca, Organico) Values ("Frutas", "Green food", FALSE);
insert into tb_categoria (Tipo, Marca, Organico) Values ("Legumes", "Oasic", TRUE);
insert into tb_categoria (Tipo, Marca, Organico) Values ("Verduras", "Rei da verdura", TRUE);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
Nome varchar (255),
Origem  varchar (255),
Quantidade bigint,
Preco_kg decimal (6, 2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (Nome, Origem, Quantidade, Preco_kg, categoria_id) Values ("Beringela", "Minas Gerais", 90, "35.99", 2);
insert into tb_produto (Nome, Origem, Quantidade, Preco_kg, categoria_id) Values ("Abobrinha", "Paraná", 70, 6.99, 2);
insert into tb_produto (Nome, Origem, Quantidade, Preco_kg, categoria_id) Values ("Kiwi", "Rio Grande do Sul", 25, 99.00, 1);
insert into tb_produto (Nome, Origem, Quantidade, Preco_kg, categoria_id) Values ("Espinafre", "São Paulo", 60, 40.00, 5);
insert into tb_produto (Nome, Origem, Quantidade, Preco_kg, categoria_id) Values ("Almeirão", "São Paulo", 45, 43.00, 5);
insert into tb_produto (Nome, Origem, Quantidade, Preco_kg, categoria_id) Values ("Banana", "Ilha Comprida", 10.00, 6.00, 3);
insert into tb_produto (Nome, Origem, Quantidade, Preco_kg, categoria_id) Values ("Beterraba", "Mato Grosso", 16.00, 4.00, 4);
insert into tb_produto (Nome, Origem, Quantidade, Preco_kg, categoria_id) Values ("Morango", "Ilha Comprida", 40, 40.00, 3);

select * from tb_produto;

select * from tb_produto where Preco_kg > 50;

select * from tb_produto where Preco_kg between 3 and 60;

select * from tb_produto where Nome like "C%";

select tb_produto.Nome, tb_produto.Origem, tb_produto.Quantidade, tb_produto.Preco_kg, tb_categoria.Tipo, tb_categoria.Marca, tb_categoria.Organico
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.Nome, tb_produto.Origem, tb_produto.Quantidade, tb_produto.Preco_kg, tb_categoria.Tipo, tb_categoria.Marca, tb_categoria.Organico
from tb_produto inner join
tb_categoria on tb_categoria.id = tb_produto.categoria_id where Tipo like "%Frutas%";