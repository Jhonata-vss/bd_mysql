create database tb_recursoshumanos;
use tb_recursoshumanos;

create table tb_recursoshumanos(
ID int primary key auto_increment,
nome varchar(200),
cargo varchar(100),
salario decimal(10.2),
admissao date
);

insert into tb_recursoshumanos(id, nome, cargo, salario, admissao)
values (1,'Jhonata Venicius','Dev FullStack Jr.',3500.00,'2024-06-14'),
(2,'Rafael Queiroz','Cientista de Dados',7500.00,'2020-07-06'),
(3,'Geandro Araujo','Engenheiro da Computaçao',5000.00,'2020-03-05'),
(4,'Ana Helena','QA Tester','1000.00','2015-07-10'),
(5,'Laura Lua','Apresentadora',2500.00,'2022-09-22');

select * from tb_recursoshumanos where salario > 2000;

select * from tb_recursoshumanos where salario < 2000;

select * from tb_recursoshumanos;

update tb_recursoshumanos set salario = 1900.00 where id = 5