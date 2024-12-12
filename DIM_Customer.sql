SELECT 
  c.[CustomerKey]
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  ,c.[FirstName] AS [First Name] --,[MiddleName]
  ,c.[LastName] AS [Last Name]
  ,c.FirstName + ' ' + c.LastName AS FullName --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  ,CASE c.[Gender] WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS GENDER --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  ,c.[DateFirstPurchase] --,[CommuteDistance]
  ,g.City AS [Customer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN DimGeography AS g ON c.GeographyKey = g.GeographyKey 
order by 
  CustomerKey ASC
