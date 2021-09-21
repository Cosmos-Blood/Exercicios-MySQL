create database db_rh;

use db_rh;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(20) not null,
idade int (10) not null,
salario decimal (10,2) not null,
cargo varchar (20) not null,
ativo boolean not null,
primary key(id)
);





INSERT INTO tb_funcionaries (nome, idade, salario, cargo, ativo) values 
("Guilherme", 18, 0, "Jovem Aprendiz", true),
("João", 26, 6500.00, "Supervisor", true),
("Caique", 32, 1200.00, "Assistente", true),
("Rafaela", 22, 4300.00, "Gestora", true),
("Willian", 26, 2500.00, "Analista", true);




select * from tb_funcionaries where salario > 2000.00
select * from tb_funcionaries where salario < 2000.00




update tb_funcionaries set salario = 3500.00 where id = 1;