CREATE DATABASE rh_empresa;

USE rh_empresa;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    setor VARCHAR(100),
    data_admissao DATE
);

INSERT INTO colaboradores (nome, cargo, salario, setor, data_admissao) VALUES
('João', 'Analista de Sistemas', 3000.00, 'TI', '2021-01-01'),
('Maria', 'Analista de RH', 2500.00, 'RH', '2021-01-01'),
('José', 'Analista de Marketing', 2000.00, 'Marketing', '2021-01-01'),
('Ana', 'Analista de Qualidade', 1500.00, 'Qualidade', '2021-01-01'),
('Carlos', 'Analista de Suporte', 1000.00, 'Suporte', '2021-01-01');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 3500.00 WHERE id = 1;

SELECT * FROM colaboradores;