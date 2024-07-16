-- Create database  DDL

CREATE DATABASE db_quintanda;
USE db_quintanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
validade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY(id)
);

DESCRIBE tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO Tb_produtos(nome, Quantidade, validade, Preco) 
vaLUES ("Laranja",50, "2023-12-15", 10.00);
INSERT INTO Tb_produtos(nome, Quantidade, validade, Preco) 
vaLUES ("Banana",200, "2023-12-15", 12.00);
INSERT INTO Tb_produtos(nome, Quantidade, validade, Preco) 
vaLUES ("Uva",1200, "2023-12-15", 30.00);
INSERT INTO Tb_produtos(nome, Quantidade, validade, Preco) 
vaLUES ("Pêra",500, "2023-12-15", 2.99);

select * fRoM TB_produtos;

select * from tb_produtos where id in (2,4);

-- Selecionando dados com os operadores Relacionais

select * from tb_produtos where preco = 5.00;

-- Selecionando dados com os operadores lógicos

select * from tb_produtos where preco > 5 and quantidade < 100;


-- --------------------------------------------------------------
DESCRIBE tb_produtos;

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao;

-- --------------------------------------------------------------
SET SQL_SAFE_UPDATES = 1;

update tb_produtos set preco = 5.99 where id = 1;

delete from tb_produtos where id in (23,24,25);

-- -----------------------------------------------

alter table tb_produtos modify preco decimal(6,2);




