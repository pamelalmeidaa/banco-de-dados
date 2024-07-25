create database db_generation_game_online;
USE db_generation_game_online;


-- Criar a tabela tb_classes
CREATE TABLE tb_classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    attack_power INT,
    defense_power INT
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    attack_power INT,
    defense_power INT
);

CREATE TABLE tb_personagens (
    personagem_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nivel INT,
    attack_power INT,
    defense_power INT,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES tb_classes(class_id)
);


INSERT INTO tb_classes (class_name, attack_power, defense_power) VALUES
('Guerreiro', 2500, 1800),
('Mago', 1800, 1200),
('Arqueiro', 2200, 1500),
('Cavaleiro', 2400, 1600),
('Assassino', 2000, 1400);

INSERT INTO tb_personagens (nome, nivel, attack_power, defense_power, class_id) VALUES
('Herói1', 15, 2800, 2000, 1),
('Herói2', 12, 2500, 1900, 1),
('Mago1', 10, 1800, 1100, 2),
('Mago2', 8, 1700, 1000, 2),
('Arqueiro1', 14, 2400, 1400, 3),
('Arqueiro2', 11, 2200, 1300, 3),
('Cavaleiro1', 13, 2600, 1700, 4),
('Cavaleiro2', 9, 2300, 1600, 4);

SELECT * FROM tb_personagens WHERE attack_power > 2000;
SELECT * FROM tb_personagens WHERE defense_power BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
SELECT p.*, c.class_name FROM tb_personagens p INNER JOIN tb_classes c ON p.class_id = c.class_id;
SELECT p.*, c.class_name FROM tb_personagens p INNER JOIN tb_classes c ON p.class_id = c.class_id WHERE c.class_name = 'Arqueiro';


