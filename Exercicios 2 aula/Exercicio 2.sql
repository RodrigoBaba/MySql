CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
		id_categoria INT AUTO_INCREMENT PRIMARY KEY,
	tamanho VARCHAR(10) NOT NULL,
    tipo VARCHAR(10) NOT NULL,
    retirar_no_local BOOLEAN NOT NULL
);

CREATE TABLE tb_pizzas(
		id_pizza INT AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR(40) NOT NULL,
    valor FLOAT(10, 2) NOT NULL,
    borda_recheada BOOLEAN NOT NULL,
    adicao_recheio BOOLEAN NOT NULL,
    adicionar_bebida BOOLEAN NOT NULL,
    fk_categoria INT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(tamanho, tipo, retirar_no_local)
VALUES 
("Grande", "Salgada", true),
("Grande", "Doce", true),
("Grande", "Salgada", false),
("Grande", "Doce", false),
("Broto", "Salgada", true),
("Broto", "Doce", true),
("Broto", "Salgada", false),
("Broto", "Doce", false);

INSERT INTO tb_pizzas(sabor, valor, borda_recheada, adicao_recheio, adicionar_bebida, fk_categoria)
VALUES
("Calabresa", 30.50, true, true, true, 1),
("Chocolate", 40.50, false, true, true, 2),
("Morango", 55.50, true, true, false, 2),
("Morango", 50.50, true, true, true, 4),
("Calabresa", 23.50, false, false, false, 3),
("Mussarela", 15.50, false, false, false, 5),
("Banana", 20.50, false, false, true, 8),
("Calabresa", 15.50, true, true, false, 7);

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 29 AND 60;

SELECT * FROM tb_pizzas WHERE sabor LIKE "C%";

SELECT * FROM tb_pizzas
	INNER JOIN tb_categorias ON tb_categorias.id_categoria = tb_pizzas.fk_categoria;
    
SELECT * FROM tb_categorias
	INNER JOIN tb_pizzas ON tb_pizzas.fk_categoria = tb_categorias.id_categoria
    WHERE tipo = "Doce";
