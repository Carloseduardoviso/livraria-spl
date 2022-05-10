create database comercio;
use comercio;
CREATE TABLE tb_cliente (  
nr_documento numeric(14,0) NOT NULL,  
nm_cliente character varying(60)  
);  
   
CREATE TABLE tb_compra (  
nr_nota_fiscal numeric(15,0) NOT NULL,  
dt_compra date,  
nr_documento_cliente numeric(14,0)  
);  

CREATE TABLE tb_item_compra (  
nr_nota_fiscal numeric(15,0) NOT NULL,  
nr_referencia integer NOT NULL,  
qt_item smallint DEFAULT 1  
);  

CREATE TABLE tb_produto (  
nr_referencia integer NOT NULL,  
ds_produto character varying(60) NOT NULL,  
vl_venda numeric(15,2)  
);  

ALTER TABLE tb_compra  
ADD CONSTRAINT pk_compra PRIMARY KEY (nr_nota_fiscal);  

ALTER TABLE tb_item_compra  
ADD CONSTRAINT pk_item_compra PRIMARY KEY (nr_nota_fiscal, nr_referencia);  

ALTER TABLE tb_cliente  
ADD CONSTRAINT pk_pessoa PRIMARY KEY (nr_documento);  

ALTER TABLE tb_produto  
ADD CONSTRAINT pk_produto PRIMARY KEY (nr_referencia);  

ALTER TABLE tb_compra  
ADD CONSTRAINT fk_cliente_compra_01 FOREIGN KEY (nr_documento_cliente) REFERENCES tb_cliente(nr_documento);  

ALTER TABLE tb_item_compra  
ADD CONSTRAINT fk_compra_item_compra_01 FOREIGN KEY (nr_nota_fiscal) REFERENCES tb_compra(nr_nota_fiscal);  

ALTER TABLE tb_item_compra  
ADD CONSTRAINT fk_produto_item_compra_01 FOREIGN KEY (nr_referencia) REFERENCES tb_produto(nr_referencia);  

insert into tb_cliente (nr_documento, nm_cliente) values(74727756632, 'Marta Antonia');
insert into tb_cliente (nr_documento, nm_cliente) values(56548986527, 'Antonia Josefina');
insert into tb_cliente (nr_documento, nm_cliente) values(47040567970, 'Adamantina Pereira');
insert into tb_cliente (nr_documento, nm_cliente) values(24348435149, 'Carlos Augusto');
insert into tb_cliente (nr_documento, nm_cliente) values(80987468692, 'Josão Silveira');
insert into tb_cliente (nr_documento, nm_cliente) values(56096344407, 'Maria Eleontina de Castro');
insert into tb_cliente (nr_documento, nm_cliente) values(79056669606, 'Josão da Silva Sauro');
insert into tb_cliente (nr_documento, nm_cliente) values(31887461081, 'Ribamar de Castro');
insert into tb_cliente (nr_documento, nm_cliente) values(45792555043, 'Manoel Bandeira');


insert into tb_produto(nr_referencia, ds_produto, vl_venda) values(1, 'Sapato Velho', 15.00);
insert into tb_produto(nr_referencia, ds_produto, vl_venda) values(2, 'Sapato Novo', 25.00);
insert into tb_produto(nr_referencia, ds_produto, vl_venda) values(3, 'Blusa Velha', 35.00);
insert into tb_produto(nr_referencia, ds_produto, vl_venda) values(4, 'Blusa Nova', 45.00);
insert into tb_produto(nr_referencia, ds_produto, vl_venda) values(5, 'Calça Jeans Velha', 29.50);
insert into tb_produto(nr_referencia, ds_produto, vl_venda) values(6, 'Calça Jeans Nova', 49.50);
insert into tb_produto(nr_referencia, ds_produto, vl_venda) values(7, 'Peruca Masculina', 439.9);
insert into tb_produto(nr_referencia, ds_produto, vl_venda) values(8, 'Camisola', 19.50);

INSERT INTO tb_compra (nr_nota_fiscal, dt_compra, nr_documento_cliente)  
      VALUES (1234567890, now(), 74727756632); 
INSERT INTO tb_compra (nr_nota_fiscal, dt_compra, nr_documento_cliente)  
      VALUES (1122334455, now(), 56096344407);        
   
INSERT INTO tb_item_compra (nr_nota_fiscal, nr_referencia, qt_item)  
      VALUES (1234567890, 6,  2);  
INSERT INTO tb_item_compra (nr_nota_fiscal, nr_referencia, qt_item)  
      VALUES (1234567890, 4,  1);  
INSERT INTO tb_item_compra (nr_nota_fiscal, nr_referencia, qt_item)  
      VALUES (1234567890, 3, 15);  
INSERT INTO tb_item_compra (nr_nota_fiscal, nr_referencia, qt_item)  
      VALUES (1234567890, 2,  2);  
INSERT INTO tb_item_compra (nr_nota_fiscal, nr_referencia, qt_item)  
      VALUES (1122334455, 6,  2);  
INSERT INTO tb_item_compra (nr_nota_fiscal, nr_referencia, qt_item)  
      VALUES (1122334455, 4,  1);  
INSERT INTO tb_item_compra (nr_nota_fiscal, nr_referencia, qt_item)  
      VALUES (1122334455, 3, 15);  
INSERT INTO tb_item_compra (nr_nota_fiscal, nr_referencia, qt_item)  
      VALUES (1122334455, 2,  2);
      
/*
		Exercícios
1) Mostrar o nome dos clientes que fizeram compra.
2) Mostrar o valor total da nota numero 1234567890.
3) Mostrar a descrição dos produtos vendidos.
4) Mostrar quais os produtos que a cliente Maria Eleontina de Castro comprou.
5) Mostrar os produtos da nota 1122334455.
6) Atualizar o preço do produto Sapato Novo em 15%.
7) Inserir um novo cliente.
8) Excluir o cliente que acabou de ser incluído.
*/
