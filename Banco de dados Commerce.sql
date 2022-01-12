CREATE DATABASE db_commerce;

USE db_commerce;

CREATE TABLE tb_produtos(
		id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    preco FLOAT(10,2),
    cor VARCHAR(15),
    quantidade INT,
    peso FLOAT(10,2)
);

INSERT INTO tb_produtos(nome, preco, cor, quantidade, peso)
VALUES 
("Cadeira Presidente", 1500.20, "Preta", 1, 30.10),
("Celular", 3200.00, "Branco", 2, 0.5),
("Sofá", 1200.00, "Bege", 1, 50.35),
("Lápis", 1.00, "Vermelho", 5, 0.02),
("Caderno", 18.50, "Preto", 4, 0.8),
("Mouse", 50.00, "Preto", 2, 0.6);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos
SET quantidade = 1
WHERE id_produto = 2;