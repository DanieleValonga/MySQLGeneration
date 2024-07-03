CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
quantidade_disponível INT NOT NULL,
data_validade DATE,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_categorias (categoria, descricao) VALUES
('Metais', 'Materiais metálicos.'),
('Materiais de acabamento', 'Materiais usados para acabamento.'),
('Madeira e Derivados', 'Materais a base de madeira.'),
('Mistura para base', 'Materiais a base de alguma mistura de ingredientes.'),
('Blocos', 'Unidades de construção no formato de blocos.');

INSERT INTO tb_produtos (nome, preco, quantidade_disponível, data_validade, categoria_id) VALUES
('Aço', 60.00, 300, '2028-05-06', 1),
('Tábua', 30.00, 500, '2030-08-06', 3),
('Porcelanato', 65.00, 247, '2050-08-05', 2),
('Argamassa', 50.67, 600, '2025-06-03', 4),
('Tijolos de barro', 30.00, 530, '2050-07-05', 5),
('Viga', 25.50, 100, '2028-07-06', 3),
('Alumínio', 80.00, 300, '2050-08-04', 1),
('Cimento', 27.00, 600, '2025-07-06', 4);

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT nome, preco, quantidade_disponível, data_validade, tb_categorias.categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome, preco, quantidade_disponível, data_validade, tb_categorias.categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = 'Metais';


