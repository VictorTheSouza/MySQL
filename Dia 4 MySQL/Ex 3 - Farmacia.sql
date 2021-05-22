create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key(id)
);

insert tb_categoria (categoria) values ("antibióticos");
insert tb_categoria (categoria) values ("antialérgicos");
insert tb_categoria (categoria) values ("tratamento assintomático");

create table tb_produto(
id bigint auto_increment,
categoria_id bigint,
nome varchar(255),
preco decimal(5,2),
primary key (id),
foreign key (categoria_id) references tb_categoria (id)

);

insert tb_produto (categoria_id, nome, preco) values (1, "amoxilina", 80.00);
insert tb_produto (categoria_id, nome, preco) values (2, "loratadina", 20.00);
insert tb_produto (categoria_id, nome, preco) values (3, "dipirona", 20.00);

select * from tb_produto where preco>50;
select * from tb_produto where preco>3 and preco<60;
select * from tb_produto where nome like("%B%");
select * from tb_produto inner join tb_categoria;




