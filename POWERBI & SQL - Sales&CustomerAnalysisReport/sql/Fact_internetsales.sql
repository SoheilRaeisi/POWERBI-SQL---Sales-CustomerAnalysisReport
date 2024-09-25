-- cleansed fact_internetSales table --
SELECT
	ProductKey,
    OrderDateKey,
    DueDateKey,
    ShipDateKey,
    CustomerKey,
    SalesTerritoryKey
    SalesOrderNumber,
    OrderQuantity,
    UnitPrice,
    SalesAmount,
    OrderDate,
	SalesAmount - TaxAmt - Freight AS Profit
  FROM
	FactInternetSales
WHERE
	LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) - 2
ORDER BY
OrderDateKey ASC