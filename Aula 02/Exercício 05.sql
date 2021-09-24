CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;
CREATE TABLE tb_categoria (
	id_categoria INT(65) AUTO_INCREMENT,
    material VARCHAR(25) NOT NULL,
    em_estoque BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(id_categoria)
);

USE db_construindo_a_nossa_vida;
CREATE TABLE tb_produtos (
	id_produtos INT(65),
    marca VARCHAR(25),
    peso_kg BIGINT(100),
    preco DECIMAL(65,2),
    FOREIGN KEY (id_produtos) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (material, em_estoque) VALUES
	("Cimento", Default),
    ("Areia", Default),
    ("Barra de metal", false),
    ("Madeira", Default),
    ("Tijolos", false);
    
INSERT INTO tb_produtos (marca, peso_kg, preco, id_produtos) VALUES
	("Ciplan", 50, 280.00, 1),
    ("Liz", 80, 320.00, 1),
    ("Checar", 35, 75.00, 2),
    ("Precon", 1, 1.20, 5),
    ("Cauê", 20, 130.00, 1),
    ("Ramos", 1, 0.90, 5),
    ("Arauco", 5, 12.00, 4),
    ("GDRW", 1, 3.00, 3);
    
SELECT * FROM tb_produtos
	WHERE preco > 50;
    
SELECT * FROM tb_produtos
	WHERE preco > 3 and preco < 60;
    
SELECT * FROM tb_produtos
	WHERE marca LIKE "C%";
    
SELECT * FROM tb_produtos
	INNER JOIN tb_categoria ON tb_produtos.id_produtos = tb_categoria.id_categoria;
    
SELECT * FROM tb_produtos
	INNER JOIN tb_categoria ON tb_produtos.id_produtos = tb_categoria.id_categoria
		WHERE id_produtos = 1;