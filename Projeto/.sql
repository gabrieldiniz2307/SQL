CREATE OR ALTER VIEW VENDAS AS
-- Cria uma view chamada VENDAS_INTERNET.

SELECT 
    fs.SalesOrderNumber AS 'Número do pedido',
    -- Seleciona o número do pedido da tabela FactInternetSales e atribui o alias 'Número do pedido'.
    
    fs.OrderDate AS 'Data do pedido',
    -- Seleciona a data do pedido da tabela FactInternetSales e atribui o alias 'Data do pedido'.
    
    pc.EnglishProductCategoryName AS 'Categoria',
    -- Seleciona o nome da categoria do produto em inglês da tabela DimProductCategory e atribui o alias 'Categoria'.
    
    c.FirstName + ' ' + c.LastName AS NomeCliente,
    -- Concatena o primeiro e o último nome do cliente da tabela DimCustomer, criando uma coluna chamada NomeCliente.
    
    c.Gender AS 'Sexo do cliente',
    -- Seleciona o gênero do cliente da tabela DimCustomer e atribui o alias 'Sexo do cliente'.
    
    st.SalesTerritoryCountry AS 'País',
    -- Seleciona o país do território de vendas da tabela DimSalesTerritory e atribui o alias 'País'.
    
    fs.OrderQuantity AS 'Quantidade vendida',
    -- Seleciona a quantidade vendida da tabela FactInternetSales e atribui o alias 'Quantidade vendida'.
    
    fs.TotalProductCost AS 'Custo total do produto',
    -- Seleciona o custo total do produto da tabela FactInternetSales e atribui o alias 'Custo total do produto'.
    
    fs.SalesAmount AS 'Receita da venda'
    -- Seleciona a receita da venda da tabela FactInternetSales e atribui o alias 'Receita da venda'.

FROM 
    FactInternetSales fs
    -- Especifica que os dados estão sendo extraídos da tabela FactInternetSales, abreviada como fs.

JOIN 
    DimCustomer c ON fs.CustomerKey = c.CustomerKey
    -- Realiza uma junção (join) entre FactInternetSales (alias fs) e DimCustomer (alias c) onde a chave do cliente (CustomerKey)
    -- na tabela FactInternetSales é igual à chave do cliente (CustomerKey) na tabela DimCustomer.

JOIN 
    DimSalesTerritory st ON fs.SalesTerritoryKey = st.SalesTerritoryKey
    -- Realiza uma junção (join) entre FactInternetSales (alias fs) e DimSalesTerritory (alias st) onde a chave do território de vendas (SalesTerritoryKey)
    -- na tabela FactInternetSales é igual à chave do território de vendas (SalesTerritoryKey) na tabela DimSalesTerritory.

JOIN 
    DimProduct p ON fs.ProductKey = p.ProductKey
    -- Realiza uma junção (join) entre FactInternetSales (alias fs) e DimProduct (alias p) onde a chave do produto (ProductKey)
    -- na tabela FactInternetSales é igual à chave do produto (ProductKey) na tabela DimProduct.

JOIN 
    DimProductSubcategory ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
    -- Realiza uma junção (join) entre DimProduct (alias p) e DimProductSubcategory (alias ps) onde a chave da subcategoria do produto (ProductSubcategoryKey)
    -- na tabela DimProduct é igual à chave da subcategoria do produto (ProductSubcategoryKey) na tabela DimProductSubcategory.

JOIN 
    DimProductCategory pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
    -- Realiza uma junção (join) entre DimProductSubcategory (alias ps) e DimProductCategory (alias pc) onde a chave da categoria do produto (ProductCategoryKey)
    -- na tabela DimProductSubcategory é igual à chave da categoria do produto (ProductCategoryKey) na tabela DimProductCategory.

WHERE
    YEAR(fs.OrderDate) = 2013;
    -- Filtra os resultados para incluir apenas as vendas realizadas no ano de 2013, utilizando a coluna OrderDate da tabela FactInternetSales (alias fs).



