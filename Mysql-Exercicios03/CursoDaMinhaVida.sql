create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment,
    area varchar(255) not null,
    ativo boolean not null,
    primary key(id)
);

insert into tb_categoria(area, ativo) values ("Ciências Biológicas", true);
insert into tb_categoria(area, ativo) values ("Ciências Humanas", true);
insert into tb_categoria(area, ativo) values ("Ciências Exatas", true);
insert into tb_categoria(area, ativo) values ("Tecnologia", true);
insert into tb_categoria(area, ativo) values ("Idiomas", true);

create table tb_curso(
	id bigint auto_increment ,
	curso varchar (255) not null,
    carga_horaria bigint not null,
	professor varchar(255),
    preco decimal(5,2),
	categoria_id bigint,
    
	primary key (id),
	foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso(curso, carga_horaria, professor, preco, categoria_id) values ("Odontologia", 200, "Matheus da Silva", 5000.00, 1);
insert into tb_curso(curso, carga_horaria, professor, preco, categoria_id) values ("Espanhol", 60, "Larissa Bonesi", 39.99, 5);
insert into tb_curso(curso, carga_horaria, professor, preco, categoria_id) values ("Javascript", 100, "Luis Guerreiro", 850.99, 4);
insert into tb_curso(curso, carga_horaria, professor, preco, categoria_id) values ("Html e CSS", 200, "Jéssica Lopes", 500.00, 4);
insert into tb_curso(curso, carga_horaria, professor, preco, categoria_id) values ("Filosofia", 500, "Giovanni Marcinari", 3000.99, 2);
insert into tb_curso(curso, carga_horaria, professor, preco, categoria_id) values ("História", 500, "José Rodrigues Mao Júnior", 2999.99, 2);
insert into tb_curso(curso, carga_horaria, professor, preco, categoria_id) values ("Física", 400, "Stephen Hawking", 4009.99, 3);
insert into tb_curso(curso, carga_horaria, professor, preco, categoria_id) values ("Inglês", 70, "Thiago Cordeiro", 39.99, 1);

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where curso like "%j%";

select * from tb_curso inner join tb_categoria 
on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso where categoria_id = 2;