create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
classe varchar(255),
nivel int,
primary key(id)
);

insert tb_classes (classe, nivel) values ("espadachim", 1);
insert tb_classes (classe, nivel) values ("arqueiro", 1);
insert tb_classes (classe, nivel) values ("mago", 1);
insert tb_classes (classe, nivel) values ("lanceiro", 1);
insert tb_classes (classe, nivel) values ("noviço", 1);

select * from tb_classes;


create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
genero varchar(255),
ataque bigint,
defesa bigint,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Liroy", "masculino", 1000, 2000, 1);
insert tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Axell", "masculino", 2000,1000,2);
insert tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Nesmero", "masculino",2500,500,3);
insert tb_personagem (nome, genero, ataque, defesa, classe_id) values ("Nico", "masculino",1500,1500,4);

select * from tb_personagem where ataque>2000;
select * from tb_personagem where defesa>1000 and defesa<2000;
select * from tb_personagem where nome like("%C%");
select * from tb_personagem inner join tb_classes;
select * from tb_personagem where classe_id=2;



