CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    valor DECIMAL(10,2),
    validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, categoria)
VALUES  ("medicamento", "analgésico"),
        ("medicamento", "antibiótico"),
        ("higiene", "sabonete"),
        ("higiene", "shampoo"),
        ("higiene", "condicionador");

INSERT INTO tb_produtos (nome, valor, validade, categoria_id)
VALUES  ("dipirona", 10.00, "2023-12-31", 1),
        ("amoxicilina", 20.00, "2023-12-31", 2),
        ("dove", 5.00, "2023-12-31", 3),
        ("seda", 10.00, "2023-12-31", 4),
        ("pantene", 15.00, "2023-12-31", 5),
        ("melagrião", 50.00, "2023-12-31", 1),
        ("azitromicina", 30.00, "2023-12-31", 2),
        ("nivea", 10.00, "2023-12-31", 3);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT p.nome, p.valor, p.validade, c.tipo, c.categoria FROM tb_produtos p
JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, p.valor, p.validade, c.tipo, c.categoria FROM tb_produtos p
JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.tipo = "higiene";




