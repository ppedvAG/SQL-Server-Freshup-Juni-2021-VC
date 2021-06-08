--a Proc  b View c  F() d  adhoc

--schnell.................langsam
--View  Proc  F()  adhoc
--Proc  adhoc|Sicht   F()


--Sicht

create view Vname
as
select ......

select * from (select * from tab where ... ) v

View = Adhoc -- (..ind Sichten)


Procedure (Batch).. gilt als schnell, weil kompiliert
--beim ersten Aufruf wird ein Plan generiert
--ach nach Neustart immer noch vorhanden

create proc gpName @par1 int
as
Select
INSUPDEL


set statistics io, time on

select city, freight from ku where lastname like 'D%' --Plan wird eruiert und kommt in Speicher


select * from orders where freight <60000 --kein int, ein tinyint

select * from Customers where customerid = 'ALFKI'

select * from customers
	where customerid = 'ALFKI'

select * from customers where customerid = 'ALFKI'

select * from customers where customerid like 'A%'


select * from customers where left(customerid,1) = 'A' --Table Scan
--Seit SQL 2019 können Skalarwertf(), Tabellenwertfunktionen
--in Unterabfragen umgebaut werden
