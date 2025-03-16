-- Tabela Endereco
CREATE TABLE Endereco (
    cep VARCHAR(9) PRIMARY KEY,
    estado VARCHAR2(50),
    cidade VARCHAR2(50),
    bairro VARCHAR2(50),
    rua VARCHAR2(50),
);

/* 
    Tabela Participante 
    ESPECIALIZACOES: Ouvinte, Palestrante, Organizador
*/
CREATE TABLE Participante (
    cpf VARCHAR2(11) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    telefone VARCHAR2(15),
    cep VARCHAR2(9),
    CONSTRAINT fk_participante_cep FOREIGN KEY (cep) REFERENCES Endereco(cep),
    CONSTRAINT chk_cep CHECK (LENGTH(cep) = 9)
);

CREATE TABLE Ouvinte (
    cpf_participante VARCHAR2(11) PRIMARY KEY,
    numero_do_ingresso VARCHAR(15),
    CONSTRAINT fk_ouvinte_participante FOREIGN KEY (cpf_participante) REFERENCES Participante(cpf)
);

CREATE TABLE Palestrante (
    cpf_participante VARCHAR2(11) PRIMARY KEY,
    empresa_vinculo VARCHAR2(100),
    CONSTRAINT fk_palestrante_participante FOREIGN KEY (cpf_participante) REFERENCES Participante(cpf)
);

CREATE TABLE Organizador (
    cpf_participante VARCHAR2(11) PRIMARY KEY,
    cargo VARCHAR2(50),
    departamento VARCHAR2(50),
    cpf_supervisor VARCHAR2(11),
    CONSTRAINT fk_organizador_participante FOREIGN KEY (cpf_participante) REFERENCES Participante(cpf),
    CONSTRAINT fk_organizador_supervisor FOREIGN KEY (cpf_supervisor) REFERENCES Organizador(cpf_participante)
);

-- TABELA PRODUTO
CREATE TABLE Produto (
    id_produto INT PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR2(50) NOT NULL,
    estoque INT NOT NULL,
    estande_id INTEGER REFERENCES estande(id_estande)
);

-- TABELA ESTANDE
CREATE TABLE Estande (
    id_estande INT PRIMARY KEY,
    categoria VARCHAR2(50),
    nome VARCHAR2(100) NOT NULL
);

-- TABELA ATIVIDADE

CREATE TABLE Atividade (
    id_atividade SERIAL PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    categoria VARCHAR2(50) NOT NULL
);

-- TABELA LOCAL
CREATE TABLE LocalEvento (
    id_local INT PRIMARY KEY,
    geolocalizacao VARCHAR2(100),
    nome VARCHAR2(100) NOT NULL,
    capacidade INTEGER NOT NULL,
);

/* 
    TABELA PARA RELACIONAMENTOS
    Palestrante e Atividade (MINISTRA)
    Ouvinte e Atividade (PARTICIPA)
    Participante e Produto (COMPRA)
    Estande e Local (RESERVA)
*/

-- Criação do relacionamento N:N Ministra
CREATE TABLE Ministra (
    cpf_palestrante VARCHAR2(11) PRIMARY KEY,
    id_atividade INT,
    CONSTRAINT fk_ministra_palestrante FOREIGN KEY (cpf_palestrante) REFERENCES Participante(cpf),
    CONSTRAINT fk_ministra_atividade FOREIGN KEY (id_atividade) REFERENCES Atividade(id_atvd)
);

-- Criação do relacionamento N:N Participa (Atividade-Ouvinte)
CREATE TABLE Participa (
    cpf_ouvinte VARCHAR2(11),
    id_atividade INT,
    CONSTRAINT fk_participa_ouvinte FOREIGN KEY (cpf_ouvinte) REFERENCES Participante(cpf),
    CONSTRAINT fk_participa_atividade FOREIGN KEY (id_atividade) REFERENCES Atividade(id_atvd)
);

-- RELACIONAMENTO COMPRA
CREATE TABLE Compra (
    cpf_participante VARCHAR2(11),
    id_produto INT,
    id_estande INT,
    CONSTRAINT fk_compra_participante FOREIGN KEY (cpf_participante) REFERENCES Participante(cpf),
    CONSTRAINT fk_compra_produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
    CONSTRAINT fk_compra_estande FOREIGN KEY (id_estande) REFERENCES Estande(id_estande)
);

-- RELACIONAMENTO RESERVA
CREATE TABLE Reserva (
    cpf_organizador VARCHAR2(11),
    geolocalizacao_local VARCHAR2(100),
    id_atividade INT,
    data_alocacao DATE,
    CONSTRAINT fk_reserva_organizador FOREIGN KEY (cpf_organizador) REFERENCES Organizador(cpf_participante),
    CONSTRAINT fk_reserva_local FOREIGN KEY (geolocalizacao_local) REFERENCES LocalEvento(geolocalizacao),
    CONSTRAINT fk_reserva_atividade FOREIGN KEY (id_atividade) REFERENCES Atividade(id_atvd)
);