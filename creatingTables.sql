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
    nome VARCHAR2(100) NOT NULL,
    categoria VARCHAR2(50),
);

-- TABELA ATIVIDADE

CREATE TABLE Atividade (
    id_atividade SERIAL PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    categoria VARCHAR2(50) NOT NULL,
    id_local INTEGER REFERENCES Local(id_local),
);

-- TABELA LOCAL
CREATE TABLE Local (
    id_local INT PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    capacidade INTEGER NOT NULL,
    geolocalizacao VARCHAR2(100),
);

/* 
    TABELA PARA RELACIONAMENTOS
    Palestrante e Atividade (MINISTRA)
    Ouvinte e Atividade (PARTICIPA)
    Participante e Produto (COMPRA)
    Estande e Local (RESERVA)
*/

-- RELACIONAMENTO MINISTRA
CREATE TABLE Ministra(
    cpf_palestrante VARCHAR2(11) REFERENCES Palestrante(cpf_participante),
    id_atividade INTEGER REFERENCES Atividade(id_atividade),
    PRIMARY KEY (cpf_palestrante, id_atividade)
);

-- RELACIONAMENTO PARTICIPA
CREATE TABLE Participa(
    cpf_ouvinte VARCHAR2(11) REFERENCES Ouvinte(cpf_participante),
    id_atividade INTEGER REFERENCES Atividade(id_atividade),
    PRIMARY KEY (cpf_ouvinte, id_atividade)
);

-- RELACIONAMENTO COMPRA
CREATE TABLE Compra(
    cpf_participante VARCHAR2(11) REFERENCES Participante(cpf),
    id_produto INTEGER REFERENCES Produto(id_produto),
    quantidade INTEGER NOT NULL,
    data_compra TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (cpf_participante, id_produto, data_compra)
);

-- RELACIONAMENTO RESERVA
CREATE TABLE Reserva(
    id_estande INTEGER REFERENCES Estande(id_estande),
    id_local INTEGER REFERENCES Local(id_local),
    data_reserva DATE NOT NULL,
    PRIMARY KEY (id_estande, id_local, data_reserva)
);