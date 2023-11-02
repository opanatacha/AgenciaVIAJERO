CREATE DATABASE viajero_db;
USE viajero_db;

CREATE TABLE usuario (
    id_usuario INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL
);

CREATE TABLE viagem (
    id_viagem INTEGER AUTO_INCREMENT PRIMARY KEY,
    origem VARCHAR(100) NOT NULL,
    destino VARCHAR(100) NOT NULL,
    data_ida DATE NOT NULL,
    data_volta DATE NOT NULL,
    tipo_viagem ENUM('PACOTE', 'EXCURSAO') NOT NULL,
    qtd_pessoas INTEGER NOT NULL,
    hospedagem VARCHAR(150),
    tipo_hospedagem ENUM('POUSADA', 'HOTEL', 'HOSTEL') NOT NULL,
    endereco_hospedagem TEXT NOT NULL,
    guia_turismo VARCHAR(150) NOT NULL,
    agencia_transporte VARCHAR(150) NOT NULL,
    codigo_transporte VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    valor_viagem FLOAT(32) NOT NULL
);

CREATE TABLE pedido (
    id_pedido INTEGER AUTO_INCREMENT PRIMARY KEY,
    num_pedido INTEGER NOT NULL UNIQUE,
    data_pedido DATE NOT NULL,
    forma_pagamento VARCHAR(100) NOT NULL,
    valor_total FLOAT(32) NOT NULL,
    id_usuario INTEGER NOT NULL, FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
    id_viagem INTEGER NOT NULL, FOREIGN KEY (id_viagem) REFERENCES viagem (id_viagem)
);

CREATE TABLE contato (
    id_contato INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    destino VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mensagem VARCHAR(255) NOT NULL
);