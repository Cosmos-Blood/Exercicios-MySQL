CREATE DATABASE db_escola;
use db_escola;

create table tb_alunes (
id bigint auto_increment not null,
nome varchar (20) not null,
idade int (10) not null,
notas decimal (10.00) not null,
primary key (id)
);


INSERT INTO tb_alunes (nome, idade, notas) values 
("Guilherme", 18, 0.1),
("Pedro", 14, 2.2),
("Leila", 17, 7.2),
("Sofia", 15, 10.0),
("Kamila", 14, 5.0),
("Leandro", 14, 6.5),
("Rafael", 18, 0.1),
("Yuri", 14, 3.2);



select * from tb_alunes where notas > 7;
select * from tb_alunes where notas < 7;


UPDATE tb_alunes SET notas = 9.2 where id = 1;