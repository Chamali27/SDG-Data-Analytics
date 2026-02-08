-- Example for Dataset1
EXEC sp_rename 'dbo.SI_POV_DAY1.GeoAreaName', 'Country_Name', 'COLUMN';
EXEC sp_rename 'dbo.SI_POV_DAY1.Indicator', 'Indicator_Name', 'COLUMN';
EXEC sp_rename 'dbo.SI_POV_DAY1.TimePeriod', 'Year', 'COLUMN';
EXEC sp_rename 'dbo.SI_POV_DAY1.Value', 'Value', 'COLUMN';

-- Repeat for Dataset2, Dataset3, etc.
EXEC sp_rename 'dbo.SH_STA_MORT.GeoAreaName', 'Country_Name', 'COLUMN';
EXEC sp_rename 'dbo.SH_STA_MORT.Indicator', 'Indicator_Name', 'COLUMN';
EXEC sp_rename 'dbo.SH_STA_MORT.TimePeriod', 'Year', 'COLUMN';
EXEC sp_rename 'dbo.SH_STA_MORT.Value', 'Value', 'COLUMN';

EXEC sp_rename 'dbo.SH_ACS_UNHC.GeoAreaName', 'Country_Name', 'COLUMN';
EXEC sp_rename 'dbo.SH_ACS_UNHC.Indicator', 'Indicator_Name', 'COLUMN';
EXEC sp_rename 'dbo.SH_ACS_UNHC.TimePeriod', 'Year', 'COLUMN';
EXEC sp_rename 'dbo.SH_ACS_UNHC.Value', 'Value', 'COLUMN';

--done

EXEC sp_rename 'dbo.EN_ATM_GHGT_NAIP.GeoAreaName', 'Country_Name', 'COLUMN';
EXEC sp_rename 'dbo.EN_ATM_GHGT_NAIP.Indicator', 'Indicator_Name', 'COLUMN';
EXEC sp_rename 'dbo.EN_ATM_GHGT_NAIP.TimePeriod', 'Year', 'COLUMN';
EXEC sp_rename 'dbo.EN_ATM_GHGT_NAIP.Value', 'Value', 'COLUMN';

EXEC sp_rename 'dbo.EN_ATM_GHGT_AIP.GeoAreaName', 'Country_Name', 'COLUMN';
EXEC sp_rename 'dbo.EN_ATM_GHGT_AIP.Indicator', 'Indicator_Name', 'COLUMN';
EXEC sp_rename 'dbo.EN_ATM_GHGT_AIP.TimePeriod', 'Year', 'COLUMN';
EXEC sp_rename 'dbo.EN_ATM_GHGT_AIP.Value', 'Value', 'COLUMN';

EXEC sp_rename 'dbo.DC_ODA_SIDS.GeoAreaName', 'Country_Name', 'COLUMN';
EXEC sp_rename 'dbo.DC_ODA_SIDS.Indicator', 'Indicator_Name', 'COLUMN';
EXEC sp_rename 'dbo.DC_ODA_SIDS.TimePeriod', 'Year', 'COLUMN';
EXEC sp_rename 'dbo.DC_ODA_SIDS.Value', 'Value', 'COLUMN';