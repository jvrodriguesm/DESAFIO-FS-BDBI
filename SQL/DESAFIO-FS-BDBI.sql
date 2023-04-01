CREATE DATABASE hospital;

USE hospital;

CREATE TABLE Paciente(
	Nome VARCHAR(50),
    Número VARCHAR(30),
    CPF BIGINT PRIMARY KEY,
    Data_da_consulta DATE
);

CREATE TABLE Doença(
	Nome VARCHAR(30),
	Sintomas VARCHAR(200),
    Tratamento VARCHAR(200),
    id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Leitos(
	Leito_ID INT PRIMARY KEY,
    Andar INT,
    Bloco VARCHAR(5)
);

ALTER TABLE Paciente ADD COLUMN Email VARCHAR(30);
ALTER TABLE Leitos ADD COLUMN Responsável VARCHAR(40);

INSERT INTO Paciente (Nome, Número, CPF,Data_da_consulta, Email)
VALUES
('Arthur Alves', '(51)99960-1035', 13363608012,'2023/01/10','arthuralvesfmelo@hotmail.com'),
('Felipe Wallace', '(83)99856-1523', 19149788035,'2023/01/11','fwpjr@hotmail.com'),
('Rhuan Ramalho','(83)98922-4002', 96251384042,'2023/01/12','rhuanrv@hotmail.com'),
('João Vitor','(83)99826-7528', 07137585035,'2023/01/12','jvrmviana@hotmail.com');

INSERT INTO Doença (Nome, Sintomas, Tratamento)
VALUES
('Gripe','Dor de cabeça, espirro, coriza, febre, tosse','Repouso, ingerir muitos líquidos'),
('Aids','Febre, aparecimento de gânglios, crescimento do baço e do fígado, alterações elétricas do coração', ' tratamento é realizado por meio da administração de medicamentos ao paciente, em sua maioria os antirretrovirais'),
('Diabetes','Fome frequente, sede constante, fraqueza, fadiga, náuseas', 'O controle do nível de açúcar no sangue por meio de dieta, medicamentos orais ou insulina'),
('Meningite','Dor nas costas, calafrios, fadiga, febre, letargia, mal-estar,náusea,vômito','repouso, ingestão de muito líquido, uso de medicamentos para aliviar dores e, em casos específicos, de antivirais');

INSERT INTO Leitos (Leito_ID, Andar, Bloco, Responsável)
VALUES
('1', '1', 'A' ,'DR.Sérgio'),
('2', '1', 'A' ,'DR.Tércio'),
('3', '1', 'A' ,'ENF.Nilma'),
('52', '5', 'B' ,'ENF.Maria'),
('23', '2', 'C' ,'DRA.Joelma');

SELECT * FROM Paciente;
SELECT * FROM Doença;
SELECT * FROM Leitos;