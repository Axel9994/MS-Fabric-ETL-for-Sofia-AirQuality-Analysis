drop table if exists airquality_gold;
go
create table airquality_gold
as select  
        a.lat,
        a.lon,
        a.year, 
        a.month, 
        a.day, 
        a.hour, 
        CAST(DATENAME(dw, a.timestamp) as varchar(30)) as day_of_week,
        DATEPART(dw, a.timestamp) as nday_ofweek,
        FLOOR(a.humidity / 10) as bucket_humidity,
        STR(FLOOR(a.humidity / 10) * 10) as bucket_humidity_desc,
        FLOOR(a.average_temperature / 5) as bucket_temperature,
        CONCAT(STR(FLOOR(a.average_temperature / 5) * 5), ' - ', STR(FLOOR(a.average_temperature / 5) * 5 + 4)) as bucket_temperature_desc,
        avg(Pollution_total) as average_pollution
from mi_lakehouse.dbo.airquality a 
group by lat, lon, year, month, day, hour, CAST(DATENAME(dw, a.timestamp) as varchar(30)), DATEPART(dw, a.timestamp), FLOOR(a.humidity / 10), STR(FLOOR(a.humidity / 10) * 10), FLOOR(a.average_temperature / 5), CONCAT(STR(FLOOR(a.average_temperature / 5) * 5), ' - ', STR(FLOOR(a.average_temperature / 5) * 5 + 4));
go