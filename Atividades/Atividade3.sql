create database db_escola;
use db_escola;


CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    serie VARCHAR(20),
    nota DECIMAL(4, 2),
    cidade VARCHAR(50)
);


INSERT INTO estudantes (nome, idade, serie, nota, cidade) VALUES
    ('Ana Silva', 15, '9º ano', 8.5, 'São Paulo'),
    ('Pedro Santos', 16, '3º ano', 7.2, 'Rio de Janeiro'),
    ('Mariana Oliveira', 14, '7º ano', 9.0, 'Salvador'),
    ('João Costa', 17, '2º ano', 6.5, 'Porto Alegre'),
    ('Carla Souza', 15, '8º ano', 8.7, 'Recife'),
    ('Lucas Pereira', 13, '6º ano', 9.5, 'Belo Horizonte'),
    ('Julia Lima', 16, '3º ano', 6.0, 'Brasília'),
    ('Gabriel Almeida', 14, '7º ano', 7.8, 'Fortaleza');

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 7.5 WHERE nome = 'Pedro Santos';

