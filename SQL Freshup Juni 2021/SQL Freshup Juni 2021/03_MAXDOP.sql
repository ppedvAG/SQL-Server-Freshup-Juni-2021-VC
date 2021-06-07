--HV-SQL1
--Ebene: 15/16


schulung\Administrator
ppedv2019!


---spieltabelle

SELECT        Customers.CustomerID, Customers.CompanyName, Customers.ContactName, Customers.ContactTitle, Customers.City, Customers.Country, Orders.EmployeeID, Orders.OrderDate, Orders.Freight, Orders.ShipName, 
                         Orders.ShipCity, Orders.ShipCountry, Employees.LastName, Employees.FirstName, Employees.BirthDate, [Order Details].OrderID, [Order Details].ProductID, [Order Details].UnitPrice, [Order Details].Quantity, 
                         Products.ProductName, Products.UnitsInStock
INTO KU
FROM            Customers INNER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID INNER JOIN
                         Employees ON Orders.EmployeeID = Employees.EmployeeID INNER JOIN
                         [Order Details] ON Orders.OrderID = [Order Details].OrderID INNER JOIN
                         Products ON [Order Details].ProductID = Products.ProductID

--bis ca 1,1 Mio...wiederholen
insert into ku
select * from ku

set statistics io, time on
--Anzahl der Seiten von IO = Seiten im RAM
--je weniger Seiten , desto besser 
--zb Indizes, Partitionierung, Kompression
--Dauer der Ausführung (ms) CPU Aufwand in ms


select country, sum(freight) from KU
group by country option (maxdop 6)
--lt Messung: 4 oder 6 CPUs sind opitmaler als alle 8

--Doppelpfeile: Hinweis auf MAXDOP
--Sind mehr CPUs für eine Abfrage besser?
--ja

--Wieviele CPUs verwendet , falls mehr CPU eingestezt werden?
--Wenn best Kosten (default 5) überschritten wird: alle Prozessoren
--default : 0

--wenn auf einer DB nichts konkret eingestellt wurde, git das Setting des Servers

USE [Northwind]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 4;
GO

select country, sum(freight) from KU
group by country




--Taucht im pLan ein Gather Stream und ein Repartion Stream auf,
--dann ist die Chance mit weniger CPU besser wegzukommen sehr hoch



--100MB-----10 VLF (10MB)
--100MB+    10VLF

10000

1 MB 10

1000MB 10

--nicht mehr als 1000

LogFile sollte nie wachsen
Bei TBackup sollte es ca 70% gefüllt
max Datenverlust
