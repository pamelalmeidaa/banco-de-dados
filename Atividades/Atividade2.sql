CREATE DATABASE e_commerce;
use e_commerce;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(50),
    disponivel INT NOT NULL 
);

insert into produtos (nome, descricao, preco, categoria, disponivel) values
('Smartphone X', 'Smartphone avançado com câmera de alta resolução', 1200.00, 'Eletrônicos', 1),
    ('Notebook Y', 'Notebook leve e potente para uso profissional', 2500.00, 'Informática', 1),
    ('Fone de Ouvido Z', 'Fone de ouvido Bluetooth com cancelamento de ruído', 300.00, 'Eletrônicos', 1),
    ('Cadeira de Escritório', 'Cadeira ergonômica com ajustes de altura e inclinação', 450.00, 'Móveis', 1),
    ('Impressora Laser', 'Impressora monocromática de alta velocidade', 800.00, 'Informática', 1),
    ('Mouse sem Fio', 'Mouse óptico com conectividade sem fio', 40.00, 'Informática', 1),
    ('Teclado Mecânico', 'Teclado para jogos mecânico com iluminação RGB', 150.00, 'Informática', 1),
    ('Mochila Executiva', 'Mochila resistente com compartimento acolchoado para laptop', 120.00, 'Acessórios', 1);

select *from produtos where preco > 500;

select * from produtos where preco < 500;

update produtos set preco = 180.00 where id = 7;