-- CREATE DATABASE FabricaSenai
-- USE FabricaSenai
CREATE TABLE Material
(
	IdMaterial INT PRIMARY KEY IDENTITY(1,1), -- Obg chave primaria

	Nome VARCHAR(30) NOT NULL,
	Descricacao VARCHAR(100), -- Identificar que é o dado é tipo texto
	Fornecedor VARCHAR(50) NOT NULL,
	PesoEspecifico NUMERIC(10,2) CHECK (PesoEspecifico > 0) -- 99999999,99 -- Peso > que 0 obrigatorio
)

CREATE TABLE Peca
(
	Id INT PRIMARY KEY IDENTITY (1,1), -- Roud de numeros aleatorios 
	Nome VARCHAR(30) NOT NULL, -- Tem que ter alguma informação
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

INSERT INTO Material VALUES('Aço', 'Aço SAE 1020', 'GERDAU', 7800.00) -- Add dados a Tabela Material 

INSERT INTO Material (Nome, Descricacao, Fornecedor, PesoEspecifico) VALUES
('Alumínio', 'Alumínio 6061', 'Alcoa', 2700.00),
('Cobre', 'Cobre eletrolítico', 'Vale', 8900.00),
('Latão', 'Latão 70/30', 'BrassWorks', 8500.00),
('Aço Inoxidável', 'Aço Inoxidável 304', 'Aperam', 8000.00),
('Níquel', 'Níquel comercial', 'Norilsk Nickel', 8800.00),
('Titânio', 'Titânio grau 2', 'Timet', 4500.00),
('Zinco', 'Zinco 99.9%', 'Teck Resources', 7100.00),
('Plástico ABS', 'Plástico ABS de alta resistência', 'Sabic', 1050.00),
('PVC', 'PVC para tubulação', 'Braskem', 1380.00),
('Policarbonato', 'Policarbonato transparente', 'Covestro', 1200.00),
('Borracha', 'Borracha natural', 'Goodyear', 950.00),
('Vidro', 'Vidro temperado', 'Saint-Gobain', 2500.00),
('Cerâmica', 'Cerâmica técnica', 'CeramTec', 3200.00),
('Grafite', 'Grafite sintético', 'GrafTech', 1900.00),
('Teflon', 'Teflon PTFE', 'Chemours', 2200.00),
('Fibra de Carbono', 'Fibra de Carbono de alta resistência', 'Toray', 1800.00),
('Aço Carbono', 'Aço Carbono A36', 'US Steel', 7850.00),
('Magnésio', 'Magnésio AZ31B', 'Magnesium Elektron', 1740.00),
('Nylon', 'Nylon 6/6', 'DuPont', 1140.00),
('Silício', 'Silício grau solar', 'Wacker Chemie', 2330.00);


INSERT INTO Peca (Nome, Descricao, IdMaterial) VALUES
('Parafuso de Alumínio', 'Parafuso feito de alumínio 6061', 1),
('Cabo de Cobre', 'Cabo feito de cobre eletrolítico', 2),
('Conector de Latão', 'Conector feito de latão 70/30', 3),
('Parafuso Inoxidável', 'Parafuso feito de aço inoxidável 304', 4),
('Fio de Níquel', 'Fio feito de níquel comercial', 5),
('Parafuso de Titânio', 'Parafuso feito de titânio grau 2', 6),
('Placa de Zinco', 'Placa feita de zinco 99.9%', 7),
('Peça de ABS', 'Peça feita de plástico ABS de alta resistência', 8),
('Tubo de PVC', 'Tubo feito de PVC para tubulação', 9),
('Capacete de Policarbonato', 'Capacete feito de policarbonato transparente', 10),
('Vedação de Borracha', 'Vedação feita de borracha natural', 11),
('Vidro Temperado', 'Placa de vidro temperado', 12),
('Isolador de Cerâmica', 'Isolador feito de cerâmica técnica', 13),
('Ponte de Grafite', 'Ponte feita de grafite sintético', 14),
('Anel de Teflon', 'Anel feito de Teflon PTFE', 15),
('Lamina de Fibra de Carbono', 'Lamina feita de fibra de carbono de alta resistência', 16),
('Barra de Aço Carbono', 'Barra feita de aço carbono A36', 17),
('Estrutura de Magnésio', 'Estrutura feita de magnésio AZ31B', 18),
('Parafuso de Nylon', 'Parafuso feito de nylon 6/6', 19),
('Placa de Silício', 'Placa feita de silício grau solar', 20);



INSERT INTO Material (Nome, Descricacao, Fornecedor, PesoEspecifico) VALUES
('Bronze', 'Bronze comercial', 'BronzeCo', 8300.00),
('Chumbo', 'Chumbo refinado', 'LeadCorp', 11340.00),
('Prata', 'Prata esterlina', 'SilverInc', 10490.00),
('Ouro', 'Ouro 24k', 'GoldMiner', 19300.00),
('Platina', 'Platina pura', 'PlatinumGroup', 21450.00),
('Aço Ferramenta', 'Aço ferramenta D2', 'ToolSteelWorks', 7700.00),
('Ferro Fundido', 'Ferro fundido cinzento', 'CastIronWorks', 7200.00),
('Polietileno', 'Polietileno de alta densidade', 'PolyCorp', 950.00),
('Polipropileno', 'Polipropileno isotático', 'PolyMakers', 905.00),
('Poliuretano', 'Poliuretano flexível', 'Urethane Inc.', 1200.00),
('Kevlar', 'Kevlar para blindagem', 'DuPont', 1440.00),
('Bismuto', 'Bismuto puro', 'BiMaterials', 9800.00),
('Cobalto', 'Cobalto grau industrial', 'CobaltCo', 8900.00),
('Wolframio', 'Wolframio (Tungstênio) puro', 'TungstenTech', 19300.00),
('Níquel-Cromo', 'Liga de Níquel-Cromo', 'Inconel', 8200.00),
('Titânio-Alumínio', 'Liga de Titânio-Alumínio', 'TiAlTech', 3800.00),
('Silício-Carbeto', 'Silício-Carbeto', 'CarbideTech', 3200.00),
('Ferro', 'Ferro puro', 'IronMines', 7870.00),
('Latão Vermelho', 'Latão Vermelho 85/15', 'RedBrassWorks', 8800.00),
('Estanho', 'Estanho refinado', 'TinCo', 7300.00);

INSERT INTO Peca (Nome, Descricao, IdMaterial) VALUES
('Engrenagem de Bronze', 'Engrenagem feita de bronze comercial', 21),
('Peso de Chumbo', 'Peso feito de chumbo refinado', 22),
('Fio de Prata', 'Fio feito de prata esterlina', 23),
('Anel de Ouro', 'Anel feito de ouro 24k', 24),
('Contato de Platina', 'Contato feito de platina pura', 25),
('Broca de Aço Ferramenta', 'Broca feita de aço ferramenta D2', 26),
('Flange de Ferro Fundido', 'Flange feita de ferro fundido cinzento', 27),
('Tubo de Polietileno', 'Tubo feito de polietileno de alta densidade', 28),
('Chapa de Polipropileno', 'Chapa feita de polipropileno isotático', 29),
('Roda de Poliuretano', 'Roda feita de poliuretano flexível', 30),
('Colete de Kevlar', 'Colete feito de Kevlar para blindagem', 31),
('Contrapeso de Bismuto', 'Contrapeso feito de bismuto puro', 32),
('Imã de Cobalto', 'Imã feito de cobalto grau industrial', 33),
('Fio de Wolframio', 'Fio feito de wolframio (tungstênio) puro', 34),
('Parafuso de Níquel-Cromo', 'Parafuso feito de liga de níquel-cromo', 35),
('Estrutura de Titânio-Alumínio', 'Estrutura feita de liga de titânio-alumínio', 36),
('Placa de Silício-Carbeto', 'Placa feita de silício-carbeto', 37),
('Barra de Ferro', 'Barra feita de ferro puro', 38),
('Conector de Latão Vermelho', 'Conector feito de latão vermelho 85/15', 39),
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
('João Silva', 35, 'Operador de Máquinas', 'Rua das Indústrias, 123', '123-456-7890'),
('Maria Santos', 28, 'Técnico Eletricista', 'Avenida dos Eletricistas, 456', '987-654-3210'),
('Pedro Oliveira', 42, 'Engenheiro de Produção', 'Travessa das Engenharias, 789', '456-789-0123'),
('Ana Souza', 30, 'Analista de Qualidade', 'Rua da Qualidade, 789', '321-654-0987'),
('Carlos Lima', 25, 'Auxiliar de Produção', 'Rua da Produção, 567', '789-012-3456'),
('Fernanda Costa', 38, 'Gerente de Operações', 'Avenida dos Gerentes, 234', '234-567-8901'),
('Rodrigo Almeida', 33, 'Técnico Mecânico', 'Avenida dos Mecânicos, 678', '567-890-1234'),
('Juliana Ferreira', 29, 'Operadora de Montagem', 'Rua das Montagens, 345', '890-123-4567'),
('Marcos Santos', 40, 'Supervisor de Logística', 'Rua da Logística, 901', '678-901-2345'),
('Patrícia Gomes', 31, 'Engenheira de Processos', 'Avenida dos Processos, 123', '456-789-0123'),
('Luiz Oliveira', 27, 'Operador de Empilhadeira', 'Travessa das Empilhadeiras, 456', '789-012-3456'),
('Aline Costa', 36, 'Técnica de Segurança do Trabalho', 'Rua da Segurança, 789', '234-567-8901'),
('Rafaela Lima', 32, 'Analista de Sistemas', 'Avenida dos Sistemas, 234', '567-890-1234'),
('Gustavo Santos', 26, 'Auxiliar Administrativo', 'Rua da Administração, 567', '890-123-4567'),
('Camila Almeida', 39, 'Coordenadora de Qualidade', 'Avenida da Qualidade, 901', '678-901-2345'),
('Daniel Ferreira', 28, 'Técnico de Manutenção', 'Rua da Manutenção, 123', '456-789-0123'),
('Carla Oliveira', 34, 'Supervisora de Produção', 'Travessa da Produção, 456', '789-012-3456'),
('José Costa', 37, 'Gerente de Recursos Humanos', 'Rua dos Recursos Humanos, 789', '234-567-8901'),
('Roberta Lima', 29, 'Engenheira de Qualidade', 'Avenida da Qualidade, 234', '567-890-1234'),
('Antônio Silva', 35, 'Inspetor de Controle de Qualidade', 'Rua do Controle de Qualidade, 567', '890-123-4567');

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
('Máquina de Moldagem', 'Moldagem', 'Fabrimec', 'MOL-001', 3, 'Máquina usada para moldagem de peças plásticas.'),
('Fresadora CNC', 'CNC', 'TechMach', 'CNC-002', 1, 'Fresadora CNC para usinagem de precisão.'),
('Impressora 3D', 'Impressora 3D', 'TechPrint', '3D-003', 2, 'Impressora 3D para prototipagem rápida.'),
('Máquina de Injeção', 'Injeção', 'Plasmatron', 'INJ-004', 5, 'Máquina de injeção de plástico.'),
('Torno Automático', 'Torno', 'MetalMech', 'TOR-005', 4, 'Torno automático para usinagem de metais.'),
('Empilhadeira Elétrica', 'Empilhadeira', 'LogiTech', 'EMP-006', 2, 'Empilhadeira elétrica para movimentação de materiais.'),
('Robô de Solda', 'Robô', 'WeldTech', 'ROB-007', 1, 'Robô de solda automatizado para linhas de produção.'),
('Máquina de Corte a Laser', 'Corte a Laser', 'LaserCut', 'LAS-008', 3, 'Máquina de corte a laser para materiais diversos.'),
('Máquina de Costura Industrial', 'Costura', 'SewPro', 'COS-009', 2, 'Máquina de costura industrial para tecidos.'),
('Máquina de Embalagem Automática', 'Embalagem', 'PackTech', 'EMB-010', 4, 'Máquina automática para embalagem de produtos.'),
('Centro de Usinagem Vertical', 'Usinagem', 'MachTech', 'CUS-011', 3, 'Centro de usinagem vertical para peças complexas.'),
('Máquina de Solda por Ultrassom', 'Solda', 'UltraWeld', 'SOL-012', 1, 'Máquina de solda por ultrassom para plásticos.'),
('Prensa Hidráulica', 'Prensa', 'HydroPress', 'PRE-013', 5, 'Prensa hidráulica para conformação de peças.'),
('Máquina de Fundição', 'Fundição', 'CastingTech', 'FUN-014', 3, 'Máquina de fundição de metais.'),
('Máquina de Pintura Automática', 'Pintura', 'AutoPaint', 'PIN-015', 2, 'Máquina automatizada para pintura de superfícies.'),
('Máquina de Lixamento Automático', 'Lixamento', 'SandTech', 'LIX-016', 4, 'Máquina automática para lixamento de peças.'),
('Máquina de Inspeção Visual', 'Inspeção', 'VisTech', 'INS-017', 3, 'Máquina de inspeção visual para controle de qualidade.'),
('Máquina de Corte e Dobra de Chapas', 'Corte e Dobra', 'SheetTech', 'COR-018', 1, 'Máquina para corte e dobra de chapas metálicas.'),
('Máquina de Secagem Industrial', 'Secagem', 'DryTech', 'SEC-019', 2, 'Máquina industrial para secagem de produtos.'),
('Máquina de Calibração de Peças', 'Calibração', 'CalibraTech', 'CAL-020', 4, 'Máquina para calibração precisa de peças.');



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
