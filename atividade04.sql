CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
quantidade_disponivel INT NOT NULL,
data_validade DATE,
tipo_id BIGINT,
FOREIGN KEY(tipo_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES 
("Folhosos", "Vegetais com folhas comestíveis, ricos em fibras, vitaminas e minerais."),
('Frutos', 'Vegetais que são tecnicamente frutos, e contém vitaminas, antioxidantes e fibras.'),
('Raízes', 'Vegetais que crescem abaixo do solo, ricos em carboidratos, fibras e nutrientes.'),
('Tubercolos', 'Vegetais que armazenam nutrientes em partes engrossadas de suas raízes, fontes de carboidrato e energia.'),
('Leguminosas', 'Vegetais que crescem em vagens, ricos em proteínas, fibras e minerais.');

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, preco, quantidade_disponivel, data_validade, tipo_id) VALUES 
('Alface', 2.20, 30, '2024-07-05', 1),
('Tomate', 6.50, 70, '2024-09-05', 2),
('Cenoura', 3.00, 78, '2024-08-05', 3),
('Batata', 6.67, 90, '2024-09-05', 4),
('Ervilhas', 4.89, 80, '2024-09-05', 5),
('Beterraba', 2.50, 100, '2024-12-05', 3),
('Espinafre', 6.00, 25, '2024-07-05', 1),
('Abóbora', 5.00, 110, '2024-08-05', 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco < 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
SELECT * FROM tb_produtos WHERE nome LIKE "%a";

SELECT nome, preco, quantidade_disponivel, data_validade, tb_categorias.tipo, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.tipo_id = tb_categorias.id;

SELECT nome, preco, quantidade_disponivel, data_validade, tb_categorias.tipo, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.tipo_id = tb_categorias.id
WHERE tb_categorias.tipo = "Frutos";
