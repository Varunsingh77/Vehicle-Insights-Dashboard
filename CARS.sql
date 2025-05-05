select *
from cardata_csv;

select  Latest_Launch
from cardata_csv
where Latest_Launch like '%-%';

select  Latest_Launch
from cardata_csv
where Latest_Launch like '%/%';

ALTER TABLE cardata_csv ADD COLUMN Latest_Launch_Date DATE;

UPDATE cardata_csv
SET Latest_Launch_Date = STR_TO_DATE(Latest_Launch, '%m/%d/%Y')
WHERE Latest_Launch LIKE '%/%/%';

UPDATE cardata_csv
SET Latest_Launch_Date = STR_TO_DATE(Latest_Launch, '%d-%m-%Y')
WHERE Latest_Launch LIKE '%-%-%' ;

SELECT Latest_Launch_Date
FROM cardata_csv;

ALTER TABLE cardata_csv
DROP Latest_Launch
;

ALTER TABLE cardata_csv
RENAME COLUMN latest_launch_date TO launch_date
;
