create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
	descricao varchar (255),
    tipo varchar(255),
    valido boolean,
    primary key (id)
);
select*from tb_classe;
insert into tb_classe(descricao,tipo,valido) values ("Arqueiro","Classe de ataques a distancia",true);
insert into tb_classe(descricao,tipo,valido) values ("Guerreiro","Classe de ataques de perto",true);
insert into tb_classe(descricao,tipo,valido) values ("Mago","Classe de ataques magicos a distancia",true);
insert into tb_classe(descricao,tipo,valido) values ("Ladino","Classe de ataques proximos",true);
insert into tb_classe(descricao,tipo,valido) values ("Barbaro","Classe de ataques de perto",true);

create table tb_personagem(
 id bigint auto_increment,
 nome varchar(255) not null,
 classe varchar(255),
 Armna_Favorita varchar (255) not null,
 ataque decimal(10,2),
 defesa decimal(10,2),
 classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classe(id)
);

insert into tb_personagem(nome,classe,Armna_Favorita,ataque,defesa,classe_id) values("Link","Guerreiro","Espada dorurada e Fechas de prata",10000,2000,1);
insert into tb_personagem(nome,classe,Armna_Favorita,ataque,defesa,classe_id) values("Merlin", "Mago", "Varinha Mágica e livro dos sábios",7800, 4000, 5);
insert into tb_personagem(nome,classe,Armna_Favorita,ataque,defesa,classe_id) values("Eidolon", "Algoz", "Espada Demoníaca e fogo negro", 7000, 4000, 4);
insert into tb_personagem(nome,classe,Armna_Favorita,ataque,defesa,classe_id) values("Lin Tzu", "Samurai", "Lâminas de de aço e corrente invisível", 4000, 2500, 4);
insert into tb_personagem(nome,classe,Armna_Favorita,ataque,defesa,classe_id) values("Barik", "Ladino", "Explosivo caseiro e Ak47", 6000, 4000, 3);
insert into tb_personagem(nome,classe,Armna_Favorita,ataque,defesa,classe_id) value("Moira", "Clérigo", "Jóias do infinito e cajado dourado", 8550, 900, 2);
insert into tb_personagem(nome,classe,Armna_Favorita,ataque,defesa,classe_id) values("Simão", "Feiticeiro", "Cartola Mágica e caldeirão das trevas", 1500, 8000, 2);
insert into tb_personagem(nome,classe,Armna_Favorita,ataque,defesa,classe_id) values("Redgar", "Guerreiro", "Espada de Asgard e capa de invisibilidade", 6000, 10000, 3);


select * from tb_personagem where ataque >2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "c%";

select * 
from tb_personagem 
inner join tb_classe where tb_personagem.classe_id like tb_classe.id;

select * 
from tb_personagem 
inner join tb_classe
on tb_classe.id=tb_personagem.classe_id where tb_classe.descricao = "Guerreiro";
