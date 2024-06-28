CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
	matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) not null,
    materia VARCHAR(255) not null,
    idade INT,
    nota FLOAT,
    primary key(matricula)
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Joana Queiroz", "Ciencia", 17, 8.0);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Fabio Santos", "Portugues", 15, 3.5);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Nathan Bueno", "Artes", 16, 5.0);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Diana Alves", "Historia", 16, 9.0);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Carol Lima", "Filosofia", 17, 6.0);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Gustavo Oliveira", "Física", 15, 8.0);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Daniele Santos", "Artes", 15, 10.0);
INSERT INTO tb_alunos (nome, materia, idade, nota) VALUES ("Aline Nunes", "Química", 15, 9.5);

SELECT * FROM tb_alunos WHERE nota>=7.0;
SELECT * FROM tb_alunos WHERE nota<7.0;

UPDATE tb_alunos SET nota = 6.0 WHERE matricula = 1;