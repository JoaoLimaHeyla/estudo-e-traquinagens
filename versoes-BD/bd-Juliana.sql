Create database SprintTeste;

use SprintTeste;

Create table Empresa (
	idEmpresa int primary key auto_increment,
    nome varchar (50) not null,
    cnpj char (18),
    cep char (8),
    telefone varchar (15),
    email varchar (40) not null
);

Create table Responsavel_Geral (
	idResponsavel int primary key auto_increment,
    nome varchar (40) not null,
    rg char (11),
    cep char(8),
    email varchar (40) not null
);

