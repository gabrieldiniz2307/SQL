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