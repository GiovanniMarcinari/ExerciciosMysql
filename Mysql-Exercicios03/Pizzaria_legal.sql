create database db_pizzaria_legal;

use db_pizzaria_legal;

create table Categoria(
id bigint auto_increment,
Tipo varchar (255),
Borda boolean,
Refrigerante varchar (255),
primary key (id)
);

insert into Categoria (Tipo, Borda, Refrigerante) Values ("Pizza Doce", FALSE, "Soda");
insert into Categoria (Tipo, Borda, Refrigerante) Values ("Pizza Salgada", TRUE, "H2O");
insert into Categoria (Tipo, Borda, Refrigerante) Values ("Pizza Vegana Doce", FALSE, "Pepsi");
insert into Categoria (Tipo, Borda, Refrigerante) Values ("Pizza Vegana Salgada", FALSE, "Dolly Guaraná");
insert into Categoria (Tipo, Borda, Refrigerante) Values ("Meia doce e meia salgada", TRUE, "Fanta Uva");

select * from Categoria;

create table tb_pizza(
id bigint auto_increment,
NomePizza varchar (255),
Tamanho varchar (255),
Preço decimal (6, 2),
Ingredientes varchar (255),
Categoria_id bigint,
primary key (id),
foreign key (Categoria_id) REFERENCES Categoria (id)
);

insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Chocolate Vegano", "Medio", 30.00, "Chocolate vegano", 3);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Frango com catupiry", "Grande", 33.00, "Frango desfiado e catupiry", 2);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Atum com queijo", "Grande", 35.99, "Atum, cebola e queijo", 2);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Calabresa vegana", "Grande", 30.00, "Calabresa vegana de soja, cebola e mussarela vegana", 4);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("4 Queijos", "Grande", 46.99, "Mussarela, provolone, parmesão e  gorgonzola", 2);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Portuguesa", "Grande", 38.99, "Presunto, ovos, cebola, tomate e mussarela", 2);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Chocolate com morango", "Medio", 33.99, "Chocolate e morango", 1);
insert into tb_pizza (NomePizza, Tamanho, Preço, Ingredientes, Categoria_id) Values ("Meia romeu e Julieta Meia quatro queijos", "Medio", 43.99, "Mussarela, goiabada, parmesão, catupiry, provolone e gorgonzola", 5);
 
select * from tb_pizza;
 
select * from tb_pizza where Preço > 45;
 
select * from tb_pizza where Preço between 29 and 60;
 
select * from tb_pizza where NomePizza like "C%";
 
select tb_pizza.NomePizza, tb_pizza.Tamanho, tb_pizza.Preço, tb_pizza.Ingredientes, Categoria.Tipo, Categoria.Borda, Categoria.Refrigerante
from tb_pizza inner join Categoria
on Categoria.id = tb_pizza.Categoria_id;

select tb_pizza.NomePizza, tb_pizza.Tamanho, tb_pizza.Preço, tb_pizza.Ingredientes, Categoria.Tipo, Categoria.Borda, Categoria.Refrigerante
from tb_pizza inner join
Categoria on Categoria.id = tb_pizza.Categoria_id where Tipo like "%Pizza Vegana Salgada%";