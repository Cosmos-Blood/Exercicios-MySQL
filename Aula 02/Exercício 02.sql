CREATE DATABASE db_pizzaria_legal;

	USE db_pizzaria_legal;
	CREATE TABLE tb_categoria (
		id INT AUTO_INCREMENT,
		massa VARCHAR(15),
		tamanho VARCHAR (15),
		PRIMARY KEY (id)
);

	USE db_pizzaria_legal;
	CREATE TABLE tb_pizza (
		id_pizza INT NOT NULL,
		sabor VARCHAR(25),
		borda VARCHAR(25),
		remover VARCHAR(65) DEFAULT "Nenhuma alteração.",
		preco DECIMAL (10,2),
		FOREIGN KEY (id_pizza) REFERENCES tb_categoria(id)
);
	
	INSERT INTO tb_categoria (massa, tamanho) VALUES 
	("Crocoante","Familía"),
    ("Crocante","Pequena"),
    ("Siciliana","Familía"),
    ("Siciliana","Pequena"),
    ("Napolitana","Familía"),
	("Napolitana","Pequena");
	

	INSERT INTO tb_pizza (sabor, borda, remover, preco, id_pizza) VALUES 
		("Portuguesa", "Seca", Default, 45.90, 1),
		("Francesa", "Captury", "Bacon", 40.00, 1),
		("Atum", "Cheddar", "Cebola", 17.90, 2),
		("Calabresa", "Requeijão", Default, 16.90, 6),
		("Muçarela", "Captury", Default, 18.00, 4),
		("Marguerita", "Seca", "Azeitona", 16.00, 2),
		("Carne Seca", "Captury", Default, 44.90, 3),
		("Brigadeiro", "Seca", Default, 28.90, 1);	
		
	
	SELECT * FROM tb_pizza
	WHERE preco > 45
	
	SELECT * FROM tb_pizza
	WHERE preco > 29 AND 60 
	
	SELECT * FROM tb_pizza
	WHERE sabor LIKE "C%"
	
	SELECT * FROM tb_categoria
	INNER JOIN tb_pizza ON tb_categoria.id = tb_pizza.id_pizza
	
	SELECT * FROM tb_categoria
	INNER JOIN tb_pizza ON tb_categoria.massa = "Crocante"
	