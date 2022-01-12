CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
		id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    idade INT,
    email VARCHAR(45),
    salario FLOAT(10,2),
    cargo VARCHAR(20)
);

INSERT INTO tb_funcionarios(nome, idade, email, salario, cargo)
VALUES 
("Rodrigo", 18, "rodrigo@email.com", 1000.00, "Estagiário"),
("Luana", 32, "lua@email.com", 3000.20, "Secretária"),
("Maria", 36, "maria@email.com", 7000.00, "Gerente"),
("Carlos", 28, "carlos@email.com", 4000.00, "Atendente"),
("Rafaela", 21, "rafaela@email.com", 4000.00, "Atendente");

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios
SET email = "mari@email.com"
WHERE id_funcionario = 3;