--schulung\Administrator
--ppedv2020!

--NT Service\MSSQL$FE  virt Account
--kein Kennwort notwendig... OS k�mmert sich mm Kennw�rter
--lok Konto.. kein Netzwerkzugriff..
---stattdessen Computerkonto

--Benutzerkonten sind m�glich: svcAgent
--trotzdem wird der lok Zugriff immer mit den virt Konten erledigt


--Volumewartungstask: Ausnullen bei Vergr��ern
-- 4GB: 4,1 Sek ohne   mit 1,8 Sek


--Trenne Log von Daten pro DB


---TEMPDB


/*
#temp ##tab
IX with sort in tempdb
Auslagerung (ot bei Sortieren und falschen Einsch�tzen ds RAM f�r ABfrage)

Zeilenversionierung
Kopien in tempdb 

trenne log von Daten (eigtl besser noch pro DB �berlegen

Datendateien soviele wie Kerne, aber nicht mehr als 8

-T1117  gleich gro�e Dateien
-T1118 uniform Extents
--Traceflag


--MAXDOP: wird begrenzt auf Anzahl der kerne max 8
--fr�her 0
--kann nun auch pro DB eingestellt werden

Scoped Database: einige Einstellungen lassen sich auch pro DB einstellen








*/


