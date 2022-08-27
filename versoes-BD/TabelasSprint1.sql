-- CRIANDO AS TABELAS --

create database sprint1;
use database sprint1;
create table TermoMED(
    id int primary key auto_increment,
    cliente varchar(80),
    medicamento varchar(50),
    quantidade int,
    lote int
);



create table Fidelização(
    id int primary key auto_increment = 001,
    Cliente varchar(80),
    Medicamento varchar (50),
    DtInscrição date,
    Valor_Mensal decimal(10,2)
);

-- INSERINDO OS DADOS NA TABELA TermoMED e Fidelização E REALIZANDO AS VERIFICAÇÕES --

insert into (cliente, medicamento, quantidade, lote) TermoMED values (
    ('Johnson & Johnson', 'Insulina xpto', 1000, 12345),
    ('Pfizer', 'Vacina xpto', 2000, 54321),
    ('AstraZeneca', 'Remédio xpto', 3000, 15324)
);

insert into (Cliente, Medicamento, DtInscrição, Valor_Mensal) Fidelização values (
    ('Johnson & Johnson','Insulina xpto', 2022/01/15, 2000.00),
    ('Pfizer','Vacina xpto', 2019/05/16, 3000.00),
    ('AstraZeneca', 'Remédio xpto', 2010/07/05, 4500.00)
);

select * from TermoMED;
select * from Fidelização;