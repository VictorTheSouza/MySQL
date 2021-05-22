create database db_ecommerce;

use db_ecommerce;

create table infoprodutos(
id bigint auto_increment,
categoria varchar(255) not null,
nome varchar(255) not null,
descricao varchar(255) not null,
preço decimal not null,
primary key (id)
);

insert into infoprodutos (categoria, nome, descricao, preço) values ("eletrônicos", "fone de ouvido","usado para computadores e celulares, produto focado em áudio.", 79.00);
insert into infoprodutos (categoria, nome, descricao, preço) values ("eletrônicos","mouse", "produto usado como acessório para pcs", 65.00);
insert into infoprodutos (categoria, nome, descricao, preço) values ("comestíveis","mentos", "bala comum, popular entre crianças e adolescentes", 10.00);
insert into infoprodutos (categoria, nome, descricao, preço) values ("comestíveis", "M&M", "produto feito de pequenos comestíveis de chocolate", 10.00);
insert into infoprodutos (categoria, nome, descricao, preço) values ("eletrodomésticos", "geladeira", "produto comum e essencial em toda casa", 2000.00);
insert into infoprodutos (categoria, nome, descricao, preço) values ("eletrodomésticos", "microondas", "produto de aquecimento de alimentos", 600.00);
insert into infoprodutos (categoria, nome, descricao, preço) values ("limpeza", "vassoura", "produto utilizado para limpar o chão no dia a dia", 20.00);
insert into infoprodutos (categoria, nome, descricao, preço) values ("limpeza", "detergente", "produto normalmente usado para lavar a louça", 7.00);

select * from infoprodutos where preço>500;
select * from infoprodutos where preço<500;

