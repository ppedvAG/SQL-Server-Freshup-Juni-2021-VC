--GR IX nur einmal pro Tabelle
--where : Bereichsabfragen besonders gut , aber auch bei =

--NICHT GR IX  Kopie der Daten 1000 pro Tabelle
--nur gut, wenn rel wenig rauskommt
--rel wenig kann  zwischen 1 % und 99 % 


eindeutigen IX
zusammengesetzten IX
abdeckenden IX
ind Sicht
part Index (gibts nun auch für SQL 2016 ab STD Version mit SP1)
IX mit eingeschl Spalten
realer hypothetischer IX (für ein Tool DTA)
gefilterter IX 2005 STD
Columnstore IX

select top 3 * from ku1

--UMSATZ pro LAND, die wo Lastname = King
set statistics io, time on
select sum(unitprice*quantity) , country from ku1 where 
	lastname = 'King'
	group by country
-- 570 Seiten mit ca 31 ms Dauer


select avg(freight) , country, city from ku1 where 
	customerid = 'ALFKI' OR Unitsinstock < 2
	group by country, city


select avg(freight) , country, city from ku1 where 
	country='USA' and City = 'New York'
	group by country, city


--je weniger IO desto besser
--Kompression
--Tabelle komprimieren: Zeilenkompr oder Seitenkompression


--bei Seitenkompression statt 430MB nur noch 130MB

--bei Abfragen: mehr CPU Leistung
--weniger IO
--Seiten kommen 1:1 in RAM (auch komprimiert)
--bei deutlich weniger IO
--Wir sparen RAM zugunsten anderer Tabellen
--normalerweise ca 40 bis 60%

select * into ku2 from ku1 --KU2 ohne Indizes



select sum(unitprice*quantity) , country from ku2 where 
	lastname = 'King'
	group by country


--? 4,3 MB statt 430MB-- Kompression 134 MB ???


--Columnstore
select * from sys.dm_db_column_store_row_group_physical_stats





