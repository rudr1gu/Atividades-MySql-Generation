CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    serie VARCHAR(100),
    nota DECIMAL(10,2),
    data_matricula DATE
);

INSERT INTO estudantes (nome, idade, serie, nota, data_matricula) VALUES
('João', 15, '9º ano', 8.0, '2021-01-01'),
('Maria', 14, '8º ano', 7.5, '2021-01-01'),
('José', 13, '7º ano', 6.0, '2021-01-01'),
('Ana', 12, '6º ano', 5.5, '2021-01-01'),
('Carlos', 11, '5º ano', 4.0, '2021-01-01'),
('Mariana', 10, '4º ano', 3.5, '2021-01-01'),
('Pedro', 9, '3º ano', 2.0, '2021-01-01'),
('Juliana', 8, '2º ano', 1.5, '2021-01-01');

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 9.0 WHERE id = 1;

SELECT * FROM estudantes;