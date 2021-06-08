/*

best practice

Volumewartungstask

tempdb mehr Files , gleiche Größen bei den Datendatein, uniform extents (Latch)
	soviele Dateien wie Kerne max 8

MAXDOP max Anzahl der CPUs für eine Frage. Max 8 
Tipp beginn mit der Hälfte

Kostenschwellwert deutlich zu gering: 5 SQL Dollar  (25)

SCOPED DATABASES: MAXDOP pro DB

Arbeitsspeicher: Gesamt minus OS

DatenbankSettings:
	Initialgrößen  :-(


ALTER  DATABASE NewStyle SET ACCELERATED_DATABASE_RECOVERY = ON;


Kardinalsschätzung

Recoverytime 60 

Indizes: Columnstore 2012 (n gr CS IX)
		 gr CS IX (SQL 2014)
		 --Batch Modus--> Abfrage auf Nicht CS Tabellen
		 --in Kombi mit inMemory Tabellen

		 Hochkomprimiert, aber 1:1 in RAM
		 Weniger CPU

		gut geeignet bei: Archivtabellen
		INS UP DEL --> delta Store = HEAP



			

*/

select  * from ku2 where productid = 60

select * into ku3 from ku2

select  * from ku3 where Quantity=2 and productID = 10