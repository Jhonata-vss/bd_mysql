-- Criando o banco de dados
CREATE DATABASE db_generation_game_online;

-- Selecionando o banco de dados
USE db_generation_game_online;

-- Criando a tabela Classes
CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR (100) NOT NULL
);

-- Criando a tabela Personagens e relacionando com a tabela Classes
CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    nivel INT NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    classe_id BIGINT,
    CONSTRAINT fk_personagens_classe FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Inserindo valores na tabela Classes
INSERT INTO tb_classes (classe) VALUES("Médico");
INSERT INTO tb_classes (classe) VALUES("Engenheiro");
INSERT INTO tb_classes (classe) VALUES("Suporte");
INSERT INTO tb_classes (classe) VALUES("Atirador");
INSERT INTO tb_classes (classe) VALUES("Assault");

-- Inserindo valores na tabela Personagens
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ('Dam winchester', 140, 1400, 1600, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ('Sammy', 22, 2500, 2000, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ('Tommy', 40, 3000, 1900, 3);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ('Clark', 120, 1700, 1500, 4);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ('Peter Park', 8000, 1100, 1000, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ('The rock', 440, 2350, 2000, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ('Vin Diesel', 99, 2000, 1500,1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ('JhoJho', 100, 1550, 1700,3);

-- Listando personagens com poder de ataque MAIOR que 2000
SELECT id,nome,ataque FROM tb_personagens WHERE ataque > 2000;

-- Listando personagens com poder de ataque MAIOR que 2000
SELECT id,nome,defesa FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- Listando personagens que contenham a letra A no nome (Não há personagens com a letra C)
SELECT * FROM tb_personagens WHERE nome LIKE "%a%"; 

-- Realizando um INNER JOIN entre as tabelas
SELECT nome,nivel,ataque,defesa,tb_classes.classe AS classe
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

-- Realizando um INNER JOIN entre as tabelas retornando apenas personagens da classe Arqueiro
SELECT nome,nivel,ataque,defesa,tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.classe = "Arqueiro";