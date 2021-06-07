--1 Socket 4 CPus
--16 GB RAM

--NUMA...Zuordnung der Sockets zu Speicherslots..
--Der Zugriff auf Speicherslots, die nicht zum 
--Socket gehören sind CPU aufwendiger

--kein Dynamischer SPeicher bei SQL Virt..

--16GB-4GB(HOST)--2GB -4,5GB  -4,5GB

HV-DC: 2048MB  (512-2048) dynamisch
	   1CPU (Hardwaretopologie anwenden)


HV-SQL1: 4 CPU (Hardwaretopologie)
		 4500 fix RAM

HV-SQL2: 4 CPU (Hardwaretopologie)
		  4500 MB fix