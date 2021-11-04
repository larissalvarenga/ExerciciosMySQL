create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
	tipo varchar(255),
	vigorBase bigint,
	instrumento varchar(255),
	primary key(id)
);

-- Dados da tb_classe
insert into tb_classe (tipo,vigorBase,instrumento) values ("Guerreiro",3000,"Espada");
insert into tb_classe (tipo,vigorBase,instrumento) values ("Curador",200,"Cajado");
insert into tb_classe (tipo,vigorBase,instrumento) values ("Rei",9000,"Machado");
insert into tb_classe (tipo,vigorBase,instrumento) values ("Sereia",7500,"Espelho mágico");
insert into tb_classe (tipo,vigorBase,instrumento) values ("Fada",3800,"Pó mágico");

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255) not null,
    ataque bigint,
	defesa bigint,
	vigor bigint,
    classe_id bigint,
    
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

-- Dados da tb_personagem
insert into tb_personagem (nome, ataque, defesa, vigor, classe_id) values ("Harry", 8000, 70000, 4560, 1);
insert into tb_personagem (nome, ataque, defesa, vigor, classe_id) values ("Lana", 6000, 7500, 83832, 3);
insert into tb_personagem (nome, ataque, defesa, vigor, classe_id) values ("Arya", 3900, 4000, 4560, 1);
insert into tb_personagem (nome, ataque, defesa, vigor, classe_id) values ("Rey", 1000, 1000, 83000, 4);
insert into tb_personagem (nome, ataque, defesa, vigor, classe_id) values ("Ted", 45000, 600, 8900, 3);
insert into tb_personagem (nome, ataque, defesa, vigor, classe_id) values ("Lord", 10000, 90000, 7800, 2);
insert into tb_personagem (nome, ataque, defesa, vigor, classe_id) values ("Dojo",2300,5600,8292,3);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa > 1000 and defesa < 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe 
on tb_classe.id = tb_personagem.classe_id;

-- select * from tb_personagem where classe_id = 3;