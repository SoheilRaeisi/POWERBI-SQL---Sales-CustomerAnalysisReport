-- cleansed DIM_Customer Table --
SELECT
	c.CustomerKey AS CustomerKey
	,c.FirstName + ' ' + LastName AS [Full Name]
	,c.MaritalStatus
	,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
	 ,c.YearlyIncome
	,c.TotalChildren
	 ,c.NumberChildrenAtHome AS KidsAtHome
	 ,c.EnglishOccupation
	,c.BirthDate
	,c.EnglishEducation AS EducationLevel
	,c.DateFirstPurchase
	,g.city AS [Customer City] 
  FROM 
	dbo.DimCustomer AS c
	LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
  ORDER BY
	CustomerKey ASC 