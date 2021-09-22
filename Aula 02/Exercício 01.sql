CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
	CREATE TABLE tb_classe (
		id BIGINT AUTO_INCREMENT,
        mago BOOLEAN NOT NULL,
        guerreiro BOOLEAN NOT NULL,
        tank BOOLEAN NOT NULL,
        PRIMARY KEY(id)
    );
	
	USE db_generation_game_online;
	CREATE TABLE tb_personagem (
    nome VARCHAR(25) NOT NULL,
    novato BOOLEAN NOT NULL,
    clan VARCHAR(25) DEFAULT "Não possui",
    ataque BIGINT NOT NULL,
    DEFESA BIGINT NOT NULL,
    id_player BIGINT,
    FOREIGN KEY (id_player) REFERENCES tb_classe(id)
    );
	
	INSERT INTO tb_classe (mago, guerreiro, tank) VALUES
	(true, true, false),
    (false, false, true),
    (false, true, false),
    (false, false, true),
    (false, true, true),
    (true, true, true),
    (false, false, true),
    (false, false, true);

	
	INSERT INTO tb_personagem (nome, novato, clan, ataque, DEFESA) VALUES 
	("Zoraten", true, "default", 20, 30),
    ("Snow", false, "W Beater", 7, 6745),
    ("Cruli", true, "default", 612, 224),
    ("CaiaC", false, "W Beater", 223, 5438),
    ("DanteDmC", false, "Tribo", 1220, 1630),
    ("XxNinjaSuperHyperbolexX", false, "BrAjudandoBR", 6450, 9857),
    ("Dilminha", true, "Presidenta", 1, 1),
    ("Bolsonaryo", true, "Presidento", 1, 1);
	
	
	SELECT * FROM tb_personagem WHERE ataque > 2000
	SELECT * FROM tb_personagem WHERE DEFESA > 1000 AND DEFESA < 2000
	
	
	SELECT * FROM tb_personagem WHERE nome like "%c%"
	
	
	SELECT * FROM tb_personagem 
INNER JOIN tb_classe ON tb_personagem.id_player = tb_classe.id;
	
	
	SELECT id, tank FROM tb_classe WHERE tank = true