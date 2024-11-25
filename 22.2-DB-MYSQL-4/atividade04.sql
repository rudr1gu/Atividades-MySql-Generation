CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    origem VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    valor DECIMAL(10,2),
    validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (descricao, tipo, origem)
VALUES  ("bovino", "carne", "nacional"),
        ("suíno", "carne", "nacional"),
        ("frango", "carne", "nacional"),
        ("peixe", "carne", "importado"),
        ("cordeiro", "carne", "nacional");

INSERT INTO tb_produtos (nome, valor, validade, categoria_id)
VALUES  ("picanha", 50.00, "2023-12-31", 1),
        ("costela", 40.00, "2023-12-31", 1),
        ("linguiça", 30.00, "2023-12-31", 2),
        ("pernil", 60.00, "2023-12-31", 2),
        ("peito", 20.00, "2023-12-31", 3),
        ("coxa", 10.00, "2023-12-31", 3),
        ("salmão", 70.00, "2023-12-31", 4),
        ("bacalhau", 80.00, "2023-12-31", 4);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT p.nome, p.valor, p.validade, c.descricao, c.tipo, c.origem FROM tb_produtos p
JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, p.valor, p.validade, c.descricao, c.tipo, c.origem FROM tb_produtos p
JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.descricao = "bovino";

SELECT p.nome, p.valor, p.validade, c.descricao, c.tipo, c.origem FROM tb_produtos p
JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.descricao = "suíno";
