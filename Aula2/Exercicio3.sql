create database db_farmacia_do_povo;

use db_farmacia_do_povo;

-- Criando tb_categoria
create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(255) not null,
    loja varchar(255) not null,
    localidade varchar(255) not null,
    
    primary key (id)
);

-- Criando tb_produto
create table tb_produto(
	id bigint auto_increment,
	produto varchar(255) not null,
    marca varchar(255) not null,
    quantidade int,
    preco bigint not null,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

-- Populando a tb_categoria
insert into tb_categoria(categoria, loja, localidade) values ("Perfumaria", "DrogaRaia", "Centro");
insert into tb_categoria(categoria, loja, localidade) values ("Medicamentos", "Drogasil", "Zona Sul");
insert into tb_categoria(categoria, loja, localidade) values ("Higiene", "Drogaria Endres", "Zona Norte");
insert into tb_categoria(categoria, loja, localidade) values ("Medicamentos", "Drogaria São Paulo", "Centro");
insert into tb_categoria(categoria, loja, localidade) values ("Perfumaria", "Drogaria Tranquilidade", "Zona Leste");

-- Populando a tb_produto
insert into tb_produto(produto, marca, quantidade, preco, categoria_id) values ("Dipirona", "Genérico", 4, 5.50, 1);
insert into tb_produto(produto, marca, quantidade, preco, categoria_id) values ("Fralda", "Pamperso", 10, 40, 2);
insert into tb_produto(produto, marca, quantidade, preco, categoria_id) values ("Buscopan", "Genérico", 3, 10, 4);
insert into tb_produto(produto, marca, quantidade, preco, categoria_id) values ("Barbeador", "Gillete", 6, 27.90, 3);
insert into tb_produto(produto, marca, quantidade, preco, categoria_id) values ("Tinta de cabelo", "Salonline", 1, 55, 5);
insert into tb_produto(produto, marca, quantidade, preco, categoria_id) values ("Termômetro", "XXR", 24, 70.99, 1);
insert into tb_produto(produto, marca, quantidade, preco, categoria_id) values ("Band-aid", "TTTT", 90, 11.90, 4);
insert into tb_produto(produto, marca, quantidade, preco, categoria_id) values ("OTRY", "Genérico", 4, 67.50, 1);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where produto like "%b%";

select tb_produto.produto, tb_produto.marca, tb_produto.quantidade, tb_produto.preco, tb_categoria.categoria, tb_categoria.loja, tb_categoria.localidade, tb_produto.categoria_id
from tb_produto inner join tb_categoria 
on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto where categoria_id = 1;