create database db_pizzaria_guia;

use db_pizzaria_guia;

-- Criando tb_categoria
create table tb_categoria(
	id bigint auto_increment,
    nome varchar(255) not null,
    localidade varchar(255) not null,
    tipo varchar(255) not null,
    
    primary key(id)
);

-- Criando tb_pizza
create table tb_pizza (
	id bigint auto_increment,
    nomePizza varchar(255) not null,
    borda enum('SIM', 'NÃO') not null,
    massa varchar(255) not null,
    tamanho varchar(255) not null,
    preço bigint not null,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

-- Populando tb_categoria
insert into tb_categoria(nome, localidade, tipo) values ("Pizza Hut", "São Paulo", "doce");
insert into tb_categoria(nome, localidade, tipo) values ("Mamma Mia", "Guarulhos", "vegana");
insert into tb_categoria(nome, localidade, tipo) values ("Domino's", "São Paulo", "tradicional");
insert into tb_categoria(nome, localidade, tipo) values ("Braz Elettrica", "Rua Augusta", "tradicional");
insert into tb_categoria(nome, localidade, tipo) values ("Pizza Planet", "São Paulo", "promoção");

-- Populando tb_pizza
insert into tb_pizza(nomePizza, borda, massa, tamanho, preço, categoria_id) values ("Toscana","SIM", "fina", "grande", 35.00,1);
insert into tb_pizza(nomePizza, borda, massa, tamanho, preço, categoria_id) values ("Marguerita","SIM", "média", "média", 40.00,2);
insert into tb_pizza(nomePizza, borda, massa, tamanho, preço, categoria_id) values ("Calabresa","SIM", "grossa", "pequena", 10.00,3);
insert into tb_pizza(nomePizza, borda, massa, tamanho, preço, categoria_id) values ("Calabresa","NÃO", "fina", "grande", 28.00,4);
insert into tb_pizza(nomePizza, borda, massa, tamanho, preço, categoria_id) values ("Moda da Casa","SIM", "fina", "média", 50.00,5);
insert into tb_pizza(nomePizza, borda, massa, tamanho, preço, categoria_id) values ("Portuguesa","NÃO", "grossa", "grande", 55.00,2);
insert into tb_pizza(nomePizza, borda, massa, tamanho, preço, categoria_id) values ("Brigadeiro","SIM", "média", "grande", 70.00,1);
insert into tb_pizza(nomePizza, borda, massa, tamanho, preço, categoria_id) values ("Atum","NÃO", "fina", "pequena", 35.00,2);

select * from tb_pizza where preço > 45.00;

select * from tb_pizza where preço between 29 and 60;

select * from tb_pizza where nomePizza like "%c%";

select tb_categoria.nome, tb_categoria.localidade, tb_categoria.tipo, tb_pizza.nomePizza, tb_pizza.borda, tb_pizza.massa, tb_pizza.tamanho, tb_pizza.preço, tb_pizza.categoria_id  
from tb_pizza inner join tb_categoria 
on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza where categoria_id = 1;