CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    valor DECIMAL(10,2),
    horas INT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (descricao, tipo)
VALUES  ("programação", "tecnologia"),
        ("design", "tecnologia"),
        ("marketing", "tecnologia"),
        ("idiomas", "humanas"),
        ("culinária", "humanas");

INSERT INTO tb_cursos (nome, valor, horas, categoria_id)
VALUES  ("java", 500.00, 40, 1),
        ("python", 600.00, 50, 1),
        ("photoshop", 700.00, 60, 2),
        ("illustrator", 800.00, 70, 2),
        ("marketing digital", 900.00, 80, 3),
        ("inglês", 1000.00, 90, 4),
        ("espanhol", 1100.00, 100, 4),
        ("culinária italiana", 1200.00, 110, 5);

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT c.nome, c.valor, c.horas, t.descricao, t.tipo FROM tb_cursos c
JOIN tb_categorias t ON c.categoria_id = t.id;

SELECT c.nome, c.valor, c.horas, t.descricao, t.tipo FROM tb_cursos c
JOIN tb_categorias t ON c.categoria_id = t.id WHERE t.descricao = "programação";
