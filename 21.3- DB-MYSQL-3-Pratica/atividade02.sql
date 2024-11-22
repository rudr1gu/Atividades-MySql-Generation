CREATE DATABASE e_commerce;

USE e_commerce;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(100),
    valor DECIMAL(10,2),
    categoria VARCHAR(100),
    data_cadastro DATE
);

INSERT INTO produtos (nome, descricao, valor, categoria, data_cadastro) VALUES
('Camiseta', 'Camiseta de algodão', 50.00, 'Vestuário', '2021-01-01'),
('Calça', 'Calça jeans', 100.00, 'Vestuário', '2021-01-01'),
('Tênis', 'Tênis esportivo', 200.00, 'Calçados', '2021-01-01'),
('Bolsa', 'Bolsa de couro', 300.00, 'Acessórios', '2021-01-01'),
('Relógio', 'Relógio de pulso', 400.00, 'Acessórios', '2021-01-01'),
('Celular', 'Celular smartphone', 600.00, 'Eletrônicos', '2021-01-01'),
('Notebook', 'Notebook i5', 800.00, 'Eletrônicos', '2021-01-01'),
('Tablet', 'Tablet 10 polegadas', 1000.00, 'Eletrônicos', '2021-01-01');

SELECT * FROM produtos WHERE valor > 500;

SELECT * FROM produtos WHERE valor < 500;

UPDATE produtos SET valor = 700.00 WHERE id = 7;

SELECT * FROM produtos;