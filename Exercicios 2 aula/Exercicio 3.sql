CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categorias(
		id_categoria INT AUTO_INCREMENT PRIMARY KEY,
	tipo_produto VARCHAR(20) NOT NULL,
    tipo_medicamento VARCHAR(20) NOT NULL,
    forma_pagamento VARCHAR(20) NOT NULL
);

CREATE TABLE tb_produtos(
		id_produto INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(40),
	quantidade INT NOT NULL,
    promocao BOOLEAN NOT NULL,
    receita BOOLEAN NOT NULL,
    valor FLOAT(10, 2),
    fk_categoria INT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id_categoria)    
);

INSERT INTO tb_categorias(tipo_produto, tipo_medicamento, forma_pagamento)
VALUES
("Cosmético", "Liquido", "Dinheiro"),
("Cosmético", "Pó", "Cartão"),
("Cosmético", "Pastoso", "Cartão"),
("Medicamentoso", "Liquido", "Dinheiro"),
("Medicamentoso", "Comprimido", "Cartão");

INSERT INTO tb_produtos(nome, quantidade, promocao, receita, valor, fk_categoria)
VALUES
("Dipirona", 3, true, false, 12.00, 5),
("Paracetamol", 1, false, false, 12.00, 5),
("Batom", 1, true, false, 10.00, 1),
("B&B Shampoo", 3, false, false, 22.00, 1),
("Base", 2, true, false, 62.00, 1),
("Pó Compacto", 1, false, false, 12.00, 2),
("Xarope", 1, true, false, 22.00, 4);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "B%";

SELECT * FROM tb_produtos
	INNER JOIN tb_categorias ON tb_categorias.id_categoria = tb_produtos.fk_categoria;
    
SELECT * FROM tb_categorias
	INNER JOIN tb_produtos ON tb_produtos.fk_categoria = tb_categorias.id_categoria
    WHERE tipo_produto = "Cosmético";