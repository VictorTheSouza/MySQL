create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255),
primary key(id)
);

insert into tb_categoria (nome) values ("Obras");
insert into tb_categoria (nome) values ("ferramentas");
insert into tb_categoria (nome) values ("uso doméstico");

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
preco decimal (5,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert tb_produto (nome, preco, categoria_id) values ("tijolo", 3.50, 1);
insert tb_produto (nome, preco, categoria_id) values ("martelo", 55.00, 2);
insert tb_produto (nome, preco, categoria_id) values ("chave de fenda", 15.00,2);
insert tb_produto (nome, preco, categoria_id) values ("lâmpada",15.00,3);
insert tb_produto (nome, preco, categoria_id) values ("marreta", 25.00,2);

select * from tb_produto where preco>50;
select * from tb_produto where preco>3 and preco<60;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
select * from tb_produto where categoria_id = 2;



