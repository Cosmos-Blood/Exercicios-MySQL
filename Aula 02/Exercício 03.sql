CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;
	CREATE TABLE tb_categoria (
    id INT AUTO_INCREMENT,
    tipo VARCHAR(25),
    efeito VARCHAR(25),
    PRIMARY KEY(id)
    );
    
USE db_farmacia_do_bem;
	CREATE TABLE tb_produto (
    id_remedio INT,
    marca VARCHAR(25),
    fabricado DATE,
    validade DATE,
    preco DECIMAL (10,2),
    FOREIGN KEY (id_remedio) REFERENCES tb_categoria(id)
    );
    
INSERT INTO tb_categoria (tipo, efeito) VALUES 
	("Pastilha","Remédio"),
    ("Cápsula","Remédio"),
    ("Liquído","Medicamento"),
    ("Gasoso","Medicamento"),
    ("Semissólidos","Medicamento");
    
INSERT INTO tb_produto (marca, fabricado, validade, preco, id_remedio) VALUES
	("ZYOGEN", "2018-09-22", "2021-09-22", 43.90, 1),
    ("TYMLOS", "2021-02-17", "2022-05-17", 30.00, 3),
    ("ORENCIA", "2019-04-05", "2023-12-31", 72.99, 1),
    ("ZORIVAX", "2021-01-03", "2024-06-01", 15.90, 5),
    ("ENGOV", "2021-07-31", "2025-04-15", 81.00, 2),
    ("CENTRUM", "2019-08-11", "2022-01-31", 65.90, 1),
    ("ZORATEN", "2003-02-17", "2022-02-17", 230.90, 3),
    ("BOO", "2006-09-29", "2022-09-19", 561.80, 4);
    
SELECT * FROM tb_produto
	WHERE preco > 50.00;

SELECT * FROM tb_produto
	WHERE preco > 3.00 and preco < 60.00;
    
SELECT * FROM tb_produto
	WHERE marca LIKE "B%";

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id_remedio;
    
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id_remedio
		WHERE id = 1;
    