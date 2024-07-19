-- Criando o banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Selecionando o banco de dados
USE db_pizzaria_legal;

-- Criando a tabela Classes
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (100) NOT NULL
);

-- Criando a tabela Personagens e relacionando com a tabela Classes
CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    ingredientes TEXT  NOT NULL,
    preco DECIMAL (8,2) NOT NULL,
    tamanho VARCHAR (50) NOT NULL ,
    categoria_id BIGINT,
    CONSTRAINT fk_pizza_categoria FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo valores na tabela Categorias
INSERT INTO tb_categorias (categoria) VALUES("Salgadas");
INSERT INTO tb_categorias (categoria) VALUES("Doces");
INSERT INTO tb_categorias (categoria) VALUES("Veganas");
INSERT INTO tb_categorias (categoria) VALUES("Vegetarianas");
INSERT INTO tb_categorias (categoria) VALUES("Gourmet");
-- Inserindo valores na tabela Pizzas
INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Piizza de Mussarela", "Mussarela, Tomate e oregano",39.99, "Grande", 1);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza Romeu e Juliete", "Queijo e goiabada", 44.99, "Grande", 2);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id)
VALUES ("Pizza de Calabresa", "Molho de tomate, calabresa, cebola  catupiry", 59.99 , "Grande", 2);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza Vegetariana", "Molho de tomate, tomate cereja, Queijo vegano, pimentão, cebola roxa e azeitonas pretas", 49.99 , "Broto", 3);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza Funghi", "Molho de tomate, Cogumelos variados (shiitake, shimeji, champignon), alho fatiado, salsinha fresca, cebola e azeitonas", 56.00, "Broto", 3);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza Margherita", "Molho de tomate, Queijo mussarela, Manjericão fresco, Azeite de oliva", 55.00, "Grande", 4);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza de Rúcula com Tomate Seco", "Molho de tomate, Queijo mussarela, Rúcula fresca, Tomate seco, Azeite de oliva", 65.00, "Grande", 4);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id)
VALUES ("Pizza Alho Poró e Brie", "Molho de tomate, Queijo brie, Alho poró salteado, Azeite de oliva e Pimenta do reino moída na hora", 89.99, "Grande", 5);


-- Listando pizzas com preço MAIOR que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Listando pizzas com preço ENTRE R$ 50,00 e R$ 100,00
SELECT *  FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Listando pizzas que contenham a letra M no nome
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%"; 

-- Realizando um INNER JOIN entre as tabelas
SELECT nome,ingredientes,preco,tamanho,tb_categorias.categoria
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

-- Realizando um INNER JOIN entre as tabelas retornando apenas personagens da classe Arqueiro
SELECT nome,ingredientes,preco,tamanho,tb_categorias.categoria
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.categoria = "Salgadas";