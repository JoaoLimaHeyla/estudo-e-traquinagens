create database sprint01;
use sprint01;

create table RegistroTemperatura (
	id int primary key auto_increment,
    temperatura decimal(4,2),
    dtTemperatura datetime
);

insert into  RegistroTemperatura values
(null,27.07,'2022-08-24');

select*from  RegistroTemperatura;

create table empresaCliente(
	id int primary key auto_increment,
    nomeEmpresa varchar(50),
    ramoEmpresa varchar(50), constraint chkRamoEmpresa check
			(RamoEmpresa in('hospitalar','farmaceutica','clinica medica')),
    cnpj char(18),
    cep char(8),
	email varchar(50),
    telefone varchar(15),
    responsavelEmpresa varchar(40),
    dtSolicitaçaoServiço date
    
);

insert into empresaCliente values
(null,'SUS','hospitalar','123456781','08420190','sus.saude@hotail.com','(11)99024-1020','Heitor da Silva','2022-08-15');

select*from empresaCliente;

select concat('A empresa ',nomeEmpresa,' solicitou nossos serviços em ',dtSolicitaçaoServiço) as frase from empresaCliente;