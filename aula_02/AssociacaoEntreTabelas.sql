-- Consulta SQL Avançada

use db_quintanda;

select * from tb_produtos order by quantidade asc; -- busca por ordem acendente

select * from tb_produtos order by quantidade desc; -- busca por ordem descendente

select * from tb_produtos where preco between 3.00 and 8.25; -- busca entre

select * from tb_produtos where nome_produto like "l%";

select * from tb_produtos where nome_produto like "u%"; -- busca por caracter 

show create table tb_produtos; -- faz um resumo da tabela, caracteristica 

-- Associação entre Tabelas

create table tb_categorias(
id bigint auto_increment primary key,
descricao varchar(255) not null
);

insert into tb_categorias (descricao) values 
("Frutas"),("Verduras"),("Legumes"),("Temperos"),("Ovos"),("Outros");

select * from tb_categorias;


--  Modificando a Estrutura da tabela - Criando o Relacionamento

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_produtos;

UPDATE tb_produtos SET categoriaid = 3 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 6;

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3),
("Alface", 300, "2022-03-10", 7.00, 2),
("Cebola", 1020, "2022-03-08", 5.00, 3),
("Ovo Branco", 1000, "2022-03-07", 15.00, 5),
("Agrião", 1500, "2022-03-06", 3.00, 2),
("Cenoura", 1800, "2022-03-09", 3.50, 3),
("Pimenta", 1100, "2022-03-15", 10.00, 4),
("Alecrim", 130, "2022-03-10", 5.00, 4),
("Manga", 200, "2022-03-07", 5.49, 1),
("Couve", 100, "2022-03-12", 1.50, 2),
("Rabanete", 1200, "2022-03-15", 13.00, 3),
("Grapefruit", 3000, "2022-03-13", 50.00, 1),
("Sacola Cinza", 1118, 0.50),
("Sacola Verde", 1118, 0.50);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

-- Associação entre Tabelas
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos left JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT * FROM tb_produtos left JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

delete from tb_categorias where id in (16);