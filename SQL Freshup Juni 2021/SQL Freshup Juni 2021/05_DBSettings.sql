--Wachstumsraten wurde angepasst.. 8 MB Startg�r�e
--Wachstum 64MB..

--immer noch nciht optimal
--denke an VLF (virt. Logfile)..es sollten nicht mehr als 1000 sein

--alle 60 Sekunden Checkpoints um Schreibbugwellen zu vermeiden

--Zeilenversioninerung und Read Committed Snapshot im Men�

L�schen des Prozedurcaches.
Festlegen des MAXDOP-Parameters auf einen beliebigen Wert (1,2, ...) f�r die prim�re Datenbank, basierend auf dem, was am besten f�r diese bestimmte Datenbank ist, und Festlegen eines anderen Werts (z. B. 0) f�r alle verwendeten sekund�ren Datenbanken (z. B. f�r Berichtsabfragen).
Festlegen des Kardinalit�tssch�tzungsmodells f�r den Abfrageoptimierer unabh�ngig von der Datenbank auf den Kompatibilit�tsgrad.
Aktivieren oder Deaktivieren der Parameterermittlung auf Datenbankebene.
Aktivieren oder Deaktivieren der Abfrageoptimierungs-Hotfixes auf Datenbankebene.
Aktivieren oder Deaktivieren des Identit�tscache auf Datenbankebene.
Aktivieren oder Deaktivieren eines Stubs des kompilierten Plans, der bei der erstmaligen Kompilierung eines Batches im Cache gespeichert werden soll.
Aktivieren oder Deaktivieren von Sammlungen von Ausf�hrungsstatistiken f�r nativ kompilierte Transact-SQL-Module.
Aktivieren oder Deaktivieren von �online by default�-Optionen (Standardm��ig online) f�r DDL-Anweisungen, die die ONLINE =-Syntax unterst�tzen.
Aktivieren oder Deaktivieren von �resumable by default�-Optionen (Standardm��ig fortsetzbar) f�r DDL-Anweisungen, die die RESUMABLE =-Syntax unterst�tzen.
Aktivieren oder Deaktivieren der Features der intelligenten Abfrageverarbeitung
Aktivieren oder Deaktivieren des beschleunigten Erzwingens des Plans.
Aktivieren oder Deaktivieren der Funktion f�r automatisches L�schen von globalen tempor�ren Tabellen
Aktivieren oder Deaktivieren der einfachen Profilerstellungsinfrastruktur f�r Abfragen
Aktivieren oder Deaktivieren der neuen String or binary data would be truncated-Fehlermeldung
Aktivieren oder Deaktivieren des letzten tats�chlichen Ausf�hrungsplans in sys.dm_exec_query_plan_stats
Geben Sie die Anzahl der Minuten an, in denen ein angehaltener fortsetzbarer Indexvorgang angehalten wird, bevor er von der Datenbank-Engine automatisch abgebrochen wird.
Aktivieren oder Deaktivieren des Wartens auf Sperren mit niedriger Priorit�t f�r asynchrone Statistikupdates.