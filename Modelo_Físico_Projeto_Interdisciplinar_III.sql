CREATE DATABASE uber_logistico;

USE uber_logistico;

CREATE TABLE prestadores -- PRESTADORES.
(
    id INT NOT NULL AUTO_INCREMENT, 
    nome VARCHAR(80) NOT NULL,
    cpf_cnpj CHAR(14) NOT NULL,
    email VARCHAR(80) NOT NULL,
    senha VARCHAR(32) NOT NULL,
    data_da_inscricao DATETIME NOT NULL,
    descricao VARCHAR(250) NOT NULL,
        
    PRIMARY KEY (id),
    
    INDEX (nome),
    INDEX (data_da_inscricao),
    INDEX (email), 
    INDEX (cpf_cnpj)
    
);

CREATE TABLE clientes -- CLIENTES.
(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    cpf_cnpj CHAR(14) NOT NULL,
    email VARCHAR(80) NOT NULL,
    senha VARCHAR(32) NOT NULL,
    data_da_inscricao DATETIME NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    
    
    PRIMARY KEY (id),
    
    INDEX (nome),
    INDEX (data_da_inscricao),
    INDEX (email), 
    INDEX (cpf_cnpj)
    
);

CREATE TABLE categorias -- CATEGORIAS.
(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    
    PRIMARY KEY (id),
    
    UNIQUE INDEX (nome)
    
);

CREATE TABLE transportes_transbordo -- TIPO DE MODAIS OU TRANSBORDO.
(
    id INT NOT NULL AUTO_INCREMENT,  
    transporte BOOLEAN NULL,        
    transbordo BOOLEAN NULL, 
    tipo_modal VARCHAR(40) NULL,
    descricao VARCHAR(250) NOT NULL,
    categorias_id INT NOT NULL,
    prestadores_id INT NOT NULL,
    
    PRIMARY KEY (id),
    
    INDEX (transporte),
    INDEX (transbordo), 
    INDEX (tipo_modal),

    FOREIGN KEY (categorias_id) REFERENCES categorias (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY (prestadores_id) REFERENCES prestadores (id) ON DELETE RESTRICT ON UPDATE RESTRICT

);

CREATE TABLE avaliacoes -- AVALIAÇÕES.
(
    id INT NOT NULL AUTO_INCREMENT,
    nota ENUM('1', '2', '3', '4', '5', '6', '7', '8', '9', '10') NOT NULL,
    comentario VARCHAR(250) NULL,
    clientes_id INT NOT NULL,
    prestadores_id INT NOT NULL,
    
    PRIMARY KEY (id),
    
    INDEX (nota), 
    
    FOREIGN KEY (clientes_id) REFERENCES clientes (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY (prestadores_id) REFERENCES prestadores (id) ON DELETE RESTRICT ON UPDATE RESTRICT

);

CREATE TABLE ordens_servicos -- ORDENS DE SERVIÇOS 
(
    id INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(250) NOT NULL,   
    data_de_inicio DATETIME NOT NULL,  
    data_de_termino DATETIME NOT NULL, 
    status_ ENUM('Aberta', 'Em andamento', 'Pendente', 'Concluída', 'Cancelada', 'Aguardando Peças', 'Aguardando Aprovação', 'Aguardando Pagamento', 'Aguardando Agendamento', 'Rejeitada') NOT NULL,
    clientes_id INT NOT NULL,
    transportes_transbordo_id INT NOT NULL,

    PRIMARY KEY (id),
    
    INDEX (data_de_inicio),
    INDEX (data_de_termino),
    INDEX (status_),

    FOREIGN KEY (clientes_id) REFERENCES clientes (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY (transportes_transbordo_id) REFERENCES transportes_transbordo (id) ON DELETE RESTRICT ON UPDATE RESTRICT
    
);

CREATE TABLE formas_pagamentos -- FORMAS DE PAGAMENTOS.
(
    id INT NOT NULL AUTO_INCREMENT, 
    tipo ENUM('dinheiro', 'credito', 'debito', 'pix') NOT NULL,
    valor FLOAT NOT NULL,
    data_recebimento DATETIME NOT NULL,
    ordens_servicos_id INT NOT NULL,
    
    PRIMARY KEY (id),
    
    INDEX (tipo),
    INDEX (valor),
    INDEX (data_recebimento),
    
    FOREIGN KEY (ordens_servicos_id) REFERENCES ordens_servicos (id) ON DELETE RESTRICT ON UPDATE RESTRICT

);

CREATE TABLE telefones -- TELEFONES.
(
    id INT NOT NULL AUTO_INCREMENT,
    ddd CHAR(2) NOT NULL,
    telefone CHAR(9) NULL, 
    prestadores_id INT NOT NULL,
    clientes_id INT NOT NULL,
    
    PRIMARY KEY (id),
    
    INDEX (telefone),
    INDEX (ddd), 

    FOREIGN KEY (prestadores_id) REFERENCES prestadores (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY (clientes_id) REFERENCES clientes (id) ON DELETE RESTRICT ON UPDATE RESTRICT

);

CREATE TABLE enderecos -- ENDEREÇOS.
(
    id INT NOT NULL AUTO_INCREMENT,
    logradouro VARCHAR(80) NOT NULL,
    bairro VARCHAR(40) NOT NULL,
    municipio VARCHAR(40) NOT NULL,
    uf ENUM('RO', 'AC', 'AM', 'RR', 'PA', 'AP', 'TO', 'MA', 'PI', 'CE', 'RN', 'PB', 'PE', 'AL', 'SE', 'BA', 'MG', 'ES', 'RJ', 'SP', 'PR', 'SC', 'RS', 'MS', 'MT', 'GO', 'DF') NOT NULL,
    cep CHAR(8) NOT NULL,
    complemento VARCHAR(40) NULL,
    prestadores_id INT NOT NULL,
    clientes_id INT NOT NULL,
    
    PRIMARY KEY (id),
    
    INDEX (logradouro),
    INDEX (bairro),
    INDEX (municipio),
    INDEX (uf),
    INDEX (cep),

    FOREIGN KEY (prestadores_id) REFERENCES prestadores (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY (clientes_id) REFERENCES clientes (id) ON DELETE RESTRICT ON UPDATE RESTRICT
    
);
