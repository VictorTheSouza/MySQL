create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
produto varchar(255),
preco decimal(4,2),
primary key (id)
);

insert tb_categoria(produto,preco) values ("esfiha", 5.00);
insert tb_categoria(produto,preco) values ("pizza", 30.00);
insert tb_categoria(produto,preco) values ("refrigerante", 4.00);


create table tb_pizza(
id bigint auto_increment,
sabor varchar(255),
tamanho varchar(255),
quantidade int,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert tb_pizza(sabor, tamanho, quantidade,categoria_id) values ("calabresa", "médio", 1,2);
insert tb_pizza(sabor, tamanho, quantidade,categoria_id) values ("portuguesa", "brotinho",1,2);
insert tb_pizza(sabor, tamanho, quantidade,categoria_id) values ("milho com queijo", "médio",1,2);

select * from tb_categoria where preco>45;
select * from tb_categoria where preco>29 and preco<60;
select * from tb_pizza where sabor like("%c%");
select * from tb_pizza inner join tb_categoria;
select * from tb_categoria inner join tb_pizza where categoria_id=2;

