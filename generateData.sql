-- INSERCAO DE DADOS

-- POVOANDO ENDERECO
INSERT INTO Endereco (cep, estado, cidade, bairro, rua) VALUES 
('50740-120', 'Pernambuco', 'Recife', 'Várzea', 'Rua Emetério Maciel'),
('50100-400', 'Pernambuco', 'Recife', 'Santo Amaro', 'Rua Abelardo Luz'),
('50690-665', 'Pernambuco', 'Recife', 'Iputinga', 'Rua Abreulândia'),
('51111-100', 'Pernambuco', 'Recife', 'Boa Viagem', 'Av. Conselheiro Aguiar'),
('53120-120', 'Pernambuco', 'Olinda', 'Carmo', 'Rua da Bertioga'),
('53437-750', 'Pernambuco', 'Paulista', 'Janga', 'Rua Poeta João Neves'),
('54420-331', 'Pernambuco', 'Jaboatão dos Guararapes', 'Candeias', 'Rua Maria Digna Gameiro'),
('54768-190', 'Pernambuco', 'Camaragibe', 'Timbi', 'Rua Indianópolis'),
('54759-580', 'Pernambuco', 'Camaragibe', 'Vila da Fábrica', 'Rua Antônio de Albuquerque'),
('54522-090', 'Pernambuco', 'Cabo de Santo Agostinho', 'Paiva', 'Rua dos Tamarindos'),
('53427-150', 'Pernambuco', 'Paulista', 'Maria Farinha', 'Rua S Freitas'),
('58046-510', 'Paraíba', 'João Pessoa', 'Portal do Sol', 'Rua Hermano Ferreira Soares'),
('59112-590', 'Rio Grande do Norte', 'Natal', 'Potengi', 'Rua Natividade'),
('60110-250', 'Ceará', 'Fortaleza', 'Centro', 'Rua Petencoste'),
('57036-100', 'Alagoas', 'Maceió', 'Jatiúca', 'Rua Deoclécio Barreto'),
('49015-190', 'Sergipe', 'Aracaju', 'Centro', 'Rua Santa Luzia'),
('41760-110', 'Bahia', 'Salvador', 'Costa Azul', 'Rua Prof. Cassilandro Barbuda'),
('44255-000', 'Bahia', 'Irará', 'Vila', 'Rua Alberto Nogueira'),
('65071-390', 'Maranhão', 'São Luís', 'Calhau', 'Av. dos Sambaquis'),
('64014-075', 'Piauí', 'Teresina', 'Piçarra', 'Rua Jarbas Martins'),
('51021-010', 'Pernambuco', 'Recife', 'Boa Viagem', 'Av. Boa Viagem'),
('53270-040', 'Pernambuco', 'Olinda', 'Bairro Novo', 'Rua dos Palmares'),
('54400-100', 'Pernambuco', 'Jaboatão dos Guararapes', 'Piedade', 'Av. Bernardo Vieira de Melo'),
('54759-230', 'Pernambuco', 'Camaragibe', 'São Benedito', 'Rua Dr. Anthenor Cunha'),
('54505-060', 'Pernambuco', 'Cabo de Santo Agostinho', 'Centro', 'Rua 15 de Novembro'),
('58400-400', 'Paraíba', 'Campina Grande', 'São José', 'Rua Almeida Barreto'),
('59614-360', 'Rio Grande do Norte', 'Mossoró', 'Abolição', 'Av. João da Escóssia'),
('61625-260', 'Ceará', 'Caucaia', 'Iparana', 'Rua João XXIII'),
('57303-470', 'Alagoas', 'Arapiraca', 'Brasília', 'Rua Manoel Gomes da Silva'),
('49500-000', 'Sergipe', 'Itabaiana', 'São Cristóvão', 'Rua São Francisco'),
('44076-015', 'Bahia', 'Feira de Santana', 'Pampalona', 'Rua Pintassilgo'),
('45075-010', 'Bahia', 'Vitória da Conquista', 'Ibirapuera', 'Rua dos Pardais'),
('67140-360', 'Maranhão', 'São José de Ribamar', 'São Raimundo', 'Rua Padre Newton'),
('64202-150', 'Piauí', 'Parnaíba', 'São Vicente', 'Rua Tutoia'),
('64811-190', 'Piauí', 'Floriano', 'Vila Mocambinho', 'Rua Treze de Maio'),
('64049-570', 'Piauí', 'Teresina', 'Jóquei', 'Rua João Goulart'),
('64606-365', 'Piauí', 'Picos', 'Morada Nova', 'Rua Mário Coelho'),
('64280-380', 'Piauí', 'Campo Maior', 'Santa Cruz', 'Rua José Pires'),
('64120-000', 'Piauí', 'União', 'São João', 'Rua 13 de Maio');

-- POVOANDO PARTICIPANTE
INSERT INTO Participante (cpf, nome, email, telefone, cep) VALUES
('34934945482', 'João Matheus', 'joaomatt@gmail.com', '(81) 98611-5078', '50740-120'),
('57954819477', 'Victoria Luiza', 'vlpl@gmail.com', '(81) 98366-5861', '54522-090'),
('30291986420', 'Maria Oliveria', 'maos3@gmail.com', '(81) 98539-1238', '53120-120'),
('76515414480', 'Rodrigo Dollharmen', 'dollshow@gmail.com', '(81) 96744-6827', '50100-400'),
('51715625471', 'Joanne Germanotta', 'tiajoanne@outlook.com.br', '(81) 97432-7541', '54768-190'),
('94974915495', 'Ikaro Falco', 'ikarusfall@gmail.com', '(81) 98234-8734', '53437-750'),
('90533343356', 'Charlie Xavier', 'charlixcx@yahoo.com', '(85) 96841-4194', '60110-250'),
('23322076431', 'Gustavo Acir', 'acervoguto@gmail.com', '(84) 98152-3884', '59112-590'),
('95501849437', 'Eduarda Bittencourt', 'dudabeat@gmail.com', '(81) 99762-1814', '54522-090'),
('28824388426', 'Felipe Moraes', 'felipeyou@hotmail.com', '(81) 98474-0853', '54759-580'),
('50998999431', 'Tiago Moraes', 'omoraes@gmail.com', '(81) 97921-2317', '53427-150'),
('35326274426', 'Thiago Venâncio', 'ovenancio@hotmail.com', '(81) 99873-8612', '54420-331'),
('30706092449', 'João Melo', 'jvmb2@gmail.com', '(81) 98968-3234', '50740-120'),
('01382270470', 'Erick Dolfer', 'doutoraerick@outlook.com', '(81) 98719-5664', '51111-100'),
('53839259452', 'Ernesto Guimarães', 'ernestyuxui@gmail.com', '(81) 97446-9313', '54768-190'),
('08342995429', 'Fernanda dos Santos', 'fernandafmlpwr@hotmail.com', '(81) 98125-1001', '53427-150'),
('26918297406', 'Adenilton Cabaral', 'adenys@gmail.com', '(81) 98875-3422', '50690-665'),
('96578608494', 'Maria Heloísa', 'helomaria@yahoo.com.br', '(81) 98333-0777', '54420-331'),
('11121530397', 'Paulo Gustavo', 'donaherminia@gmail.com', '(85) 97135-7887', '60110-250'),
('16677684415', 'Luan Carvalho', 'murdercasa@outlook.com', '(83) 98271-7352', '58046-510'),
('86943630385', 'Clotilde dos Anjos', 'angeldown@gmail.com', '(86) 97478-1145', '64014-075'),
('28831620347','Filipe da Cruz', 'cruznapassarela@outlook.com', '(98) 97358-2802', '65071-390'),
('51359753575', 'Thomas Riso', 'smileatall@gmail.com', '(75) 99525-7349','44255-000'),
('37084430555','Anjolina de Souza', 'upangel@outlook.com.br', '(73) 98571-8718','41760-110'),
('89916311501', 'Tarcisio dos Amores', 'tarcylove@gmail.com', '(79) 99579-9245','49015-190'),
('76142319452','Paula Borborema','borbopaula@gmail.com','(82) 97321-7358','57036-100'),
('12345678901', 'Luciana Silva', 'lucianasilva@gmail.com', '(81) 98765-4321', '50740-120'),
('23456789012', 'Henrique Oliveira', 'henrique@gmail.com', '(81) 97654-3210', '54522-090'),
('34567890123', 'Amanda Souza', 'amanda_souza@hotmail.com', '(81) 96543-2109', '53120-120'),
('45678901234', 'Pedro Santos', 'pedro.santos@yahoo.com.br', '(81) 95432-1098', '50100-400'),
('56789012345', 'Laura Costa', 'lauracosta@gmail.com', '(81) 94321-0987', '54768-190'),
('67890123456', 'Carlos Lima', 'carloslima@gmail.com', '(83) 98765-4321', '58046-510'),
('78901234567', 'Ana Oliveira', 'ana.oliveira@hotmail.com', '(83) 97654-3210', '59112-590'),
('89012345678', 'Gabriel Rodrigues', 'gabrielr@yahoo.com.br', '(83) 96543-2109', '60110-250'),
('90123456789', 'Mariana Alves', 'mariana_alves@gmail.com', '(83) 95432-1098', '57036-100'),
('01234567890', 'José Pereira', 'josepereira@yahoo.com.br', '(83) 94321-0987', '49015-190'),
('11223344556', 'Raquel Nunes', 'raquel_nunes@gmail.com', '(84) 98765-4321', '59112-590'),
('22446688112', 'Lucas Costa', 'lucas_c@hotmail.com', '(84) 97654-3210', '58046-510'),
('33669944778', 'Lívia Fernandes', 'liviaf@yahoo.com.br', '(84) 96543-2109', '59112-590'),
('44882200534', 'Felipe Mendes', 'felipem@gmail.com', '(84) 95432-1098', '59112-590'),
('55005533201', 'Juliana Oliveira', 'juliana.o@gmail.com', '(84) 94321-0987', '58046-510'),
('66112233445', 'Lucas Lima', 'lucas_lima@gmail.com', '(85) 98765-4321', '60110-250'),
('77223344556', 'Carla Mendonça', 'carla_mendonca@hotmail.com', '(85) 97654-3210', '53270-040'),
('88334455667', 'Ricardo Santos', 'ricardo.santos@yahoo.com.br', '(85) 96543-2109', '54400-100'),
('99445566778', 'Aline Rocha', 'aline_r@yahoo.com.br', '(85) 95432-1098', '54759-230'),
('10556677889', 'Roberto Almeida', 'roberto.almeida@gmail.com', '(85) 94321-0987', '54505-060'),
('11667788990', 'Fernando Oliveira', 'fernando_o@hotmail.com', '(82) 98765-4321', '57036-100'),
('22778899011', 'Mariana Santos', 'mariana.s@hotmail.com', '(82) 97654-3210', '57303-470'),
('33889901122', 'Eduardo Lima', 'eduardo.l@yahoo.com.br', '(82) 96543-2109', '41760-110'),
('44990011233', 'Camila Alves', 'camila_alves@gmail.com', '(82) 95432-1098', '49500-000');

-- POVOANDO ORGANIZADOR
INSERT INTO Organizador(cpf_participante, cargo, departamento, cpf_supervisor) VALUES 
('96578608494', 'Supervisor', 'Tecnologia', NULL),
('50998999431', 'Supervisor', 'Comunicação', NULL),
('23322076431', 'Supervisor', 'Infraestrutura', NULL),
-- supervisionados por 96578608494 (Maria Heloísa)
('28824388426', 'Desenvolvedor Full Stack', 'Tecnologia', '96578608494'),
('51715625471', 'Gerente de Banco de Dados', 'Tecnologia', '96578608494'),
('51359753575', 'Designer UX/UI', 'Tecnologia', '96578608494'),
('22778899011', 'Gerente de QA', 'Tecnologia', '96578608494'),
--supervisionados por 50998999431 (Tiago Moraes)
('95501849437', 'Jornalista', 'Comunicação', '50998999431'),
('53839259452', 'Publicitário', 'Comunicação', '50998999431'),
('94974915495', 'Gerente de parcerias', 'Comunicação', '50998999431'),
('67890123456', 'Social Media', 'Comunicação', '50998999431'),
--supervisionados por 23322076431 (Gustavo Acir)
('34934945482', 'Vistoria de palco', 'Infraestrutura', '23322076431'),
('57954819477', 'Gerência de estande', 'Infraestrutura', '23322076431'),
('86943630385', 'Alocação de atividades', 'Infraestrutura', '23322076431'),
('76142319452', 'Direcionamento de produtos', 'Infraestrutura', '23322076431');

-- POVOANDO PALESTRANTE
INSERT INTO Palestrante(cpf_participante, empresa_vinculo) VALUES 
('23456789012', 'Tempest'),
('33889901122', 'NeuroTech'),
('44990011233', 'Avanade'),
('11223344556', 'Visagio'),
('56789012345', 'Insole'),
('26918297406', 'Cesar'),
('44882200534', 'Cesar'),
('16677684415', 'Loomi'),
('10556677889', 'CIn - UFPE'),
('99445566778', 'Liferay');

-- POVOANDO OUVINTE
INSERT INTO Ouvinte(cpf_participante, numero_do_ingresso) VALUES 
('30706092449', 387462938472981),
('11121530397', 129837465019283),
('11667788990', 948572610374584),
('90533343356', 765193847562137),
('30291986420', 312947856109438),
('34934945482', 674859321047659), 
('76142319452', 509387462813579), 
('37084430555', 283746591074286), 
('12345678901', 194857263948573), 
('67890123456', 938472819283746), 
('90123456789', 837465019283745), 
('50998999431', 572610374584937), 
('89012345678', 193847562137465), 
('28824388426', 947856109438572), 
('51359753575', 859321047659387), 
('89916311501', 387462813579462), 
('26918297406', 746591074286938), 
('53839259452', 857263948573194), 
('77223344556', 472938472981837), 
('28831620347', 746501928374657), 
('08342995429', 847562137465193), 
('88334455667', 856109438572947), 
('56789012345', 321047659387859), 
('78901234567', 462813579462387),
('33889901122', 591074286938746),
('01382270470', 938472938472938),
('22778899011', 472938472981837);

-- POVOANDO PRODUTO
INSERT INTO Produto VALUES (38746293, 'Camiseta C''In''Play', 29.99, 'Vestuário', 100);
INSERT INTO Produto VALUES (12983746, 'Boné C''In''Play', 19.99, 'Acessórios', 75);
-- Produtos de estandes de Tecnologia
INSERT INTO Produto VALUES (94857261, 'Fone de Ouvido Bluetooth', 39.99, 'Áudio', 50);
INSERT INTO Produto VALUES (76519384, 'Fone de Ouvido com Fio', 19.99, 'Áudio', 30);
INSERT INTO Produto VALUES (31294785, 'Power Bank 10000mAh', 29.99, 'Utilitários', 40);
INSERT INTO Produto VALUES (67485932, 'Mouse sem Fio', 24.99, 'Periféricos', 25);
INSERT INTO Produto VALUES (50938746, 'Teclado Mecânico', 59.99, 'Periféricos', 20);
-- Produtos de Cultura pop
INSERT INTO Produto VALUES (28374659, 'Quadrinho Marvel: Homem-Aranha #1', 12.99, 'Quadrinhos', 50);
INSERT INTO Produto VALUES (19485726, 'Mangá Naruto Vol. 1', 9.99, 'Mangás', 40);
INSERT INTO Produto VALUES (93847281, 'Blu-ray Avengers: Endgame', 24.99, 'Filmes', 30);
INSERT INTO Produto VALUES (83746501, 'DVD Stranger Things - Temporada 1', 19.99, 'Séries', 25);
INSERT INTO Produto VALUES (57261037, 'Action Figure Star Wars: Darth Vader', 34.99, 'Colecionáveis', 20);
INSERT INTO Produto VALUES (19384756, 'Caneca com Logo do Batman', 12.99, 'Acessórios', 35);
-- Produtos de Arte e Design
INSERT INTO Produto VALUES (94785610, 'Pintura em Aquarela "Amanhecer"', 49.99, 'Arte', 15);
INSERT INTO Produto VALUES (85932104, 'Escultura Abstrata em Madeira', 79.99, 'Design', 10);
INSERT INTO Produto VALUES (38746281, 'Poster Starry Night - Versão Star Wars', 14.99, 'Arte', 30);
INSERT INTO Produto VALUES (74659107, 'Print Canvas Batman: O Cavaleiro das Trevas', 39.99, 'Design', 20);
INSERT INTO Produto VALUES (85726394, 'Curso Online de Design Gráfico', 59.99, 'Curso', 25);
-- Produtos de Educação e conhecimento
INSERT INTO Produto VALUES (47293847, 'Livro: "A Era da Informação"', 29.99, 'Livro', 60);
INSERT INTO Produto VALUES (74650192, 'Livro: "Design de Jogos: Teoria e Prática"', 39.99, 'Livro', 45);
INSERT INTO Produto VALUES (61037458, 'Livro: "Introdução à Animação Digital"', 27.99, 'Livro', 55);
INSERT INTO Produto VALUES (84756213, 'Livro: "Desenvolvimento Web Moderno"', 34.99, 'Livro', 50);
INSERT INTO Produto VALUES (85610943, 'Enciclopédia de Tecnologia e Inovação', 49.99, 'Livro', 30);
INSERT INTO Produto VALUES (32104765, 'Dicionário de Termos de Tecnologia', 19.99, 'Livro', 70);
