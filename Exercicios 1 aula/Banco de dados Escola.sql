CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_registros(
		id_registro INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    nota FLOAT(5, 2),
    turma VARCHAR(15),
    ra INT,
    materia VARCHAR(40)
);

INSERT INTO tb_registros(nome, nota, turma, ra, materia)
VALUES 
("Roberta Souza", 7.35, "Turma 42", 123456, "Geral-Fundamental"),
("Olivia Palito", 10.0, "Turma 7", 321654, "Geral-Médio"),
("Violet Evergarden", 7.68, "Turma 15", 789456, "Geral-Fundamental"),
("Geralt de Rívia", 4.50, "Turma 22", 556789, "Geral-Fundamental"),
("Gilbert Bougainvillea", 6.25, "Turma 7", 445789, "Geral-Médio"),
("Asuna Yuuki", 9.0, "Turma 42", 125489, "Geral-Fundamental");

SELECT * FROM tb_registros WHERE nota > 7;

SELECT * FROM tb_registros WHERE nota < 7;

UPDATE tb_registros
SET nota = 8.2
WHERE id_registro = 4;