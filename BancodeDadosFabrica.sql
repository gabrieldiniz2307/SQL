-- CREATE DATABASE FabricaSenai
-- USE FabricaSenai
CREATE TABLE Material
(
	IdMaterial INT PRIMARY KEY IDENTITY(1,1), -- Obg chave primaria

	Nome VARCHAR(30) NOT NULL,
	Descricacao VARCHAR(100), -- Identificar que � o dado � tipo texto
	Fornecedor VARCHAR(50) NOT NULL,
	PesoEspecifico NUMERIC(10,2) CHECK (PesoEspecifico > 0) -- 99999999,99 -- Peso > que 0 obrigatorio
)

CREATE TABLE Peca
(
	Id INT PRIMARY KEY IDENTITY (1,1), -- Roud de numeros aleatorios 
	Nome VARCHAR(30) NOT NULL, -- Tem que ter alguma informa��o
	Descricao VARCHAR(100),
	IdMaterial	INT NOT NULL -- Puxando valor da tabela Material 
	CONSTRAINT fkMaterial FOREIGN KEY
		REFERENCES Material (IdMaterial) -- Referenciando e trazendo os dados da Coluna: 'IdMaterial'
)

--DROP TABLE Peca -- Apagar coluna 

SELECT 
	*
FROM
	Peca

SELECT 
	*
FROM
	Material

INSERT INTO Material VALUES('A�o', 'A�o SAE 1020', 'GERDAU', 7800.00) -- Add dados a Tabela Material 

INSERT INTO Material (Nome, Descricacao, Fornecedor, PesoEspecifico) VALUES
('Alum�nio', 'Alum�nio 6061', 'Alcoa', 2700.00),
('Cobre', 'Cobre eletrol�tico', 'Vale', 8900.00),
('Lat�o', 'Lat�o 70/30', 'BrassWorks', 8500.00),
('A�o Inoxid�vel', 'A�o Inoxid�vel 304', 'Aperam', 8000.00),
('N�quel', 'N�quel comercial', 'Norilsk Nickel', 8800.00),
('Tit�nio', 'Tit�nio grau 2', 'Timet', 4500.00),
('Zinco', 'Zinco 99.9%', 'Teck Resources', 7100.00),
('Pl�stico ABS', 'Pl�stico ABS de alta resist�ncia', 'Sabic', 1050.00),
('PVC', 'PVC para tubula��o', 'Braskem', 1380.00),
('Policarbonato', 'Policarbonato transparente', 'Covestro', 1200.00),
('Borracha', 'Borracha natural', 'Goodyear', 950.00),
('Vidro', 'Vidro temperado', 'Saint-Gobain', 2500.00),
('Cer�mica', 'Cer�mica t�cnica', 'CeramTec', 3200.00),
('Grafite', 'Grafite sint�tico', 'GrafTech', 1900.00),
('Teflon', 'Teflon PTFE', 'Chemours', 2200.00),
('Fibra de Carbono', 'Fibra de Carbono de alta resist�ncia', 'Toray', 1800.00),
('A�o Carbono', 'A�o Carbono A36', 'US Steel', 7850.00),
('Magn�sio', 'Magn�sio AZ31B', 'Magnesium Elektron', 1740.00),
('Nylon', 'Nylon 6/6', 'DuPont', 1140.00),
('Sil�cio', 'Sil�cio grau solar', 'Wacker Chemie', 2330.00);


INSERT INTO Peca (Nome, Descricao, IdMaterial) VALUES
('Parafuso de Alum�nio', 'Parafuso feito de alum�nio 6061', 1),
('Cabo de Cobre', 'Cabo feito de cobre eletrol�tico', 2),
('Conector de Lat�o', 'Conector feito de lat�o 70/30', 3),
('Parafuso Inoxid�vel', 'Parafuso feito de a�o inoxid�vel 304', 4),
('Fio de N�quel', 'Fio feito de n�quel comercial', 5),
('Parafuso de Tit�nio', 'Parafuso feito de tit�nio grau 2', 6),
('Placa de Zinco', 'Placa feita de zinco 99.9%', 7),
('Pe�a de ABS', 'Pe�a feita de pl�stico ABS de alta resist�ncia', 8),
('Tubo de PVC', 'Tubo feito de PVC para tubula��o', 9),
('Capacete de Policarbonato', 'Capacete feito de policarbonato transparente', 10),
('Veda��o de Borracha', 'Veda��o feita de borracha natural', 11),
('Vidro Temperado', 'Placa de vidro temperado', 12),
('Isolador de Cer�mica', 'Isolador feito de cer�mica t�cnica', 13),
('Ponte de Grafite', 'Ponte feita de grafite sint�tico', 14),
('Anel de Teflon', 'Anel feito de Teflon PTFE', 15),
('Lamina de Fibra de Carbono', 'Lamina feita de fibra de carbono de alta resist�ncia', 16),
('Barra de A�o Carbono', 'Barra feita de a�o carbono A36', 17),
('Estrutura de Magn�sio', 'Estrutura feita de magn�sio AZ31B', 18),
('Parafuso de Nylon', 'Parafuso feito de nylon 6/6', 19),
('Placa de Sil�cio', 'Placa feita de sil�cio grau solar', 20);



INSERT INTO Material (Nome, Descricacao, Fornecedor, PesoEspecifico) VALUES
('Bronze', 'Bronze comercial', 'BronzeCo', 8300.00),
('Chumbo', 'Chumbo refinado', 'LeadCorp', 11340.00),
('Prata', 'Prata esterlina', 'SilverInc', 10490.00),
('Ouro', 'Ouro 24k', 'GoldMiner', 19300.00),
('Platina', 'Platina pura', 'PlatinumGroup', 21450.00),
('A�o Ferramenta', 'A�o ferramenta D2', 'ToolSteelWorks', 7700.00),
('Ferro Fundido', 'Ferro fundido cinzento', 'CastIronWorks', 7200.00),
('Polietileno', 'Polietileno de alta densidade', 'PolyCorp', 950.00),
('Polipropileno', 'Polipropileno isot�tico', 'PolyMakers', 905.00),
('Poliuretano', 'Poliuretano flex�vel', 'Urethane Inc.', 1200.00),
('Kevlar', 'Kevlar para blindagem', 'DuPont', 1440.00),
('Bismuto', 'Bismuto puro', 'BiMaterials', 9800.00),
('Cobalto', 'Cobalto grau industrial', 'CobaltCo', 8900.00),
('Wolframio', 'Wolframio (Tungst�nio) puro', 'TungstenTech', 19300.00),
('N�quel-Cromo', 'Liga de N�quel-Cromo', 'Inconel', 8200.00),
('Tit�nio-Alum�nio', 'Liga de Tit�nio-Alum�nio', 'TiAlTech', 3800.00),
('Sil�cio-Carbeto', 'Sil�cio-Carbeto', 'CarbideTech', 3200.00),
('Ferro', 'Ferro puro', 'IronMines', 7870.00),
('Lat�o Vermelho', 'Lat�o Vermelho 85/15', 'RedBrassWorks', 8800.00),
('Estanho', 'Estanho refinado', 'TinCo', 7300.00);

INSERT INTO Peca (Nome, Descricao, IdMaterial) VALUES
('Engrenagem de Bronze', 'Engrenagem feita de bronze comercial', 21),
('Peso de Chumbo', 'Peso feito de chumbo refinado', 22),
('Fio de Prata', 'Fio feito de prata esterlina', 23),
('Anel de Ouro', 'Anel feito de ouro 24k', 24),
('Contato de Platina', 'Contato feito de platina pura', 25),
('Broca de A�o Ferramenta', 'Broca feita de a�o ferramenta D2', 26),
('Flange de Ferro Fundido', 'Flange feita de ferro fundido cinzento', 27),
('Tubo de Polietileno', 'Tubo feito de polietileno de alta densidade', 28),
('Chapa de Polipropileno', 'Chapa feita de polipropileno isot�tico', 29),
('Roda de Poliuretano', 'Roda feita de poliuretano flex�vel', 30),
('Colete de Kevlar', 'Colete feito de Kevlar para blindagem', 31),
('Contrapeso de Bismuto', 'Contrapeso feito de bismuto puro', 32),
('Im� de Cobalto', 'Im� feito de cobalto grau industrial', 33),
('Fio de Wolframio', 'Fio feito de wolframio (tungst�nio) puro', 34),
('Parafuso de N�quel-Cromo', 'Parafuso feito de liga de n�quel-cromo', 35),
('Estrutura de Tit�nio-Alum�nio', 'Estrutura feita de liga de tit�nio-alum�nio', 36),
('Placa de Sil�cio-Carbeto', 'Placa feita de sil�cio-carbeto', 37),
('Barra de Ferro', 'Barra feita de ferro puro', 38),
('Conector de Lat�o Vermelho', 'Conector feito de lat�o vermelho 85/15', 39),
('Solda de Estanho', 'Solda feita de estanho refinado', 40)

CREATE TABLE Funcionario
(
	IdFuncionario INT PRIMARY KEY IDENTITY(1,1), -- Gerar Id Aleatorio 
	Nome VARCHAR(50) NOT NULL,
	Idade INT,
	Cargo VARCHAR(50) NOT NULL,
	Endereco VARCHAR(50) NOT NULL,
	Contato VARCHAR(30) NOT NULL
)
DROP TABLE Funcionario

INSERT INTO Funcionario (Nome, Idade, Cargo, Endereco, Contato) VALUES
('Jo�o Silva', 35, 'Operador de M�quinas', 'Rua das Ind�strias, 123', '123-456-7890'),
('Maria Santos', 28, 'T�cnico Eletricista', 'Avenida dos Eletricistas, 456', '987-654-3210'),
('Pedro Oliveira', 42, 'Engenheiro de Produ��o', 'Travessa das Engenharias, 789', '456-789-0123'),
('Ana Souza', 30, 'Analista de Qualidade', 'Rua da Qualidade, 789', '321-654-0987'),
('Carlos Lima', 25, 'Auxiliar de Produ��o', 'Rua da Produ��o, 567', '789-012-3456'),
('Fernanda Costa', 38, 'Gerente de Opera��es', 'Avenida dos Gerentes, 234', '234-567-8901'),
('Rodrigo Almeida', 33, 'T�cnico Mec�nico', 'Avenida dos Mec�nicos, 678', '567-890-1234'),
('Juliana Ferreira', 29, 'Operadora de Montagem', 'Rua das Montagens, 345', '890-123-4567'),
('Marcos Santos', 40, 'Supervisor de Log�stica', 'Rua da Log�stica, 901', '678-901-2345'),
('Patr�cia Gomes', 31, 'Engenheira de Processos', 'Avenida dos Processos, 123', '456-789-0123'),
('Luiz Oliveira', 27, 'Operador de Empilhadeira', 'Travessa das Empilhadeiras, 456', '789-012-3456'),
('Aline Costa', 36, 'T�cnica de Seguran�a do Trabalho', 'Rua da Seguran�a, 789', '234-567-8901'),
('Rafaela Lima', 32, 'Analista de Sistemas', 'Avenida dos Sistemas, 234', '567-890-1234'),
('Gustavo Santos', 26, 'Auxiliar Administrativo', 'Rua da Administra��o, 567', '890-123-4567'),
('Camila Almeida', 39, 'Coordenadora de Qualidade', 'Avenida da Qualidade, 901', '678-901-2345'),
('Daniel Ferreira', 28, 'T�cnico de Manuten��o', 'Rua da Manuten��o, 123', '456-789-0123'),
('Carla Oliveira', 34, 'Supervisora de Produ��o', 'Travessa da Produ��o, 456', '789-012-3456'),
('Jos� Costa', 37, 'Gerente de Recursos Humanos', 'Rua dos Recursos Humanos, 789', '234-567-8901'),
('Roberta Lima', 29, 'Engenheira de Qualidade', 'Avenida da Qualidade, 234', '567-890-1234'),
('Ant�nio Silva', 35, 'Inspetor de Controle de Qualidade', 'Rua do Controle de Qualidade, 567', '890-123-4567');

SELECT
	*
FROM
	Funcionario

CREATE TABLE Maquina
(
    IdMaquina INT PRIMARY KEY IDENTITY(1,1), -- Gerar Id Aleatorio 
    Nome VARCHAR(50) NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    Fabricante VARCHAR(50) NOT NULL,
    NumeroSerie VARCHAR(30) NOT NULL,
    IdadeMaquina INT,
    Descricao VARCHAR(100)
);

INSERT INTO Maquina (Nome, Tipo, Fabricante, NumeroSerie, IdadeMaquina, Descricao) VALUES
('M�quina de Moldagem', 'Moldagem', 'Fabrimec', 'MOL-001', 3, 'M�quina usada para moldagem de pe�as pl�sticas.'),
('Fresadora CNC', 'CNC', 'TechMach', 'CNC-002', 1, 'Fresadora CNC para usinagem de precis�o.'),
('Impressora 3D', 'Impressora 3D', 'TechPrint', '3D-003', 2, 'Impressora 3D para prototipagem r�pida.'),
('M�quina de Inje��o', 'Inje��o', 'Plasmatron', 'INJ-004', 5, 'M�quina de inje��o de pl�stico.'),
('Torno Autom�tico', 'Torno', 'MetalMech', 'TOR-005', 4, 'Torno autom�tico para usinagem de metais.'),
('Empilhadeira El�trica', 'Empilhadeira', 'LogiTech', 'EMP-006', 2, 'Empilhadeira el�trica para movimenta��o de materiais.'),
('Rob� de Solda', 'Rob�', 'WeldTech', 'ROB-007', 1, 'Rob� de solda automatizado para linhas de produ��o.'),
('M�quina de Corte a Laser', 'Corte a Laser', 'LaserCut', 'LAS-008', 3, 'M�quina de corte a laser para materiais diversos.'),
('M�quina de Costura Industrial', 'Costura', 'SewPro', 'COS-009', 2, 'M�quina de costura industrial para tecidos.'),
('M�quina de Embalagem Autom�tica', 'Embalagem', 'PackTech', 'EMB-010', 4, 'M�quina autom�tica para embalagem de produtos.'),
('Centro de Usinagem Vertical', 'Usinagem', 'MachTech', 'CUS-011', 3, 'Centro de usinagem vertical para pe�as complexas.'),
('M�quina de Solda por Ultrassom', 'Solda', 'UltraWeld', 'SOL-012', 1, 'M�quina de solda por ultrassom para pl�sticos.'),
('Prensa Hidr�ulica', 'Prensa', 'HydroPress', 'PRE-013', 5, 'Prensa hidr�ulica para conforma��o de pe�as.'),
('M�quina de Fundi��o', 'Fundi��o', 'CastingTech', 'FUN-014', 3, 'M�quina de fundi��o de metais.'),
('M�quina de Pintura Autom�tica', 'Pintura', 'AutoPaint', 'PIN-015', 2, 'M�quina automatizada para pintura de superf�cies.'),
('M�quina de Lixamento Autom�tico', 'Lixamento', 'SandTech', 'LIX-016', 4, 'M�quina autom�tica para lixamento de pe�as.'),
('M�quina de Inspe��o Visual', 'Inspe��o', 'VisTech', 'INS-017', 3, 'M�quina de inspe��o visual para controle de qualidade.'),
('M�quina de Corte e Dobra de Chapas', 'Corte e Dobra', 'SheetTech', 'COR-018', 1, 'M�quina para corte e dobra de chapas met�licas.'),
('M�quina de Secagem Industrial', 'Secagem', 'DryTech', 'SEC-019', 2, 'M�quina industrial para secagem de produtos.'),
('M�quina de Calibra��o de Pe�as', 'Calibra��o', 'CalibraTech', 'CAL-020', 4, 'M�quina para calibra��o precisa de pe�as.');



CREATE TABLE Producao
(
    IdProducao INT PRIMARY KEY IDENTITY(1,1), -- Gerar Id Aleatorio 
    DataProducao DATE NOT NULL,
    Quantidade INT NOT NULL,
    IdPeca INT NOT NULL,
    IdMaterial INT NOT NULL,
    IdFuncionario INT NOT NULL,
    IdMaquina INT NOT NULL,
    CONSTRAINT fkPeca FOREIGN KEY (IdPeca) REFERENCES Peca(Id),
    CONSTRAINT fkkMaterial FOREIGN KEY (IdMaterial) REFERENCES Material(IdMaterial),
    CONSTRAINT fkFuncionario FOREIGN KEY (IdFuncionario) REFERENCES Funcionario(IdFuncionario),
    CONSTRAINT fkMaquina FOREIGN KEY (IdMaquina) REFERENCES Maquina(IdMaquina)
);

INSERT INTO Producao (DataProducao, Quantidade, IdPeca, IdMaterial, IdFuncionario, IdMaquina) VALUES
('2024-06-01', 100, 1, 3, 2, 1),
('2024-06-02', 80, 2, 4, 3, 2),
('2024-06-03', 120, 3, 5, 4, 3),
('2024-06-04', 90, 4, 6, 5, 4),
('2024-06-05', 110, 5, 7, 6, 5),
('2024-06-06', 95, 6, 8, 7, 6),
('2024-06-07', 105, 7, 9, 8, 7),
('2024-06-08', 130, 8, 10, 9, 8),
('2024-06-09', 115, 9, 11, 10, 9),
('2024-06-10', 100, 10, 12, 11, 10),
('2024-06-11', 85, 11, 13, 12, 11),
('2024-06-12', 95, 12, 14, 13, 12),
('2024-06-13', 120, 13, 15, 14, 13),
('2024-06-14', 110, 14, 16, 15, 14),
('2024-06-15', 105, 15, 17, 16, 15),
('2024-06-16', 125, 16, 18, 17, 16),
('2024-06-17', 95, 17, 19, 18, 17),
('2024-06-18', 100, 18, 20, 19, 18),
('2024-06-19', 115, 19, 1, 20, 19),
('2024-06-20', 105, 20, 2, 1, 20);

SELECT
	*
FROM
	Producao

SELECT 
	*
FROM
	Peca

SELECT 
	*
FROM
	Material


SELECT 
	*
FROM
	Maquina


SELECT
	*
FROM
	Funcionario
