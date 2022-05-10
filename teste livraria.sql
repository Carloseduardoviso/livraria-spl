create database livraria;
use livraria;

create table livros(
	id_livro varchar(100), 
    isbn varchar(10), 
    titulo varchar(100), 
    ano varchar(4), 
    autor varchar(100)
);
create table cliente(
	id_cliente varchar(1), 
    cpf varchar(100),
    cnpj varchar(100),
    nome varchar(100), 
    email varchar(100),
    tipo char(1)
);
create table editora(
	editora varchar(100),
    nome varchar(50),
    cnpj varchar(14),
    id_livro int not null,
    foreign key (id_livro) references livros(id_livro)
);
create table compra(
	cliente varchar(100), 
    livro varchar(100)
);

insert into livros(id_livros, isbn, titulo, ano, autor) value  ('12122222 ', ' 22', '2222ds ', '2121 ', 'cadu');
insert into cliente(id_cliente, cpf, cnpj, nome, email) value  (' ', ' ', ' ', ' ');
insert into editora(id_editora, nome, cnpj) value  (' ', ' ', ' ', ' ');
insert into compra(id_cliente, id_livro) value  ('I', 'I');