create database ecommerce;
use e_commerce;

create table ecommerce(
id int auto_increment primary key,
nome varchar(100),
empresa varchar(255),
preco decimal(10.2),
lancamento date
);

insert into ecommerce(id, nome, empresa, preco, lancamento) values
(1,'GTA V','Rockstar Games',599.99,'2013-06-13'),
(2,'GOD OF WAR 3','SONY',399.99,'2022-12-23'),
(3,'THE CREW - MotorSport','Ubisoft', 299.99,'2023-10-09'),
(4,'BattleField 4','EA',199.99,'2013-05-14'),
(5,'The Last Of Us','SONY',549.99,'2017-07-09');

select * from ecommerce;

select * from ecommerce where preco > 500;

select * from ecommerce where preco < 500;

update ecommerce set preco = 149.99 where id = 3;



