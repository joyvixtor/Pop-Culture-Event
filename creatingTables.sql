-- Tabela Endereco
CREATE TABLE Endereco (
    cep VARCHAR(9) PRIMARY KEY,
    estado VARCHAR2(50),
    cidade VARCHAR2(50),
    bairro VARCHAR2(50),
    rua VARCHAR2(50),
    numero VARCHAR2(10)
);

/* 
    Tabela Participante 
    ESPECIALIZACOES: Ouvinte, Palestrante, Organizador
*/
CREATE TABLE Participante (
    cpf VARCHAR2(11) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    email VARCHAR2(50),
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
    nome VARCHAR2(100),
    preco DECIMAL(10,2),
    categoria VARCHAR2(50),
    estoque INT
);

-- TABELA ESTANDE
CREATE TABLE Estande (
    id_estande INT PRIMARY KEY,
    nome VARCHAR2(100),
    categoria VARCHAR2(50),
);