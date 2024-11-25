CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    valor DECIMAL(10,2),
    ingredientes VARCHAR(100),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, categoria)
VALUES  ("salgada", "calabresa"),
        ("salgada", "marguerita"),
        ("salgada", "portuguesa"),
        ("doce", "chocolate"),
        ("doce", "banana");

INSERT INTO tb_pizzas (nome, valor, ingredientes, categoria_id)
VALUES  ("calabresa", 40.00, "calabresa, cebola, tomate, mussarela", 1),
        ("marguerita", 50.00, "mussarela, tomate, manjericão", 2),
        ("portuguesa", 60.00, "presunto, mussarela, ovo, cebola, ervilha, azeitona", 3),
        ("chocolate", 70.00, "chocolate, morango, leite condensado", 4),
        ("banana", 80.00, "banana, canela, leite condensado", 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT p.nome, p.valor, p.ingredientes, c.tipo, c.categoria FROM tb_pizzas p
JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, p.valor, p.ingredientes, c.tipo, c.categoria FROM tb_pizzas p
JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.tipo = "doce";
