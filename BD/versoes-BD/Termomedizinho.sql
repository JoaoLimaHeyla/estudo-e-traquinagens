CREATE DATABASE TermoMed;
USE TermoMed;

CREATE TABLE Empresa (
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(64) not null,
	email varchar(120) unique,
    senha VARCHAR(32),
    cnpj CHAR(14) unique not null,
    cep CHAR(8),
    cidade VARCHAR(64),
    bairro VARCHAR(64),
    logradouro VARCHAR(64),
    numero INT,
    complemento CHAR(1),
);

CREATE TABLE Funcionario (
	idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(64) not null,
	email varchar(120) unique,
    senha VARCHAR(32),
    Expediente DATETIME,
    cpf CHAR(11) unique,
	cep CHAR(8),
    telefone CHAR(13) unique,
    idEmpresa INT
);

CREATE TABLE Laboratório (
	idLaboratório INT PRIMARY KEY AUTO_iNCREMENT,
    Lote INT default (0) ,
    idInsulina INT PRIMARY KEY AUTO_INCREMENT,
    idFuncionario INT,
    TelFuncionário CHAR(13) unique,
    preco decimal(10,2),
    check(preco > 0),
    
);

CREATE TABLE Sensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
	logTemperatura VARCHAR (150),
    dataHoraLog DATETIME
);
