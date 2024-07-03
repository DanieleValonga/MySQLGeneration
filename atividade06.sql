CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
professor VARCHAR(255) NOT NULL,
presencial VARCHAR(255) NOT NULL,
tipo_id BIGINT,
FOREIGN KEY (tipo_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES
('Negócios e Empreendedorismo', 'Cursos voltados para o desenvolvimento de habilidades em negócios.'),
('Saúde e Bem-estar', 'Cursos que abrangem temas de saúde.'),
('Tecnologia', 'Cursos relacionados a tecnologia e informática.'),
('Linguas', 'Cursos focados no ensino de linguas estrangeiras.'),
('Artes', 'Cursos dedicados a disciplinas artísticas e criativas.');

INSERT INTO tb_cursos (nome, preco, professor, presencial, tipo_id) VALUES
('Programação', 1200.00, 'Sergio', 'Não', 3),
('Design Gráfico', 1000.00, 'Lucas', 'Não', 5),
('Nutrição', 900.00, 'Julia', 'Não', 2),
('Administração', 1100.00, 'Luciana', 'Não', 1),
('Mandarim', 1300.00, 'Marcio', 'Não', 4),
('Inglês', 1000.00, 'Luana', 'Não', 4),
('Pintura', 800.00, 'Eduardo', 'Não', 5),
('Finanças', 1200.00, 'Jaqueline', 'Não', 1);

SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;
SELECT * from tb_cursos WHERE nome LIKE "%J%";

SELECT nome, preco, professor, presencial, tb_categorias.tipo, tb_categorias.descricao
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.tipo_id = tb_categorias.id;

SELECT nome, preco, professor, presencial, tb_categorias.tipo, tb_categorias.descricao
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.tipo_id = tb_categorias.id
WHERE tb_categorias.tipo = 'Linguas';