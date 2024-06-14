CREATE DATABASE uber_logistico;

USE uber_logistico;

CREATE TABLE prestadores 
(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    cpf_cnpj CHAR(11) NOT NULL,
    email VARCHAR(80) NOT NULL,
    senha VARCHAR(32) NOT NULL,
    data_da_incricao DATETIME NOT NULL,
    descricao VARCHAR(250) NOT NULL,
        
    PRIMARY KEY (id),
    
    INDEX (nome),
	INDEX (data_da_inscricao)
    INDEX (),
    
);

CREATE TABLE clientes
(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    cpf_cnpj CHAR(11) NOT NULL,
    email VARCHAR(80) NOT NULL,
    senha VARCHAR(32) NOT NULL,
    data_da_incricao DATETIME NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    
    
    PRIMARY KEY (id),
    
    INDEX (nome),
	INDEX (data_da_inscricao)
    INDEX (),
    
);

CREATE TABLE categoria
(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    
    PRIMARY KEY (id),
    
    UNIQUE INDEX (nome),
    INDEX (),
    
);





