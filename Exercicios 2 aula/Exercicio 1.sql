CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
		id_classe INT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(15) NOT NULL,
    arma VARCHAR(15) NOT NULL,
    origem VARCHAR(40) NOT NULL
);

CREATE TABLE tb_personagens(
		id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade INT NOT NULL,
    ataque FLOAT(10,2) NOT NULL,
    poder_habilidade FLOAT(10, 2) NOT NULL,
    defesa FLOAT(10, 2) NOT NULL,
    fk_classe INT,
    FOREIGN KEY (fk_classe) REFERENCES tb_classes (id_classe)
);

INSERT INTO tb_classes(classe, arma, origem)
VALUES 
("Assassino", "Adaga", "Vila dos Assassinos"),
("Arqueiro", "Arco", "Vila dos Elfos"),
("Mago", "Cajado", "Academia de Magia"),
("Druid", "Cajado", "Templo Divino");

INSERT INTO tb_personagens(nome, idade, ataque, poder_habilidade, defesa, fk_classe)
VALUES
("Asuna", 22, 5000, 2400, 1500, 1),
("Violet", 15, 100, 4400, 2500, 4),
("Cerverus", 23, 6000, 1400, 800, 2),
("Legolas", 222, 7000, 1400, 500, 2),
("Goku", 40, 300, 8400, 3500, 3),
("Geralt", 32, 2000, 2400, 5500, 1),
("Cirius", 19, 3000, 400, 8500, 4);

SELECT * FROM tb_personagens WHERE  ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "C%";

SELECT * FROM tb_personagens
	INNER JOIN tb_classes ON tb_classes.id_classe = tb_personagens.fk_classe;
    

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id_classe = tb_personagens.fk_classe
WHERE fk_classe = 2;

