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

-- POVOANDO ESTANDE
INSERT INTO Estande (id_estande, categoria, nome) VALUES
-- Estandes gerais do C'In'Play
    (696137, 'Geral', 'Estande do C''In''Play'),
    -- Estandes de Tecnologia e Entretenimento
    (387462, 'Tecnologia e Entretenimento', 'Mundo da Tecnologia'),
    (129837, 'Tecnologia e Entretenimento', 'Inovação Digital'),
    (948572, 'Tecnologia e Entretenimento', 'EntretenTech'),
    (765193, 'Tecnologia e Entretenimento', 'Futuro Interativo'),
    (312947, 'Tecnologia e Entretenimento', 'Realidade Virtual Inc.'),
    (674859, 'Tecnologia e Entretenimento', 'Jogos Eletrônicos Express'),
    (509387, 'Tecnologia e Entretenimento', 'Espaço Gadget'),
    (283746, 'Tecnologia e Entretenimento', 'Cinema 4D Zone'),
    (194857, 'Tecnologia e Entretenimento', 'Robótica Inovadora'),
    (938472, 'Tecnologia e Entretenimento', 'Inovação em Entretenimento'),
    (837465, 'Tecnologia e Entretenimento', 'Fábrica de Ideias Tech'),
    (572610, 'Tecnologia e Entretenimento', 'Mundo Geek & Tech'),
    -- Estandes de Cultura Pop
    (193847, 'Cultura Pop', 'Universo dos Quadrinhos'),
    (947856, 'Cultura Pop', 'Mundo dos Mangás'),
    (859321, 'Cultura Pop', 'Heróis em Ação'),
    (746591, 'Cultura Pop', 'Aventuras em Quadrinhos'),
    (857263, 'Cultura Pop', 'Mangá Mania'),
    (472938, 'Cultura Pop', 'Superpoderes Ilustrados'),
    (746501, 'Cultura Pop', 'Comics & More'),
    (610374, 'Cultura Pop', 'Aventuras Mangá'),
    (847562, 'Cultura Pop', 'Fantasia em Quadrinhos'),
    (856109, 'Cultura Pop', 'Mangá Express'),
    (321047, 'Cultura Pop', 'Universo Pop em HQ'),
    (462813, 'Cultura Pop', 'Mundo Geek em Quadrinhos'),
    -- Estandes de Arte e Design
    (591074, 'Arte e Design', 'Estúdio de Arte Moderna'),
    (263948, 'Arte e Design', 'Design Contemporâneo'),
    (293847, 'Arte e Design', 'Pinturas e Esculturas'),
    (465019, 'Arte e Design', 'Expressões Artísticas'),
    (761037, 'Arte e Design', 'Criações Visuais'),
    (819283, 'Arte e Design', 'Design Inovador'),
    (374584, 'Arte e Design', 'Galeria de Arte'),
    (562137, 'Arte e Design', 'Criações Abstratas'),
    (109438, 'Arte e Design', 'Design Inspirador'),
    (321047, 'Arte e Design', 'Arte Contemporânea'),
    (813579, 'Arte e Design', 'Paisagens Criativas'),
    (742869, 'Arte e Design', 'Estilo Artístico'),
    -- Estandes de Educação e Conhecimento
    (19283, 'Educação e Conhecimento', 'Centro de Aprendizagem'),
    (584937, 'Educação e Conhecimento', 'Sala de Conhecimento'),
    (137465, 'Educação e Conhecimento', 'Instituto Educacional'),
    (438572, 'Educação e Conhecimento', 'Universidade do Saber'),
    (659387, 'Educação e Conhecimento', 'Espaço do Conhecimento'),
    (579462, 'Educação e Conhecimento', 'Aprender é Viver'),
    (286938, 'Educação e Conhecimento', 'Cursos Inovadores'),
    (573194, 'Educação e Conhecimento', 'Conhecimento em Ação'),
    (981837, 'Educação e Conhecimento', 'Escola do Futuro'),
    (374657, 'Educação e Conhecimento', 'Saber e Crescer'),
    (937261, 'Educação e Conhecimento', 'Descobertas Educativas'),
    (465193, 'Educação e Conhecimento', 'Rumo ao Saber'),
    -- Estandes de Atividades Interativas
    (438572, 'Atividades Interativas', 'Zona Interativa'),
    (387859, 'Atividades Interativas', 'Experiências em Ação'),
    (579462, 'Atividades Interativas', 'Tech Playground'),
    (948573, 'Atividades Interativas', 'Jogos do Futuro'),
    (194857, 'Atividades Interativas', 'Mundo Interativo'),
    (837465, 'Atividades Interativas', 'Inovações Lúdicas'),
    (572610, 'Atividades Interativas', 'Aventuras Virtuais'),
    (610374, 'Atividades Interativas', 'Zona dos Drones');

INSERT INTO Atividade (id_atividade, nome, categoria, capacidade) VALUES
    --ATIVIDADES DE TECNOLOGIA E ENTRETENIMENTO
    (3874629, 'Oficina de Realidade Virtual', 'Tecnologia e Entretenimento', 20),
    (1298374, 'Competição de Jogos Eletrônicos', 'Tecnologia e Entretenimento', 25),
    (9485726, 'Apresentação de Inovações em Tech', 'Tecnologia e Entretenimento', 20),
    (7651938, 'Simulador de Voo 4D', 'Tecnologia e Entretenimento', 14),
    (3129478, 'Experiência de Realidade Aumentada', 'Tecnologia e Entretenimento', 10),
    (6748593, 'Quiz Geek: Teste Seu Conhecimento', 'Tecnologia e Entretenimento', 18),
    
    --ATIVIDADES DE CULTURA POP
    (5093874, 'Desfile Cosplay', 'Cultura Pop', 23),
    (2837465, 'Quiz de Quadrinhos e Mangás', 'Cultura Pop', 12),
    (1948572, 'Sessão de Autógrafos com Artista', 'Cultura Pop', 19),
    (9384728, 'Workshop de Desenho Mangá', 'Cultura Pop', 21),
    (8374650, 'Leitura Dramática de Quadrinhos', 'Cultura Pop', 20),
    (5726103, 'Concurso de Fanart', 'Cultura Pop', 17),
    
    --ATIVIDADES DE ARTE E DESIGN
    (1938475, 'Live Painting: Criação ao Vivo', 'Arte e Design', 15),
    (9478561, 'Workshop de Escultura', 'Arte e Design', 20),
    (8593210, 'Exposição de Arte Contemporânea', 'Arte e Design', 27),
    (3874628, 'Palestra sobre Design Inovador', 'Arte e Design', 21),
    (7465910, 'Concurso de Pintura Rápida', 'Arte e Design', 25),
    (8572639, 'Experiência em Realidade Virtual Artística', 'Arte e Design', 10),
    
    --ATIVIDADES DE EDUCAÇÃO E CONHECIMENTO
    (4729384, 'Palestra: Inovações na Educação', 'Educação e Conhecimento', 20),
    (7465019, 'Workshop de Desenvolvimento Pessoal', 'Educação e Conhecimento', 23),
    (6103745, 'Demonstração de Experimentos Científicos', 'Educação e Conhecimento', 21),
    (8475621, 'Curso Rápido de Programação', 'Educação e Conhecimento', 23),
    (8561094, 'Sessão de Contação de Histórias', 'Educação e Conhecimento', 15),
    (3210476, 'Espaço de Debate: Tendências Educacionais', 'Educação e Conhecimento', 13),
    
    --ATIVIDADES DE ATIVIDADES INTERATIVAS
    (4628135, 'Labirinto Virtual', 'Atividades Interativas', 15),
    (5910742, 'Caça ao Tesouro Interativa', 'Atividades Interativas', 23),
    (2639485, 'Jogo de Realidade Alternativa', 'Atividades Interativas', 25),
    (2938476, 'Estúdio de Fotografia Interativa', 'Atividades Interativas', 20),
    (4650192, 'Simulação de Ambiente Espacial', 'Atividades Interativas', 10),
    (7610374, 'Experiência de Jogo em Grupo', 'Atividades Interativas', 25);

INSERT INTO LocalEvento(id_local, geolocalizacao, nome, capacidade) VALUES
    (123, '-8.060039281442343, -34.87009954648337', 'Cais do Sertão', 500),
    (321, '-8.062465105915596, -34.87086439802587', 'Centro de Artesanato', 300),
    (783, '-8.058430611618816, -34.87028979438143', 'Moinho', 200),
    (983, '-8.059687951354022, -34.87248273033102', 'Cesar School', 400),
    (343, '-8.060453026527536, -34.87198721705985', 'Apolo 235', 150),
    (926, '-8.061366617867543, -34.87163863051441', 'Paço do Frevo', 350),
    (482, '-8.061664249917577, -34.87186672923007', 'SOFTEX Recife', 250),
    (298, '-8.062657803028308, -34.87320498880049', 'ETE Porto Digital', 450),
    (532, '-8.06496555883409, -34.87370051960102', 'Babylon Station', 100),
    (912, '-8.065279371367714, -34.873522732390576', 'Livraria Jaqueira', 80),
    (439, '-8.064273627791707, -34.87227855868209', 'Insole', 220),
    (121, '-8.063102220491071, -34.87392490573505', 'Cinema do Porto Digital', 320), 
    (218, '-8.063834721071009, -34.871483925535266', 'Accenture - Armazém 12', 270),
    (764, '-8.062996717593679, -34.873333734247254', 'TI Saúde', 180),
    (230, '-8.06151938006917, -34.87244781564648', 'Teatro Apolo', 500);

-- POVOANDO COMPRA
INSERT INTO Compra (cpf_participante, id_produto, id_estande) VALUES 
    ('34934945482', 94857261, 387462),
    ('57954819477', 76519384, 129837),
    ('30291986420', 31294785, 674859),
    ('28831620347', 50938746, 312947),
    ('51359753575', 76519384, 674859),
    ('37084430555', 94857261, 283746),
    ('76515414480', 28374659, 193847),
    ('51715625471', 19485726, 947856),
    ('94974915495', 57261037, 746591),
    ('89916311501', 57261037, 193847),
    ('76142319452', 28374659, 746501),
    ('86943630385', 74659107, 819283),
    ('90533343356', 94785610, 591074),
    ('23322076431', 85932104, 263948),
    ('95501849437', 38746281, 819283),
    ('28831620347', 74659107, 819283),
    ('51359753575', 85726394, 109438),
    ('37084430555', 85932104, 263948),
    ('28824388426', 47293847, 019283),
    ('50998999431', 74650192, 584937),
    ('35326274426', 61037458, 137465),
    ('89916311501', 61037458, 137465),
    ('76142319452', 74650192, 438572),
    ('86943630385', 47293847, 019283),
    ('86943630385', 12983746, 438572),
    ('89916311501', 38746293, 194857),
    ('76142319452', 12983746, 948573),
    ('28831620347', 38746293, 579462),
    ('51359753575', 12983746, 572610),
    ('37084430555', 38746293, 572610);

-- POVOANDO RESERVA
INSERT INTO Reserva (cpf_organizador, geolocalizacao_local, id_atividade, data_alocacao) VALUES
    ('96578608494', '-8.060453026527536, -34.87198721705985', 6748593, TO_TIMESTAMP('2024-10-18 16:00:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('23322076431', '-8.058430611618816, -34.87028979438143', 9384728, TO_TIMESTAMP('2024-10-20 14:30:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('50998999431', '-8.06496555883409, -34.87370051960102', 8572639, TO_TIMESTAMP('2024-10-21 20:15:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('23322076431', '-8.059687951354022, -34.87248273033102', 1938475, TO_TIMESTAMP('2024-10-19 16:45:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('96578608494', '-8.064273627791707, -34.87227855868209', 3129478, TO_TIMESTAMP('2024-10-18 12:00:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('23322076431', '-8.063834721071009, -34.871483925535266', 2639485, TO_TIMESTAMP('2024-10-20 17:30:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('50998999431', '-8.062657803028308, -34.87320498880049', 4729384, TO_TIMESTAMP('2024-10-19 11:00:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('96578608494', '-8.061366617867543, -34.87163863051441', 8561094, TO_TIMESTAMP('2024-10-21 15:45:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('23322076431', '-8.063102220491071, -34.87392490573505', 7610374, TO_TIMESTAMP('2024-10-18 19:30:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('96578608494', '-8.065279371367714, -34.873522732390576', 1948572, TO_TIMESTAMP('2024-10-19 14:00:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('23322076431', '-8.061664249917577, -34.87186672923007', 8475621, TO_TIMESTAMP('2024-10-21 16:00:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('23322076431', '-8.06151938006917, -34.87244781564648', 2938476, TO_TIMESTAMP('2024-10-20 13:45:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('50998999431', '-8.062996717593679, -34.873333734247254', 4650192, TO_TIMESTAMP('2024-10-21 10:15:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('96578608494', '-8.064273627791707, -34.87227855868209', 5910742, TO_TIMESTAMP('2024-10-18 18:30:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('96578608494', '-8.060039281442343, -34.87009954648337', 9485726, TO_TIMESTAMP('2024-10-20 14:00:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('50998999431', '-8.062657803028308, -34.87320498880049', 4628135, TO_TIMESTAMP('2024-10-21 15:00:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('50998999431', '-8.062465105915596, -34.87086439802587', 7465910, TO_TIMESTAMP('2024-10-18 13:30:00', 'YYYY-MM-DD HH24:MI:SS')),
    ('50998999431', '-8.062657803028308, -34.87320498880049', 6103745, TO_TIMESTAMP('2024-10-19 11:30:00', 'YYYY-MM-DD HH24:MI:SS'));

-- POVOANDO MINISTRA
INSERT INTO Ministra (cpf_palestrante, id_atividade) VALUES
    ('23456789012', 1298374),
    ('33889901122', 3874629),
    ('44990011233', 9485726),
    ('11223344556', 7651938),
    ('56789012345', 3129478),
    ('26918297406', 6748593),
    ('44882200534', 5093874),
    ('16677684415', 2837465),
    ('10556677889', 1948572),
    ('99445566778', 9384728),
    ('23456789012', 8374650),
    ('33889901122', 5726103),
    ('23456789012', 1938475),
    ('33889901122', 9478561),
    ('44990011233', 8593210),
    ('11223344556', 3874628),
    ('56789012345', 7465910),
    ('26918297406', 8572639),
    ('44882200534', 4729384),
    ('16677684415', 7465019),
    ('10556677889', 6103745),
    ('99445566778', 8475621),
    ('23456789012', 8561094),
    ('33889901122', 3210476),
    ('56789012345', 4628135),
    ('26918297406', 5910742),
    ('44882200534', 2639485),
    ('16677684415', 2938476),
    ('10556677889', 4650192),
    ('99445566778', 7610374);

-- POVOANDO PARTICIPA
INSERT INTO Participa (cpf_ouvinte, id_atividade) VALUES
    ('30706092449', 3874629),
    ('67890123456', 3874629),
    ('50998999431', 3874629),
    ('26918297406', 3874629),
    ('11121530397', 1298374),
    ('11667788990', 9485726),
    ('90533343356', 7651938),
    ('30291986420', 3129478),
    ('34934945482', 6748593),
    ('76142319452', 5093874),
    ('37084430555', 2837465),
    ('12345678901', 1948572),
    ('67890123456', 9384728),
    ('89012345678', 9384728),
    ('28831620347', 9384728),
    ('26918297406', 9384728),
    ('88334455667', 9384728),
    ('78901234567', 9384728),
    ('90123456789', 8374650),
    ('50998999431', 5726103),
    ('89012345678', 1938475),
    ('28824388426', 9478561),
    ('51359753575', 8593210),
    ('89916311501', 3874628),
    ('26918297406', 7465910),
    ('53839259452', 8572639),
    ('77223344556', 4729384),
    ('28831620347', 7465019),
    ('08342995429', 6103745),
    ('88334455667', 8475621),
    ('56789012345', 8561094),
    ('78901234567', 3210476),
    ('33889901122', 4628135),
    ('01382270470', 5910742),
    ('22778899011', 2639485),
    ('76142319452', 2938476),
    ('67890123456', 4650192),
    ('11667788990', 7610374),
    ('88334455667', 7610374),
    ('50998999431', 7610374),
    ('26918297406', 7610374),
    ('88334455667', 7610374),
    ('50998999431', 7610374),
    ('30706092449', 7610374);
