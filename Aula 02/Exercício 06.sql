CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;
CREATE TABLE tb_categoria(
	id_categoria INT(65) AUTO_INCREMENT,
    instituicao VARCHAR(35),
    curso VARCHAR(35),
    PRIMARY KEY(id_categoria)
);

USE db_cursoDaMinhaVida;
CREATE TABLE tb_produto (
	id_produtos INT(65),
    vagas BIGINT(255),
    duracao_meses INT(65),
    instrutor VARCHAR(45),
    preco DECIMAL,
    FOREIGN KEY(id_produtos) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (instituicao, curso) VALUES 
	("Generation","Java Web"),
    ("Generation","Desenvolvedor Mobile"),
    ("Just All","T.I"),
    ("Just All","Inglês"),
    ("Wizzard","Espanhol");
    
INSERT INTO tb_produto (vagas, duracao_meses, instrutor, preco, id_produtos) VALUES 
	(98, 3,"Boaz", 0.0, 1),
    (132, 2," Wilson", 30.0, 2),
    (234, 36,"Elias", 50, 5),
    (48, 24,"Laura", 40, 4),
    (349, 36,"Isadora", 90, 5),
    (98, 3,"Jeff", 0.0, 1),
    (53, 50,"Pamela", 80, 3),
    (320, 36,"Sofia", 9900.00, 5);
    
SELECT * FROM tb_produto
	WHERE preco > 50;

SELECT * FROM tb_produto
	WHERE preco > 3 and preco < 60;
    
SELECT * FROM tb_produto
	WHERE instrutor LIKE "J%";
    
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_produto.id_produtos = tb_categoria.id_categoria;
    
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_produto.id_produtos = tb_categoria.id_categoria
		WHERE id_categoria = 1;