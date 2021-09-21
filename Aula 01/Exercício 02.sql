create database db_loja;
use db_loja;

create table tb_produtos (
	id bigint auto_increment,
    marca varchar(20) not null,
    tipo varchar (20) not null,
    preco decimal (5,2) not null,
    validade varchar (10) not null,
    primary key(id)
)



INSERT INTO tb_produtos (marca, tipo, preco, validade) values ("Trakinas", "Biscoito recheado", 8.90, "20/09/2077");
INSERT INTO tb_produtos (marca, tipo, preco, validade) values ("Moça", "Leite condensado", 6.50, "31/02/2022");
INSERT INTO tb_produtos (marca, tipo, preco, validade) values ("Cacau Show", "Chocolates", 99.99, "20/09/2021");
INSERT INTO tb_produtos (marca, tipo, preco, validade) values ("Hershey's", "Chocolates", 4.99, "29/09/2022"); 
INSERT INTO tb_produtos (marca, tipo, preco, validade) values ("Trident", "Chiclete", 2.80, "17/02/2022"); 
INSERT INTO tb_produtos (marca, tipo, preco, validade) values ("Sanguesuga", "Smartphones", 999.00, "10/12/2021");    
INSERT INTO tb_produtos (marca, tipo, preco, validade) values    ("LG", "Televisão", 980.00, "Esgotado");
INSERT INTO tb_produtos (marca, tipo, preco, validade) values ("Positivo", "Computadores", 970.00, "20/09/2033");





SELECT * FROM tb_produtos where preco < 500;
SELECT * FROM tb_produtos where preco > 500;





UPDATE tb_produtos SET preco = 3.20 where id = 5;
	
	
	
	

