-- Check missing values
SELECT * FROM SI_POV_DAY1 WHERE Value IS NULL;

-- Replace missing numeric values with 0
UPDATE SI_POV_DAY1
SET Value = 0
WHERE Value IS NULL;

-- Optional: Replace missing text with 'Unknown'
UPDATE SI_POV_DAY1
SET Country_Name = 'Unknown'
WHERE Country_Name IS NULL;

--done

-- Check missing values
SELECT * FROM SH_STA_MORT WHERE Value IS NULL;

-- Replace missing numeric values with 0
UPDATE SH_STA_MORT
SET Value = 0
WHERE Value IS NULL;

-- Optional: Replace missing text with 'Unknown'
UPDATE SH_STA_MORT
SET Country_Name = 'Unknown'
WHERE Country_Name IS NULL;

--done

-- Check missing values
SELECT * FROM SH_ACS_UNHC WHERE Value IS NULL;

-- Replace missing numeric values with 0
UPDATE SH_ACS_UNHC
SET Value = 0
WHERE Value IS NULL;

-- Optional: Replace missing text with 'Unknown'
UPDATE SH_ACS_UNHC
SET Country_Name = 'Unknown'
WHERE Country_Name IS NULL;
--done

-- Check missing values
SELECT * FROM EN_ATM_GHGT_NAIP WHERE Value IS NULL;

-- Replace missing numeric values with 0
UPDATE EN_ATM_GHGT_NAIP
SET Value = 0
WHERE Value IS NULL;

-- Optional: Replace missing text with 'Unknown'
UPDATE EN_ATM_GHGT_NAIP
SET Country_Name = 'Unknown'
--done

-- Check missing values
SELECT * FROM EN_ATM_GHGT_AIP WHERE Value IS NULL;

-- Replace missing numeric values with 0
UPDATE EN_ATM_GHGT_AIP
SET Value = 0
WHERE Value IS NULL;

-- Optional: Replace missing text with 'Unknown'
UPDATE EN_ATM_GHGT_AIP
SET Country_Name = 'Unknown'
WHERE Country_Name IS NULL;
--done

-- Check missing values
SELECT * FROM DC_ODA_SIDS WHERE Value IS NULL;

-- Replace missing numeric values with 0
UPDATE DC_ODA_SIDS
SET Value = 0
WHERE Value IS NULL;

-- Optional: Replace missing text with 'Unknown'
UPDATE DC_ODA_SIDS
SET Country_Name = 'Unknown'
WHERE Country_Name IS NULL;
