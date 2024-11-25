CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    nivel INT,
    vida INT,
    poder_ataque INT,
    poder_defesa INT,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL,
    classe VARCHAR(100) NOT NULL
);

INSERT INTO tb_personagens (nome, nivel, vida, poder_ataque, poder_defesa, classe_id)
VALUES  ("Luffy", 10, 100, 5000, 2500, 1),
        ("Zoro", 10, 100, 4500, 4000, 5),
        ("Nami", 10, 100, 1000, 2500, 2),
        ("Usopp", 10, 100, 1500, 2500, 6),
        ("Sanji", 10, 100, 4300, 4000, 3),
        ("Chopper", 10, 100, 3000, 2000, 4),
        ("Robin", 10, 100, 4000, 2500, 7);

INSERT INTO tb_classes (tipo, classe)
VALUES  ("capitão", "pirata"),
        ("navegador", "pirata"),
        ("cozinheiro", "pirata"),
        ("médico", "pirata"),
        ("espadachim", "pirata"),
        ("atirador", "pirata"),
        ("arqueóloga", "pirata");

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa > 1000 AND poder_defesa < 2000;


SELECT nome FROM tb_personagens WHERE nome LIKE "%C%";

SELECT p.nome, p.nivel, p.vida, c.tipo, c.classe FROM tb_personagens p
JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.nome, p.nivel, p.vida, c.tipo, c.classe FROM tb_personagens p
JOIN tb_classes c ON p.classe_id = c.id WHERE c.classe = "pirata";
