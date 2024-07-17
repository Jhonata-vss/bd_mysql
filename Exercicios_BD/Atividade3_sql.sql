create database registro_escola;
use registro_escola;

CREATE TABLE registro_escola(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(10) NOT NULL,
    nota DECIMAL(4, 2) NOT NULL,
    matricula DATE NOT NULL
);

-- Inserção de dados na tabela registro_escola
INSERT INTO registro_escola (id, nome, idade, turma, nota, matricula) VALUES
(1,'Jean Claude VanDame',16,'1A',9.0,'2021-02-10'),
(2,'Leonardo DiCaprio',16,'1B', 5.0, '2022-03-15'),
(3,'Dwayne Johnson',15,'8A',7.8, '2020-05-20'),
(4,'Elon Musk',14,'7C',7.7,'2023-01-25'),
(5,'Albert Eistein',7,'2B',9.0,'2019-04-10');

-- Busca todos os registros
SELECT * FROM registro_escola;

SELECT * FROM registro_escola WHERE nota > 7.0;

SELECT * FROM registro_escola WHERE nota < 7.0;




