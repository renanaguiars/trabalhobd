CREATE TABLE CLIENTE(
	idcliente Integer primary key not null, 
	nome Varchar2(30) not null, 
	sobrenome Varchar2(30) not null,
	sexo Char(1) not null,
	cpf Varchar2(15) unique not null
);
insert into CLIENTE values(1, 'Renan', 'Aguiar', 'M', '123.456.789-10');
insert into CLIENTE values(2, 'Maria', 'Kuster', 'F', '000.000.000-00');
insert into CLIENTE values(3, 'Lucas', 'Ramos', 'M', '111.111.111-11');
insert into CLIENTE values(4, 'Luana', 'Pires', 'F', '222.333.444-55');
insert into CLIENTE values(5, 'Pedro', 'Fernandes', 'M', '321.555.777-98');

CREATE TABLE TELEFONE(
	idtelefone Integer primary key not null,
	numero Integer,
	tipo Char(1),
	id_cliente Integer,
	foreign key(id_cliente) references CLIENTE(idcliente)
);
insert into TELEFONE values(10, '997469190', 'C');
insert into TELEFONE values(11, '33424875', 'R');
insert into TELEFONE values(12, '997069295', 'C');
insert into TELEFONE values(13, '40028922', 'R');
insert into TELEFONE values(14, '991234567', 'C');

CREATE TABLE CARRO(
	idcarro Integer primary key not null,
	placa Varchar2(9) unique not null, 
	cor Varchar2(20) not null, 
	marca Varchar2(25) not null,
	id_cliente Integer,
	foreign key(id_cliente) references CLIENTE(idcliente)
);
insert into CARRO values(100, 'MTG3526', 'Preto', 'Ferrari');
insert into CARRO values(101, 'PPK1234', 'Branco', 'Lamborghini');
insert into CARRO values(102, 'OSX3738', 'Vermelho', 'Mustang');
insert into CARRO values(103, 'DZN8216', 'Amarelo', 'Fiat');
insert into CARRO values(104, 'MSN3982', 'Prata', 'Volkswagen');

CREATE TABLE VAGA(
	idvaga Integer primary key not null,
	numerovaga Integer unique not null, 
	tamanho Float not null 
);
insert into VAGA values(1,'1', 3.15); 
insert into VAGA values(2,'2', 3.15);
insert into VAGA values(3,'3', 3.15);
insert into VAGA values(4,'4', 3.15);
insert into VAGA values(5,'5', 3.15);

CREATE TABLE OCUPACAO(
	idocupacao Integer primary key not null,
	dataEntrada Date not null, 
	dataSaida Date,
	id_carro Integer,
	id_vaga Integer,
	foreign key(id_carro) references CARRO(idcarro)
	foreign key(id_vaga) references VAGA(idvaga)
); 
insert into OCUPACAO values(1, '01/01/20', '03/01/20');
insert into OCUPACAO values(2, '02/01/20', '04/01/20');
insert into OCUPACAO values(3, '03/01/20', '06/01/20');
insert into OCUPACAO values(4, '05/01/20', '08/01/20');
insert into OCUPACAO values(5, '07/01/20', '10/01/20');