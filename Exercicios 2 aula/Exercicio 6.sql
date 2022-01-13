CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categorias(
		id_categoria INT AUTO_INCREMENT PRIMARY KEY,
	vagas INT,
    quantos_cursos INT,
    area_curso VARCHAR(40)
);

CREATE TABLE tb_cursos(
		id_curso INT AUTO_INCREMENT PRIMARY KEY,
	materia VARCHAR(40) NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    turma VARCHAR(10) NOT NULL,
    professor VARCHAR(40) NOT NULL,
    valor FLOAT(10, 2) NOT NULL,
    fk_categoria INT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id_categoria)   
);

INSERT INTO tb_categorias(vagas, quantos_cursos, area_curso)
VALUES
(30, 3, "TI"),
(10, 5, "Matemática"),
(20, 6, "Português"),
(23, 1, "Inglês"),
(0, 2, "Financeiro");

INSERT INTO tb_cursos(materia, periodo, turma, professor, valor, fk_categoria)
VALUES
("Linguagem: Java", "Integral", "Turma 42", "Gustavo Boaz", 0.0, 1),
("Linguagem: JavaScript", "Diurno", "Turma 4", "Olaf Borges", 200.5, 1),
("Matemática Financeira", "Noturno", "Turma 13", "Vagner", 180, 5),
("Verbos", "Matutino", "Turma 2", "Xavier Souza", 100, 3),
("Verbo To Be", "Matutino", "Turma 5", "Gustavo Garcia", 250.0, 4),
("Matemática Avançada", "Noturno", "Turma 40", "Amanda Souza",300.5, 2),
("Interpretação de texto", "Noturno", "Turma 60", "Maria Macedo", 125.99, 3);

SELECT * FROM tb_cursos WHERE valor > 50;

SELECT * FROM tb_cursos WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_cursos WHERE materia LIKE "%J%";

SELECT * FROM tb_cursos
	INNER JOIN tb_categorias ON tb_categorias.id_categoria = tb_cursos.fk_categoria;
    
SELECT * FROM tb_categorias
	INNER JOIN tb_cursos ON tb_cursos.fk_categoria = tb_categorias.id_categoria
    WHERE area_curso = "TI";