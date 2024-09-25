-- cleansed Dim_Product table --
SELECT
p.ProductKey,
p.ProductAlternateKey AS ProductItemCode,
p.EnglishProductName As 'Product Name',
ps.EnglishProductSubcategoryName AS 'Sub category',
pc.EnglishProductCategoryName AS 'Product category',
P.Color AS 'Product Color',
p.Size AS 'Product Size',
p.ProductLine AS 'Product Line',
p.ModelName AS 'Product Model Name',
p.EnglishDescription AS 'Product Description',
ISNULL (p.Status, 'OutDated') As 'Product Status'
  FROM
	[dbo].[DimProduct] AS p
	LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = p.ProductSubcategoryKey
ORDER BY
	p.ProductKey ASC
