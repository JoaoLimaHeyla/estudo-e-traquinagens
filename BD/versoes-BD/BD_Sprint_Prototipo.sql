create database sprint1_BD;

create table Empresa (
	idEmpresa int,
    idFuncionario int primary key,
    CEP char(8),
    CNPJ char (18),
    Tel_Contato char(8),
    email_Contato varchar(50)
);

create table Lote (
	idInsulina int primary key auto_increment,
    NomeInsulina int
);
