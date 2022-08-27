create database sprint11;

use sprint11;

create table Empresa(
	idFiliais int primary key auto_increment,
    empresa varchar(40) default ('TermoMed'),
    CEO varchar(50),
    emailEmpresa varchar(50) default ('termomedAsk@termo.med'),
    cep char(8) default ('12345678'),
	cnpj char(14) default ('12345678901234'),
    telefone char(9) default ('1234-1234') 
);

insert into Empresa (CEO) values
	('Luiz');
    
select * from Empresa;

create table Funcionario(
	idFuncionario int primary key auto_increment,
    nome varchar(40) not null,
    email varchar(40) not null,
    senha varchar(10) not null,
	funcao varchar(20) default ('Depois insiro'),
    constraint chkFuncionario unique(email)
);


select * from Funcionario;