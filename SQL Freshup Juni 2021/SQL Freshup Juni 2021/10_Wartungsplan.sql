--Wartungsplan: 
-- Indizes, Statistiken

/*

erst seit ca. SQL 2016 im SSMS enthalten
Fragementierung 
Rebuild ab 30%
Reorg ab 10%

Statistikaktualisierung
jeden Tag

Tabelle mit 100000 (Wert A kommt 10 mal vor)
rel wenig--> NGR IX
rel viel--> GR IX 

I U D--> 20% +500+Abfrage 


*/

select * from sys.dm_db_index_usage_stats

Ola Hallengreen

200MB Heap-- CL IX + 2NGR IX= 363MB

--offline
--online
--mit tempdb und ohne tempdb

--aufwendigste: Online + mit TempDB  1100MB


--DS darf max 8060bytes  8192bytes
--1 DS muss reinpassen
--1 DS 4100
set statistics io, time on
select * from ku1 where lastname like '%A%'--61118

dbcc showcontig('ku1')

--Achtung: neue Spalte ID  wurde ausgelagert



--wenigst: OFFLINE + ohne temdb       890MB


select * from sys.dm_db_index_physical_stats
	(db_id(), object_id('ku1'), NULL, NULL, 'Detailed')

	--forward Record Counts: 13600 Seiten für ID
	--Tabelle hat 47000 Seiten
	--Tabelle muss physikalisch neu abgelegt werden
	--



