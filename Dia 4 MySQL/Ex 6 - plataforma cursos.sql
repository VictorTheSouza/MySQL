create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255),
primary key (id)
);

insert tb_categoria (nome) values ("tecnologia");
insert tb_categoria (nome) values ("audiovisual");
insert tb_categoria (nome) values ("saúde");

create table tb_curso(
id bigint auto_increment,
nome varchar(255),
preco decimal(5,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert tb_curso (nome, preco, categoria_id) values ("Java", 200.00, 1);
insert tb_curso (nome, preco, categoria_id) values ("Python", 150.00,1);
insert tb_curso (nome, preco, categoria_id) values ("Jogos Digitais", 250.00, 1);
insert tb_curso (nome, preco, categoria_id) values ("Operação de câmera", 250.00, 2);
insert tb_curso (nome, preco, categoria_id) values ("Primeiros socorros", 150.00, 3);

select * from tb_curso where preco>50;
select * from tb_curso where preco>3 and preco<60;
select * from tb_curso where nome like "%j%";
select * from tb_curso inner join tb_categoria on tb_curso.categoria_id = tb_categoria.id;
select * from tb_curso where categoria_id = 1;

