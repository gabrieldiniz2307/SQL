SELECT
	ProductSubcategoryKey AS 'Categoria', -- Noemando a Variavel
	SUM(Weight) AS 'Peso Total', -- Soma total de pesos
	COUNT(*) AS QuantidadeProdutos -- Contatenando todos os produtos e criando coluna
FROM
	DimProduct
WHERE Weight IS NOT NULL -- Excluindo dados faltantes 
GROUP BY ProductSubcategoryKey -- Agrupamento de colunas
ORDER BY 'Peso Total' -- Visualizando por Ordem do menor ao maior 

SELECT
	* -- Selecionando todas os dados da coluna
FROM
	DimProduct -- Nome da coluna

-- Nomeando as Colunas
SELECT
    CustomerKey AS IDCliente,
    FirstName AS Nome,
    EmailAddress AS Email,
    BirthDate AS DataNascimento
FROM
    DimCustomer

-- parte 1
SELECT 
	TOP (100) CONCAT (FirstName, ' ', LastName) AS 'Nome Completo', -- Contatenando
	EmailAddress AS 'Email',
	BirthDate AS 'Data de Nascimento'
FROM
	DimCustomer;

-- Parte 2 
SELECT 
	CONCAT (FirstName, ' ', LastName) AS 'Nome Completo',
	EmailAddress AS 'Email',
	BirthDate AS 'Data de Nascimento'
FROM
	DimCustomer
WHERE FirstName IS NOT NULL -- Excluindo dados nulos 
ORDER BY LoadDate DESC -- Organizando por Data de cadastro (Antigo ao mais novo )

OFFSET 100 ROWS -- pulando as 100 primeiras linhas

