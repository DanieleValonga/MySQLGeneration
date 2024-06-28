CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_funcionarios(
matricula BIGINT auto_increment,
nome VARCHAR(255) not null,
residencia VARCHAR(255) not null,
salario DECIMAL(6,2),
cargo VARCHAR(50),
primary key(matricula)
);

SELECT * FROM tb_funcionarios;

INSERT into tb_funcionarios(nome, residencia, salario, cargo) values ("Daniele Santos", "Paulínia", 3000.00, "Desenvolvedor Java");
INSERT into tb_funcionarios(nome, residencia, salario, cargo) values ("Cristina Lopes", "Campinas", 6500.00, "Gerente");
INSERT into tb_funcionarios(nome, residencia, salario, cargo) values ("Ivanete Inacio", "Paulínia", 2800.00, "Analista de TI");
INSERT into tb_funcionarios(nome, residencia, salario, cargo) values ("Pablo Vinicius", "Sumaré", 2000.00, "Auxiliar de serviços gerais");
INSERT into tb_funcionarios(nome, residencia, salario, cargo) values ("Julio Figueiredo", "Campinas", 5000.00, "Sub Gerente");

DELETE FROM tb_funcionarios WHERE matricula = 6;

SELECT * FROM tb_funcionarios WHERE salario > 2000.0;
SELECT * FROM tb_funcionarios WHERE salario < 2000.0;

UPDATE tb_funcionarios SET cargo = "Assistente" WHERE matricula = 4;