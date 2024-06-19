-- Inserts para a tabela clientes
INSERT INTO clientes (nome, cpf_cnpj, email, senha, data_da_inscricao, descricao)
VALUES

('Maria Oliveira', '98765432-00', 'maria.oliveira@email.com', 'Lk4&9dR8#Fg7@zWq2*Xv5%Jk1!Mz6^Yl', '2024-06-16 14:00:00', 'Autônoma precisando de serviço de transporte para expandir seu negócio.'),
('TransCargo Express Ltda.', '12345678000190', 'contato@transcargo.com.br', 'Zp8$Tr7&Qw4#Bc9@Nn5*Jx2!Vd6%Lh3^', '2024-06-16 09:30:00', 'Empresa de transporte de carga buscando autônomos para distribuição local.'),
('Logística Rápida Ltda.', '98765432000121', 'contato@logisticarapida.com', 'Hw3#Xz6&Nn2@Vc9*Kd7%Tr8!Jl5^Zp4$', '2024-06-16 10:15:00', 'Especializada em logística integrada, procuramos parceiros para frete aéreo.'),
('João da Silva', '12345678900', 'joao.silva@email.com', 'Bm5&Qx9#Hv2@Nz6*Yt3%Jw7!Lp1^Rc4$', '2024-06-16 13:15:00', 'Proprietário de pequena empresa buscando transporte de mercadorias.'),
('Transportes Velozes S/A', '55789123000134', 'comercial@transportesvelozes.com', 'Yl2#Wv5&Qd7@Nn9*Xk3%Hp4!Mz6^Tr8$', '2024-06-16 11:00:00', 'Empresa líder em transportes rodoviários, necessitamos de serviços de carga.');

-- Inserts para a tabela prestadores
INSERT INTO prestadores (nome, cpf_cnpj, email, senha, data_da_inscricao, descricao)
VALUES
('Marcos Oliveira', '99988877766', 'marcos.oliveira@email.com', 'Gn8#Kd7@Vw2$Qy9^Xz3%Hp6*Tl1&Rb5!', '2024-06-16 22:00:00', 'Camionista com caminhão próprio disponível para transportes de médio porte.'),
('Ricardo Ferreira', '77788899911', 'ricardo.ferreira@email.com', 'Mz4*Tx3%Vc9&Jp7#Lw6@Qr1^Yd2!Nn8$', '2024-06-17 00:00:00', 'Operador logístico oferecendo serviços de distribuição e logística integrada para empresas.'),
('Ana Souza', '55566677788', 'ana.souza@email.com', 'Rw7&Qk1@Hp5*Jz9#Xv2$Nl6%Td3^Bc8!', '2024-06-16 21:00:00', 'Profissional independente oferecendo serviços de transporte de pequenas cargas.'),
('Global Logistics Solutions Ltda.', '99888777000111', 'contato@glsolutions.com', 'Yd6#Nn8$Jv1*Tp4%Qz3^Lk9&Wb2@Xr7!', '2024-06-16 17:00:00', 'Empresa global de logística procurando parceiros locais para operações de transporte marítimo.'),
('TransCargo Express Ltda.', '12345678000190', 'contato@transcargo.com.br', 'Xk2*Qr4%Nl9#Hp6&Jz7$Vd1@Yt3^Wb8!', '2024-06-16 09:30:00', 'Empresa de transporte de carga buscando autônomos para distribuição local.');

-- Inserts para a tabela avaliacoes
INSERT INTO avaliacoes (nota, comentario, clientes_id, prestadores_id)
VALUES
(8, 'Excelente serviço prestado! Pontualidade e cuidado com a carga foram impressionantes.', 3, 4),
(4, 'Empresa séria e comprometida. Superou minhas expectativas no transporte de equipamentos industriais.', 1, 3),
(10, 'Ótimo atendimento e preço justo. Recomendo para quem precisa de transporte rápido e seguro.', 2, 2),
(8, 'Serviço de transporte marítimo muito eficiente. Minha carga chegou sem problemas.', 5, 1),
(9, 'Cliente muito organizado e claro nas informações. Foi um prazer trabalhar com ele.', 5, 3),
(10, 'Cliente muito compreensível e colaborativo. Facilitou bastante o processo de transporte.', 5, 2),
(5, 'Cliente exigente, mas justo. Foi uma experiência desafiadora e gratificante.', 4, 1),
(7, 'Cliente bastante comunicativa e participativa. Trabalhar com ela foi muito bom.', 2, 2),
(3, 'Transporte de medicamentos sensíveis feito com muita responsabilidade e cuidado.', 4, 2),
(10, 'Entrega de equipamentos industriais realizada dentro do prazo e com toda segurança necessária.', 1, 1);

-- Inserts para a tabela categorias
INSERT INTO categorias (nome, descricao)
VALUES
('Cargas Leves', 'Transporte de cargas leves e pequenas encomendas.'),
('Cargas Médias', 'Transporte de cargas de médio porte.'),
('Cargas Pesadas', 'Transporte de cargas pesadas e de grande volume.'),
('Mudanças', 'Serviços de mudança residencial e comercial.'),
('Perecíveis', 'Transporte de produtos perecíveis com controle de temperatura.'),
('Documentos', 'Entrega de documentos e pequenas correspondências.'),
('Frágeis', 'Transporte de mercadorias frágeis e delicadas.'),
('Expressas', 'Entregas expressas com prazos curtos.'),
('Industrial', 'Transporte de equipamentos e maquinário industrial.'),
('Construção', 'Transporte de materiais de construção.');

-- Inserts para a tabela tranportes_transbordo
INSERT INTO transportes_transbordo (transporte, transbordo, tipo_modal, descricao, categorias_id, prestadores_id)
VALUES
(TRUE, FALSE, 'Rodoviário', 'Transporte rodoviário de cargas leves.', 1, 3),
(TRUE, TRUE, 'Rodoviário', 'Transporte rodoviário de cargas médias.', 5, 2),
(TRUE, TRUE, 'Rodoviário', 'Transporte rodoviário de cargas pesadas.', 2, 3),
(TRUE, TRUE, 'Rodoviário', 'Serviço de mudança rodoviária.', 1, 1),
(TRUE, FALSE, 'Rodoviário', 'Transporte rodoviário de perecíveis.', 5, 2),
(TRUE, FALSE, 'Rodoviário', 'Entrega rodoviária de documentos.', 4, 3),
(TRUE, TRUE, 'Rodoviário', 'Transporte rodoviário de mercadorias frágeis.', 3, 3),
(FALSE, TRUE, 'Fluvial', 'Tranbordo de bags de soja.', 3, 2),
(TRUE, FALSE, 'Rodoviário', 'Transporte rodoviário de equipamentos industriais.', 4, 4),
(TRUE, FALSE, 'Rodoviário', 'Transporte rodoviário de materiais de construção.', 1, 5);

-- Inserts para a tabela ordens_servicos

-- Paramos aqui para concertar

-- INSERT INTO ordens_servicos (descricao, data_de_inicio, data_de_termino, status_, clientes_id, transportes_transbordo_id)
-- VALUES
-- ('Entrega de carga leve', '2023-06-01 10:00:00', '2023-06-02 10:00:00', 'Concluída', 1, 3),
-- ('Transporte de carga média', '2023-06-05 14:30:00', '2023-06-06 14:30:00', 'Concluída', 5, 2),
-- ('Transporte de carga pesada', '2023-06-10 09:45:00', '2023-06-12 09:45:00', 'Em andamento', 2, 3),
-- ('Mudança residencial', '2023-06-15 11:20:00', '2023-06-16 11:20:00', 'Aberta', 1, 1),
-- ('Entrega de produtos perecíveis', '2023-06-20 16:00:00', '2023-06-21 16:00:00', 'Concluída',  5, 2),
-- ('Entrega de documentos', '2023-06-25 08:30:00', '2023-06-25 12:30:00', 'Concluída', 4, 3),
-- ('Transporte de mercadorias frágeis', '2023-07-01 12:15:00', '2023-07-02 12:15:00', 'Aberta', 3, 3),
-- ('Entrega expressa', '2023-07-05 10:45:00', '2023-07-05 18:45:00', 'Concluída', 3, 2),
-- ('Transporte de equipamentos industriais', '2023-07-10 14:00:00', '2023-07-11 14:00:00', 'Em andamento', 4, 4),
-- ('Transporte de materiais de construção', '2023-07-15 09:00:00', '2023-07-16 09:00:00', 'Pendente', 1, 5);

-- Inserts para a tabela formas_pagamentos
INSERT INTO formas_pagamentos (tipo, valor, data_recebimento, ordens_servicos_id)
VALUES
('dinheiro', 150.00, '2023-06-02 10:00:00', 1),
('credito', 300.00, '2023-06-06 14:30:00', 2),
('debito', 500.00, '2023-06-12 09:45:00', 3),
('pix', 250.00, '2023-06-16 11:20:00', 4),
('dinheiro', 100.00, '2023-06-21 16:00:00', 5),
('credito', 50.00, '2023-06-25 12:30:00', 6),
('debito', 75.00, '2023-07-02 12:15:00', 7),
('pix', 200.00, '2023-07-05 18:45:00', 8),
('dinheiro', 400.00, '2023-07-11 14:00:00', 9),
('credito', 350.00, '2023-07-16 09:00:00', 10);

-- Inserts para a tabela telefones
INSERT INTO telefones (ddd, telefone, prestadores_id, clientes_id)
VALUES
('11', '987654321', 1, 1),
('21', '912345678', 2, 2),
('31', '934567890', 3, 3),
('41', '956789012', 4, 4),
('51', '978901234', 5, 5),
('61', '990123456', 6, 6),
('71', '912345678', 7, 7),
('81', '934567890', 8, 8),
('91', '956789012', 9, 9),
('31', '978901234', 10, 10);

-- Inserts para a tabela enderecos
INSERT INTO enderecos (logradouro, bairro, municipio, uf, cep, complemento, prestadores_id, clientes_id)
VALUES
('Rua A', 'Centro', 'São Paulo', 'SP', '01001000', 'Apto 101', 1, 1),
('Rua B', 'Bela Vista', 'Rio de Janeiro', 'RJ', '20020000', 'Casa', 2, 2),
('Avenida C', 'Savassi', 'Belo Horizonte', 'MG', '30130000', 'Loja 2', 3, 3),
('Praça D', 'Centro', 'Curitiba', 'PR', '80040000', 'Bloco A', 4, 4),
('Rua E', 'Menino Deus', 'Porto Alegre', 'RS', '90050000', 'Cobertura', 5, 5),
('Avenida F', 'Asa Sul', 'Brasília', 'DF', '70060000', 'Sala 301', 6, 6),
('Rua G', 'Pituba', 'Salvador', 'BA', '41800000', 'Galpão', 7, 7),
('Rua H', 'Boa Viagem', 'Recife', 'PE', '51020000', 'Piso 2', 8, 8),
('Avenida I', 'Cidade Nova', 'Manaus', 'AM', '69000000', 'Apto 202', 9, 9),
('Rua J', 'Aldeota', 'Fortaleza', 'CE', '60100000', 'Casa 3', 10, 10);



