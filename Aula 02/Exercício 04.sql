CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;
CREATE TABLE tb_categorias (
	id_categorias INT(10) AUTO_INCREMENT,
    variedades VARCHAR(25) NOT NULL,
    cortes VARCHAR(25) NOT NULL,
    PRIMARY KEY(id_categorias)
);

USE db_cidade_das_carnes;
CREATE TABLE tb_produtos (
	id_produtos INT(10),
    marca VARCHAR(25),
    peso DECIMAL(10,2),
    preco DECIMAL (10,2),
    FOREIGN KEY (id_produtos) REFERENCES tb_categorias (id_categorias)
);

INSERT INTO tb_categorias (variedades, cortes) VALUES
	("Bovino","Pescoço"),
    ("Bovino","Peito"),
    ("Suíno","Lombo"),
    ("Suíno","Fraldinha"),
    ("Aves","Asas");
    
INSERT INTO tb_produtos (marca, peso, preco, id_produtos) VALUES
	("Friboi", 2.5, 52.90, 1),
    ("Montana", 3.0, 68.50, 1),
    ("Sadia", 1.2, 20.90, 5),
    ("Seara", 1.8, 18.50, 5),
    ("Perdigão", 1.5, 22.50, 5),
    ("Sadia", 3.5, 72.90, 4),
    ("Caster",3.5, 42.70, 4),
    ("Cuqui", 5.0, 98.90, 3);
    
SELECT * FROM tb_produtos
	WHERE preco > 50.00;
    
SELECT * FROM tb_produtos
	WHERE preco > 3.00 and preco < 60.00;
    
SELECT * FROM tb_produtos
	WHERE marca LIKE "C%";
    
SELECT * FROM tb_produtos
	INNER JOIN tb_categorias ON tb_categorias.id_categorias = tb_produtos.id_produtos;
    
SELECT * FROM tb_produtos
	INNER JOIN tb_categorias ON tb_categorias.id_categorias = tb_produtos.id_produtos
		WHERE id_categorias = 1;