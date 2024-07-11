CREATE OR ALTER VIEW VENDAS AS
-- Cria uma view chamada VENDAS_INTERNET.

SELECT 
    fs.SalesOrderNumber AS 'N�mero do pedido',
    -- Seleciona o n�mero do pedido da tabela FactInternetSales e atribui o alias 'N�mero do pedido'.
    
    fs.OrderDate AS 'Data do pedido',
    -- Seleciona a data do pedido da tabela FactInternetSales e atribui o alias 'Data do pedido'.
    
    pc.EnglishProductCategoryName AS 'Categoria',
    -- Seleciona o nome da categoria do produto em ingl�s da tabela DimProductCategory e atribui o alias 'Categoria'.
    
    c.FirstName + ' ' + c.LastName AS NomeCliente,
    -- Concatena o primeiro e o �ltimo nome do cliente da tabela DimCustomer, criando uma coluna chamada NomeCliente.
    
    c.Gender AS 'Sexo do cliente',
    -- Seleciona o g�nero do cliente da tabela DimCustomer e atribui o alias 'Sexo do cliente'.
    
    st.SalesTerritoryCountry AS 'Pa�s',
    -- Seleciona o pa�s do territ�rio de vendas da tabela DimSalesTerritory e atribui o alias 'Pa�s'.
    
    fs.OrderQuantity AS 'Quantidade vendida',
    -- Seleciona a quantidade vendida da tabela FactInternetSales e atribui o alias 'Quantidade vendida'.
    
    fs.TotalProductCost AS 'Custo total do produto',
    -- Seleciona o custo total do produto da tabela FactInternetSales e atribui o alias 'Custo total do produto'.
    
    fs.SalesAmount AS 'Receita da venda'
    -- Seleciona a receita da venda da tabela FactInternetSales e atribui o alias 'Receita da venda'.

FROM 
    FactInternetSales fs
    -- Especifica que os dados est�o sendo extra�dos da tabela FactInternetSales, abreviada como fs.

JOIN 
    DimCustomer c ON fs.CustomerKey = c.CustomerKey
    -- Realiza uma jun��o (join) entre FactInternetSales (alias fs) e DimCustomer (alias c) onde a chave do cliente (CustomerKey)
    -- na tabela FactInternetSales � igual � chave do cliente (CustomerKey) na tabela DimCustomer.

JOIN 
    DimSalesTerritory st ON fs.SalesTerritoryKey = st.SalesTerritoryKey
    -- Realiza uma jun��o (join) entre FactInternetSales (alias fs) e DimSalesTerritory (alias st) onde a chave do territ�rio de vendas (SalesTerritoryKey)
    -- na tabela FactInternetSales � igual � chave do territ�rio de vendas (SalesTerritoryKey) na tabela DimSalesTerritory.

JOIN 
    DimProduct p ON fs.ProductKey = p.ProductKey
    -- Realiza uma jun��o (join) entre FactInternetSales (alias fs) e DimProduct (alias p) onde a chave do produto (ProductKey)
    -- na tabela FactInternetSales � igual � chave do produto (ProductKey) na tabela DimProduct.

JOIN 
    DimProductSubcategory ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
    -- Realiza uma jun��o (join) entre DimProduct (alias p) e DimProductSubcategory (alias ps) onde a chave da subcategoria do produto (ProductSubcategoryKey)
    -- na tabela DimProduct � igual � chave da subcategoria do produto (ProductSubcategoryKey) na tabela DimProductSubcategory.

JOIN 
    DimProductCategory pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
    -- Realiza uma jun��o (join) entre DimProductSubcategory (alias ps) e DimProductCategory (alias pc) onde a chave da categoria do produto (ProductCategoryKey)
    -- na tabela DimProductSubcategory � igual � chave da categoria do produto (ProductCategoryKey) na tabela DimProductCategory.

WHERE
    YEAR(fs.OrderDate) = 2013;
    -- Filtra os resultados para incluir apenas as vendas realizadas no ano de 2013, utilizando a coluna OrderDate da tabela FactInternetSales (alias fs).



