create database db_escola;

use db_escola;

create table tb_notasalunos(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
turma varchar(255) not null,
nota decimal not null,
primary key (id)
);

insert into tb_notasalunos(nome, idade, turma, nota) values ("Victor", 17, "D", 8);
insert into tb_notasalunos(nome, idade, turma, nota) values ("Fernanda", 16,"D", 6);
insert into tb_notasalunos(nome, idade, turma, nota) values ("Iolanda", 17, "D", 7);
insert into tb_notasalunos(nome, idade, turma, nota) values ("Vinicios", 17, "A", 5);
insert into tb_notasalunos(nome, idade, turma, nota) values ("Mariana",16, "D", 9);
insert into tb_notasalunos(nome, idade, turma, nota) values ("Giulia", 17, "B", 9);
insert into tb_notasalunos(nome, idade, turma, nota) values ("Alder", 16, "C", 7);
insert into tb_notasalunos(nome, idade, turma, nota) values ("Natan", 17, "C", 6);

select * from tb_notasalunos where nota>7;
select * from tb_notasalunos where nota<7;
