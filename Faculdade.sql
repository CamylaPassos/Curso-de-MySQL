/* Criar banco de dados */
create database cadastro
default character set utf8
default collate utf8_general_ci;

/* Criar tabela */
create table cliente (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
/* Chave primaria */
primary key (id)
) default charset = utf8;

/* Incerir dado na tabela */
insert into cliente
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Lucival', '1993-07-25', 'M', '89.0', '1.67', 'Brasil'),
('Camyla', '1991-06-03', 'F', '87.0', '1.60', 'Brasil'),
('Maria Antonia', '1963-02-22', 'F', '70.0', '1.70', 'Brasil');

/* Criar uma coluna na tabela (ultimo) - add column 'profissao' varchar(10); */
/* Excluir uma coluna na tabela - drop column 'profissao'; */
/* Criar uma coluna na tabela depois de algo - add column 'profissao' varchar(10) after 'altura'; */
/* Criar uma coluna na tabela antes (primeiro)- add column 'profissao' varchar(10) first; */
/* drop table if exists teste; - para apagar tabela se ela existir */ drop table cliente;

alter table cliente
modify column profissao varchar(20);

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
cargahoraria int unsigned,
totalaulas int unsigned,
ano year default '2021'
) default charset = utf8;

alter table cursos
add column idcursos int first;

alter table cursos
add primary key(idcursos);

INSERT INTO cursos 
VALUES
('1','HTML4','Curso de HTML5', '40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');

update cursos
set nome = 'HTML5'
where idcursos = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcursos = '4';

update cursos
set nome = 'Java', cargahoraria = '40', ano = '2015'
where idcursos = '5'
limit 1;

update cursos
set ano = '2030', cargahoraria = '100'
where ano = '2018';

delete from cursos
where idcursos = '10';



select * from cursos;
select * from gafanhotos;
desc cliente;
describe cursos;
select * from gafanhotos
order by nome desc; /* asc */ 


