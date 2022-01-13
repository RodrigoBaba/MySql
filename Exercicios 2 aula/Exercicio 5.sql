CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categorias(
		id_categoria INT AUTO_INCREMENT PRIMARY KEY,
	tipo_do_material VARCHAR(40) NOT NULL,
    marca VARCHAR(40) NOT NULL,
    categoria_material VARCHAR(40) NOT NULL
);

CREATE TABLE tb_produtos(
		id_produto INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
    quantidade INT NOT NULL,
    valor FLOAT(10, 2) NOT NULL,
    cor VARCHAR(15) NOT NULL,
    peso FLOAT(10, 2) NOT NULL,
    fk_categoria INT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(tipo_do_material, marca, categoria_material)
VALUES
("Plástico", "Tigre", "Hidráulica"),
("Metal", "3M", "Para alicerce"),
("Metal", "Tigre", "Hidráulica"),
("Vidro", "Amanco", "Janelas"),
("Madeira", "Eliane", "Portas");

INSERT INTO tb_produtos(nome, quantidade, valor, cor, peso, fk_categoria)
VALUES
("Cano PVC", 2, 30.50, "Bege", 4.20, 1),
("Calha", 4, 91.70, "Preta", 40.5, 3),
("Janela", 1, 80, "Esverdeada", 19, 4),
("Porta", 1, 300.50, "Marrom", 40, 5),
("Vergalhão", 9, 100.50, "Prata", 125.32, 2),
("Porta", 2, 500, "Preta", 35.98, 5),
("Cano", 3, 90, "Prata", 65.20, 3);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "C%";

SELECT * FROM tb_categorias
	INNER JOIN tb_produtos ON tb_produtos.fk_categoria = tb_categorias.id_categoria;
    
SELECT * FROM tb_categorias
	INNER JOIN tb_produtos ON tb_produtos.fk_categoria = tb_categorias.id_categoria
    WHERE categoria_material = "Hidráulica";