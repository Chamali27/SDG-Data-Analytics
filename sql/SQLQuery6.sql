-- Create a unified table if not exists
CREATE TABLE MainSDGData (
    Country_Name NVARCHAR(100),
    Indicator_Name NVARCHAR(200),
    Year INT,
    Value FLOAT
);

-- Insert data from all datasets
INSERT INTO MainSDGData (Country_Name, Indicator_Name, Year, Value)
SELECT Country_Name, Indicator_Name, Year, Value FROM SI_POV_DAY1;

INSERT INTO MainSDGData (Country_Name, Indicator_Name, Year, Value)
SELECT Country_Name, Indicator_Name, Year, Value FROM SH_STA_MORT;

-- Repeat for other datasets
-- Insert data from all datasets
INSERT INTO MainSDGData (Country_Name, Indicator_Name, Year, Value)
SELECT Country_Name, Indicator_Name, Year, Value FROM SH_ACS_UNHC;

INSERT INTO MainSDGData (Country_Name, Indicator_Name, Year, Value)
SELECT Country_Name, Indicator_Name, Year, Value FROM EN_ATM_GHGT_NAIP;
-- Insert data from all datasets
INSERT INTO MainSDGData (Country_Name, Indicator_Name, Year, Value)
SELECT Country_Name, Indicator_Name, Year, Value FROM EN_ATM_GHGT_AIP;

INSERT INTO MainSDGData (Country_Name, Indicator_Name, Year, Value)
SELECT Country_Name, Indicator_Name, Year, Value FROM DC_ODA_SIDS;