

EXEC sp_rename 'stg_sdg_raw.Reporting_type', 'ReportingType';

DROP TABLE IF EXISTS DimCountry;

CREATE TABLE DimCountry (
    CountryID INT IDENTITY(1,1) PRIMARY KEY,
    GeoAreaCode NVARCHAR(50),
    GeoAreaName NVARCHAR(200)
);

INSERT INTO DimCountry (GeoAreaCode, GeoAreaName)
SELECT DISTINCT 
    GeoAreaCode,
    GeoAreaName
FROM stg_sdg_raw
WHERE GeoAreaName IS NOT NULL;
