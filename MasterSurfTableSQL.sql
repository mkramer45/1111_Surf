-- Create Master Table --
CREATE TABLE SurfMaster2 AS
select SurfReport.ID, SurfReport.SwellSizeFt, SurfReport.SwellIntervalSec, WindInfo.WindMPH, WindDirection.WindDescription, SurfReport.AirTemp
from SurfReport
inner join WindInfo on SurfReport.ID = WindInfo.ID
inner join WindDirection on WindInfo.ID = WindDirection.ID

--Adds Beachname column
ALTER TABLE SurfMaster2
  ADD beach_name TEXT;

-- Updates Beachname Column with Appropriate value
UPDATE SurfMaster2
SET beach_name = 'Narragansett'
WHERE
 ID BETWEEN 1 AND 56;
 
 --Adds Date column
ALTER TABLE SurfMaster2
  ADD date_ TEXT;

 --First 8 records are for (current_day)
	-- and so on and so fourth ... ie second 8 records are for getdate(+1)
UPDATE SurfMaster2
SET date_ = date('now')
WHERE
 ID BETWEEN 1 AND 8;

-- 2nd set of 8 records ... getdate(+1)
UPDATE SurfMaster2
SET date_ = date('now','+1 day')
WHERE
 ID BETWEEN 9 AND 16;

-- 2nd set of 8 records ... getdate(+2)
UPDATE SurfMaster2
SET date_ = date('now','+2 day')
WHERE
 ID BETWEEN 17 AND 24;
 
-- 3rd set of 8 records ... getdate(+3)
UPDATE SurfMaster2
SET date_ = date('now','+3 day')
WHERE
 ID BETWEEN 25 AND 32;

-- 4th set of 8 records ... getdate(+4)
UPDATE SurfMaster2
SET date_ = date('now','+4 day')
WHERE
 ID BETWEEN 33 AND 40;
 
-- 5th set of 8 records ... getdate(+5)
UPDATE SurfMaster2
SET date_ = date('now','+5 day')
WHERE
 ID BETWEEN 41 AND 48;

 -- 6th set of 8 records ... getdate(+6)
UPDATE SurfMaster2
SET date_ = date('now','+6 day')
WHERE
 ID BETWEEN 49 AND 56;
 
 
 


