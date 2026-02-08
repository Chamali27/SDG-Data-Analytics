CREATE OR ALTER VIEW dbo.vw_AllSDGData AS
SELECT 
    Goal,
	Target,
    Indicator_Name,
	SeriesCode,
	SeriesDescription,
	GeoAreaCode,
	Country_Name,
    Year,
    Value,
	Time_Detail,
	TimeCoverage,
	UpperBound,
	LowerBound,
	BasePeriod,
	Source,
	GeoInfoUrl,
	FootNote,
	Age,
	NULL AS Freq,
	Location,
	Nature,
	Reporting_Type,
	Sex,
	Units,
    'SI_POV_DAY1' AS SourceTable
FROM dbo.SI_POV_DAY1

UNION ALL

SELECT 
    Goal,
	Target,
    Indicator_Name,
	SeriesCode,
	SeriesDescription,
	GeoAreaCode,
	Country_Name,
    Year,
    Value,
	Time_Detail,
	TimeCoverage,
	UpperBound,
	LowerBound,
	BasePeriod,
	Source,
	GeoInfoUrl,
	FootNote,
	Age,
	Freq,
	Location,
	Nature,
	Reporting_Type,
	Sex,
	Units,
    'SH_STA_MORT' AS SourceTable
FROM dbo.SH_STA_MORT

UNION ALL

SELECT 
    Goal,
	Target,
    Indicator_Name,
	SeriesCode,
	SeriesDescription,
	GeoAreaCode,
	Country_Name,
    Year,
    Value,
	Time_Detail,
	TimeCoverage,
	UpperBound,
	LowerBound,
	BasePeriod,
	Source,
	GeoInfoUrl,
	FootNote,
	NULL AS Age,
	NULL AS Freq,
	NULL AS Location,
	Nature,
	Reporting_Type,
	NULL AS Sex,
	Units,
    'SH_ACS_UNHC' AS SourceTable
FROM dbo.SH_ACS_UNHC

UNION ALL

SELECT 
    Goal,
	Target,
    Indicator_Name,
	SeriesCode,
	SeriesDescription,
	GeoAreaCode,
	Country_Name,
    Year,
    Value,
	Time_Detail,
	TimeCoverage,
	UpperBound,
	LowerBound,
	BasePeriod,
	Source,
	GeoInfoUrl,
	FootNote,
	NULL AS Age,
	NULL AS Freq,
	NULL AS Location,
	Nature,
	Reporting_Type,
	NULL AS Sex,
	Units,
    'EN_ATM_GHGT_NAIP' AS SourceTable
FROM dbo.SH_ACS_UNHC


UNION ALL

SELECT 
    Goal,
	Target,
    Indicator_Name,
	SeriesCode,
	SeriesDescription,
	GeoAreaCode,
	Country_Name,
    Year,
    Value,
	Time_Detail,
	TimeCoverage,
	UpperBound,
	LowerBound,
	BasePeriod,
	Source,
	GeoInfoUrl,
	FootNote,
	NULL AS Age,
	NULL AS Freq,
	NULL AS Location,
	Nature,
	Reporting_Type,
	NULL AS Sex,
	Units,
    'EN_ATM_GHGT_AIP' AS SourceTable
FROM dbo.SH_ACS_UNHC


UNION ALL

SELECT 
    Goal,
	Target,
    Indicator_Name,
	SeriesCode,
	SeriesDescription,
	GeoAreaCode,
	Country_Name,
    Year,
    Value,
	Time_Detail,
	TimeCoverage,
	UpperBound,
	LowerBound,
	BasePeriod,
	Source,
	GeoInfoUrl,
	FootNote,
	NULL AS Age,
	NULL AS Freq,
	NULL AS Location,
	Nature,
	Reporting_Type,
	NULL AS Sex,
	Units,
    'DC_ODA_SIDS' AS SourceTable
FROM dbo.SH_ACS_UNHC;


