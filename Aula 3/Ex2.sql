CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);


CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    ingredientes TEXT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgadas', 'Pizzas com recheios tradicionais salgados.'),
('Doces', 'Pizzas com recheios doces e sobremesas.');


INSERT INTO tb_pizzas (nome, valor, ingredientes, id_categoria) VALUES
('Calabresa', 40.00, 'Mussarela, calabresa, cebola, tomate, orégano', 1),
('Margherita', 50.00, 'Mussarela, tomate, manjericão fresco, azeite', 1),
('Quatro Queijos', 55.00, 'Mussarela, parmesão, provolone, gorgonzola', 1),
('Brigadeiro', 35.00, 'Chocolate, leite condensado, granulado', 2),
('Romeu e Julieta', 45.00, 'Queijo mussarela, goiabada cascão', 2),
('Banana com Canela', 40.00, 'Banana, açúcar, canela', 2),
('Frango com Catupiry', 60.00, 'Frango desfiado, catupiry, milho, azeitonas', 1),
('Portuguesa', 48.00, 'Mussarela, presunto, ovos, cebola, ervilha, azeitonas', 1);


SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.*, c.nome AS categoria_nome, c.descricao AS categoria_descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;
SELECT p.*, c.nome AS categoria_nome, c.descricao AS categoria_descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome = 'Doces';
