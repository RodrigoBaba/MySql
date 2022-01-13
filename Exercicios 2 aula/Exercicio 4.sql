CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
		id_categoria INT AUTO_INCREMENT PRIMARY KEY,
	tipo_carne VARCHAR(20) NOT NULL,
    promocao BOOLEAN NOT NULL,
    forma_de_pagamento VARCHAR(20) NOT NULL    
);

CREATE TABLE tb_produtos(
		id_produto INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
    peso FLOAT(10, 2) NOT NULL,
    embutido BOOLEAN NOT NULL,
    local_producao VARCHAR(40) NOT NULL,
    valor FLOAT(10,2) NOT NULL,
    fk_categoria INT,
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias(id_categoria)    
);

INSERT INTO tb_categorias(tipo_carne, promocao, forma_de_pagamento)
VALUES
("Bovino", true, "Dinheiro"),
("Frango", true, "Cartao"),
("Suíno", false, "Dinheiro"),
("Carneiro", false, "Cartão"),
("Peixe", false, "Dinheiro");

INSERT INTO tb_produtos(nome, peso, embutido, local_producao, valor, fk_categoria)
VALUES
("Bisteca", 1.1, false, "São Paulo", 32.45, 3),
("Salcisha", 1.5, true, "Minas Gerais", 20.98, 3),
("Peito de Frango", 2, false, "São Paulo", 33.32, 2),
("Picanha", 1.6, false, "Paraná", 58.13, 1),
("Coxão duro", 2, false, "Paraná", 54.2, 1),
("Linguiça", 1.3, true, "Rio Grande do Sul", 22.12, 3),
("Filé de peixe", 1, false, "Rio Grande do Norte", 27.66, 5);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "C%";

SELECT * FROM tb_produtos
	INNER JOIN tb_categorias ON tb_categorias.id_categoria = tb_produtos.fk_categoria;
    
SELECT * FROM tb_categorias
	INNER JOIN tb_produtos ON tb_produtos.fk_categoria = tb_categorias.id_categoria
    WHERE tipo_carne = "Frango";


