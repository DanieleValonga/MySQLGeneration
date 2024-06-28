CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
codigo BIGINT auto_increment,
eletrodomestico VARCHAR(255) not null,
marca VARCHAR(255) not null,
quantidade INT,
preco DECIMAL(6,2),
primary key(codigo)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (eletrodomestico, marca, quantidade, preco) values ("geladeira", "electrolux", 02, 6000.00);
INSERT INTO tb_produtos (eletrodomestico, marca, quantidade, preco) values ("micro-ondas", "panasonic", 01, 499.00);
INSERT INTO tb_produtos (eletrodomestico, marca, quantidade, preco) values ("smart tv", "philips", 05, 2400.00);
INSERT INTO tb_produtos (eletrodomestico, marca, quantidade, preco) values ("smartphone", "samsung", 04, 3499.00);
INSERT INTO tb_produtos (eletrodomestico, marca, quantidade, preco) values ("secador de cabelo", "britania", 02, 99.90);
INSERT INTO tb_produtos (eletrodomestico, marca, quantidade, preco) values ("cafeteira", "dolcegusto", 07, 478.46);
INSERT INTO tb_produtos (eletrodomestico, marca, quantidade, preco) values ("playstation", "playstation", 01, 3599.90);
INSERT INTO tb_produtos (eletrodomestico, marca, quantidade, preco) values ("torradeira", "oster", 03, 155.10);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET quantidade = 07 WHERE codigo = 3;

ALTER TABLE tb_produtos CHANGE eletrodomestico eletro VARCHAR(255);

