
CREATE DATABASE AI_Jobs_Analysis_240115
USE AI_Jobs_Analysis_240115
GO


SELECT TOP 100*
FROM dbo.AI_Power

UPDATE dbo.AI_Power
SET Salary_USD = ROUND(Salary_USD, 2)

ALTER TABLE dbo.AI_Power
	ALTER COLUMN Salary_USD DECIMAL(10,2)

SELECT TOP 100*
FROM dbo.AI_Power

SELECT TOP 100*
FROM dbo.DataScience_Jobs
	ALTER TABLE dbo.AI_Power
		ALTER COLUMN Salary_USD DECIMAL(10,2)

SELECT TOP 100*
FROM dbo.Cities

ALTER TABLE dbo.Cities  
DROP COLUMN lat, lng, capital,id

ALTER TABLE dbo.AI_Power  
	ADD Country VARCHAR(max)

UPDATE dbo.AI_Power  
SET dbo.AI_Power.Country = B.Country  
FROM dbo.AI_Power AS A LEFT JOIN dbo.Cities AS B ON A.Location = B.city

SELECT TOP 100*
FROM dbo.AI_Power

ALTER TABLE dbo.DataScience_Jobs  
	ADD Country VARCHAR(max)

UPDATE dbo.DataScience_Jobs  
SET dbo.DataScience_Jobs.Country = B.Country  
FROM dbo.DataScience_Jobs AS A LEFT JOIN dbo.Cities AS B ON A.company_location = B.iso2

SELECT TOP 100*
FROM dbo.AI_Power