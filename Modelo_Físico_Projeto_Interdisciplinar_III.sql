CREATE DATABASE uber_logistico;

USE uber_logistico;

CREATE TABLE prestadores  -- PRESTADORES
(
	id INT NOT NULL AUTO_INCREMENT, -- A função de "Auto_increment" é ao mesmo tempo "not null".
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

CREATE TABLE clientes -- CLIENTES
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

CREATE TABLE categoria -- CATEGORIA
(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    
    PRIMARY KEY (id),
    
    UNIQUE INDEX (nome), -- A junção de ambos já faz tranforma em "Index" para buscas?
    INDEX (),
    
);

CREATE TABLE ordem_servico -- ORDER DE SERVIÇO -- Devo colocar pontuações?
(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    data_de_inicio DATETIME NOT NULL,  -- Como fica as datas e horários comparado com
    data_de_termino DATETIME NOT NULL, -- modelo conceitual e lógico?
    status_os VARCHAR NOT NULL, -- Pode colocar "status" assim?

    
    PRIMARY KEY (id),
    
    UNIQUE INDEX (nome),
    INDEX (),

    FOREIGN KEY (clientes_id) REFERENCES clientes (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY () REFERENCES  () ON DELETE RESTRICT ON UPDATE RESTRICT,
);

CREATE TABLE forma_pagamento -- FORMA DE PAGAMENTO
(
	id INT NOT NULL AUTO_INCREMENT,
    dinheiro FLOAT NULL,
    credito FLOAT NULL, -- Esse tipo de váriavel está correta?
    debito FLOAT NULL,  -- Quando "null" é permitido, devo colocar?
    pix FLOAT NULL, 
    

    
    PRIMARY KEY (id),
    
    UNIQUE INDEX (nome),

    INDEX (),

    FOREIGN KEY (ordem_servico_id) REFERENCES order_servico (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY () REFERENCES  () ON DELETE RESTRICT ON UPDATE RESTRICT,
);







