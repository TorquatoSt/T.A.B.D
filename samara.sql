-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Transacao (
data DATE,
valor NUMBER,
nroTransacao CHAR(8) PRIMARY KEY,
nroConta CHAR(8)
);

CREATE TABLE Conta (
saldoConta NUMBER,
nroConta CHAR(8) PRIMARY KEY
);

CREATE TABLE ACC (
codCliente CHAR(8),
nroAgencia CHAR(8),
nroConta CHAR(8),
PRIMARY KEY(codCliente,nroAgencia,nroConta)
);

CREATE TABLE Cliente (
RG CHAR(8),
cidade VARCHAR(20),
nome VARCHAR(50),
codCliente CHAR(8) PRIMARY KEY
);

CREATE TABLE Agencia (
cidadeAgencia VARCHAR(20),
nroAgencia CHAR(8) PRIMARY KEY
);

CREATE TABLE Funcionario (
salarioFunc NUMBER,
enderecoFunc VARCHAR(20),
codFunc CHAR(8) PRIMARY KEY,
nomeFunc VARCHAR(50),
nroAgencia CHAR(8),
FOREIGN KEY(nroAgencia) REFERENCES Agencia (nroAgencia)
);

ALTER TABLE Transacao ADD FOREIGN KEY(nroConta) REFERENCES Conta (nroConta);
