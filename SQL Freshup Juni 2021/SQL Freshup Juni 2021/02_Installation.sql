--schulung\Administrator
--ppedv2020!

--NT Service\MSSQL$FE  virt Account
--kein Kennwort notwendig... OS kümmert sich mm Kennwörter
--lok Konto.. kein Netzwerkzugriff..
---stattdessen Computerkonto

--Benutzerkonten sind möglich: svcAgent
--trotzdem wird der lok Zugriff immer mit den virt Konten erledigt


--Volumewartungstask: Ausnullen bei Vergrößern
-- 4GB: 4,1 Sek ohne   mit 1,8 Sek


--Trenne Log von Daten pro DB


---TEMPDB


/*
#temp ##tab
IX with sort in tempdb
Auslagerung (ot bei Sortieren und falschen Einschätzen ds RAM für ABfrage)

Zeilenversionierung
Kopien in tempdb 

trenne log von Daten (eigtl besser noch pro DB überlegen

Datendateien soviele wie Kerne, aber nicht mehr als 8

-T1117  gleich große Dateien
-T1118 uniform Extents
--Traceflag


--MAXDOP: wird begrenzt auf Anzahl der kerne max 8
--früher 0
--kann nun auch pro DB eingestellt werden

Scoped Database: einige Einstellungen lassen sich auch pro DB einstellen








*/


