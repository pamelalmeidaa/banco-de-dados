CREATE DATABASE db_serviçoRH;

use db_serviçoRH;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    departamento VARCHAR(100),
    data_admissao DATE
);

INSERT INTO colaboradores (nome, cargo, salario, departamento, data_admissao)
VALUES
    ('Danrley Salgado', 'Analista de Marketing', 3000.00, 'Marketing', '2020-05-15'),
    ('Julia Dantas', 'Desenvolvedora Web', 2500.00, 'Tecnologia da Informação', '2019-09-20'),
    ('Lucas Silveira', 'Financeiro', 4000.00, 'Vendas', '2018-02-10'),
    ('Gabriella Mattos', 'Recursos Humanos', 1800.00, 'Financeiro', '2021-01-08'),
    ('Waldemar Americo', 'Gerente Comercial', 2200.00, 'Recursos Humanos', '2017-11-30');

select * from colaboradores where salario > 2000;

select * from colaboradores where salario < 2000;

update colaboradores set salario = 2000.00 where id = 4;

