--Wachstumsraten wurde angepasst.. 8 MB Startgörße
--Wachstum 64MB..

--immer noch nciht optimal
--denke an VLF (virt. Logfile)..es sollten nicht mehr als 1000 sein

--alle 60 Sekunden Checkpoints um Schreibbugwellen zu vermeiden

--Zeilenversioninerung und Read Committed Snapshot im Menü

Löschen des Prozedurcaches.
Festlegen des MAXDOP-Parameters auf einen beliebigen Wert (1,2, ...) für die primäre Datenbank, basierend auf dem, was am besten für diese bestimmte Datenbank ist, und Festlegen eines anderen Werts (z. B. 0) für alle verwendeten sekundären Datenbanken (z. B. für Berichtsabfragen).
Festlegen des Kardinalitätsschätzungsmodells für den Abfrageoptimierer unabhängig von der Datenbank auf den Kompatibilitätsgrad.
Aktivieren oder Deaktivieren der Parameterermittlung auf Datenbankebene.
Aktivieren oder Deaktivieren der Abfrageoptimierungs-Hotfixes auf Datenbankebene.
Aktivieren oder Deaktivieren des Identitätscache auf Datenbankebene.
Aktivieren oder Deaktivieren eines Stubs des kompilierten Plans, der bei der erstmaligen Kompilierung eines Batches im Cache gespeichert werden soll.
Aktivieren oder Deaktivieren von Sammlungen von Ausführungsstatistiken für nativ kompilierte Transact-SQL-Module.
Aktivieren oder Deaktivieren von „online by default“-Optionen (Standardmäßig online) für DDL-Anweisungen, die die ONLINE =-Syntax unterstützen.
Aktivieren oder Deaktivieren von „resumable by default“-Optionen (Standardmäßig fortsetzbar) für DDL-Anweisungen, die die RESUMABLE =-Syntax unterstützen.
Aktivieren oder Deaktivieren der Features der intelligenten Abfrageverarbeitung
Aktivieren oder Deaktivieren des beschleunigten Erzwingens des Plans.
Aktivieren oder Deaktivieren der Funktion für automatisches Löschen von globalen temporären Tabellen
Aktivieren oder Deaktivieren der einfachen Profilerstellungsinfrastruktur für Abfragen
Aktivieren oder Deaktivieren der neuen String or binary data would be truncated-Fehlermeldung
Aktivieren oder Deaktivieren des letzten tatsächlichen Ausführungsplans in sys.dm_exec_query_plan_stats
Geben Sie die Anzahl der Minuten an, in denen ein angehaltener fortsetzbarer Indexvorgang angehalten wird, bevor er von der Datenbank-Engine automatisch abgebrochen wird.
Aktivieren oder Deaktivieren des Wartens auf Sperren mit niedriger Priorität für asynchrone Statistikupdates.