-- Preview
SELECT TOP 10 * FROM MainSDGData;

-- Distinct countries
SELECT DISTINCT Country_Name FROM MainSDGData;

-- Distinct indicators
SELECT DISTINCT Indicator_Name FROM MainSDGData;

-- Check for remaining NULLs
SELECT * FROM MainSDGData WHERE Value IS NULL;
