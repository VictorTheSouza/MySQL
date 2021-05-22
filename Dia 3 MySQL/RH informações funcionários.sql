-- Banco de dados do RH
create database db_rhinfo;

-- Acessando banco de dados
use db_rhinfo;

-- Criando tabela
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
cargo varchar(255) not null,
salario decimal not null,
primary key (id)
);

-- Adicionando dados
insert into tb_funcionarios(nome, idade, cargo, salario) values ("Victor", 19, "Desenvolvedor júnior", 1800.00);
insert into tb_funcionarios(nome, idade, cargo, salario) values ("Rafael", 41, "Desenvolvedor back-end sênior", 5000.00);
insert into tb_funcionarios(nome, idade, cargo, salario) values ("Giulia", 18, "Desenvolvedora júnior", 1800.00);
insert into tb_funcionarios(nome, idade, cargo, salario) values ("Natan", 26, "Desenvolvedor pleno", 3000.00);
insert into tb_funcionarios(nome, idade, cargo, salario) values ("Tiago", 31, "Gerente de projetos", 3800.00);

-- Visualizando dados
select * from tb_funcionarios where salario>2000.00;
select * from tb_funcionarios where salario<2000.00;

-- alterar dados na tabela
update tb_funcionarios set  salario=4100 where id=5;




