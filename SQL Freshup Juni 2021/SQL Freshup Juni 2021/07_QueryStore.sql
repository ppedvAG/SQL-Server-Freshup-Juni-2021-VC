--QueryStore.. Sammlen von Messdaten und Plänen

select * into ku1 from ku

--Eindeutigkeit
alter table ku1 add id int identity


select * from ku1 where id < 2

/*
SCAN: A bis Z Suche.. komplettes Durchsuchen 
SEEK: Herauspicken

HEAP: Sauhaufen

N GR IX: Kopie von Daten in sortierter Form
		 Zeiger zu den OrgDatensatz (1:204:03)
		 ca 1000mal pro Tabelle
		 gut bei rel geringer Ergebnismenge
		 ? rel gering: 1%


GR IX  Datsätze werden sortiert abgelegt
		=Tabelle
		nur 1mal pro Tabelle
		bes. gut bei Bereichsabfragen
		select * from customers



*/

--Festlegung: orderdate für CL IX reserviert
set statistics io, time on
select * from ku1 where id < 2
--Seiten 61118
--CPU-Zeit = 265 ms, verstrichene Zeit = 72 ms.

--NIX_ID
--4 Seiten
--, CPU-Zeit = 0 ms, verstrichene Zeit = 0 ms.

create proc gpdemo @par int
as
select * from ku1 where id < @par

exec gpdemo 2
--4 Seiten..

select * from ku1 where id < 1000000

--61000
--, CPU-Zeit = 3375 ms, verstrichene Zeit = 21235 ms.

exec gpdemo 1000000


--Immer SEEK oder immer SCAN

exec gpdemo 2
dbcc freeproccache

alter database scoped configuration clear procedure_cache