CREATE TABLE suzuki (channel_id INT PRIMARY KEY,channel VARCHAR(20),product VARCHAR(20),geography VARCHAR(50),period DATE,sales_pm INT,profit_per_sale INT);
insert into suzuki (channel_id, channel, product, geography, period, sales_pm, profit_per_sale)
values(1, 'avenis', '2-wheeler', 'mg road', '2024-01-01', 1000, 15000),
(2, 'access', '2-wheeler', 'kr-pete', '2024-01-01', 800, 13000),
(3, 'avenis', '2-wheeler', 'gandhinagar', '2024-01-01', 1200, 14000),
(4, 'access', '2-wheeler', 'mg road', '2024-01-01', 950, 16000),
(5, 'avenis', '2-wheeler', 'gandhinagar', '2024-01-01', 700, 11000),
(6,'avenis','2-wheeler','mg road','2024-1-2',1200,13000),
(7,'access','2-wheeler','kr pete','2024-1-2',567,24000),
(8,'access','2-wheeler','kr nagar','2024-01-02',783,4300),
(9,'avenis','2-wheeler','kr pete','2024-01-02',3000,40000),
(10,'access','2-wheeler','mg road','2024-01-02',700,30000);

create table royal_enfield(channel_id int primary key,channel varchar(20),product varchar(20),geography varchar(50),period date,sales_pm int,profit_per_sale int);
insert into royal_enfield values(11,'hunter-350','2-wheeler','mandi mohalla','2024-01-03',1999,40000),
(12,'classic-350','2-wheeler','vv mohalla','2024-01-03',2399,40000),
(13,'hunter-350','2-wheeler','mandi mohalla','2024-01-03',199,34000),
(14,'classic-350','2-wheeler','vv mohalla','2024-01-03',900,41000),
(15,'hunter-350','2-wheeler','mandi mohalla','2024-01-03',199,4000),
(16,'classic-350','2-wheeler','vv mohalla','2024-01-04',2999,84000),
(17,'hunter-350','2-wheeler','mandi mohalla','2024-01-04',1679,50000),
(18,'classic-350','2-wheeler','mandi mohalla','2024-01-04',1999,40000),
(19,'hunter-350','2-wheeler','vv mohalla','2024-01-04',1299,49000),
(20,'classic-350','2-wheeler','mandi mohalla','2024-01-04',1993,48000);

select *from suzuki 
where geography="mg road";

select *from suzuki
where sales_pm>1000;

select channel,channel_id from royal_enfield
where sales_pm<1000;

select channel,channel_id from royal_enfield
where sales_pm<1000;

#logical operators...
select channel,channel_id from royal_enfield
where sales_pm<1000 or sales_pm>500;

select *from royal_enfield
where geography="vv mohalla" and sales_pm>500;

select *from royal_enfield
where channel="classic-350" and not sales_pm<1000;

#aggregation function...
select count(channel_id)
from royal_enfield;

select max(profit_per_sale)
from royal_enfield;

select min(sales_pm)
from suzuki; 

select sum(profit_per_sale)
from suzuki;

#Groupby and aliasing
select geography,sum(sales_pm) as total_sales_pm
from suzuki
group by geography;

#Joins in SQL
#inner joins:-provides the common values from both the tables.
select s.geography,s.sales_pm
from suzuki s 
inner join royal_enfield r on s.geography=r.geography; 

#left outer join:-returns all the rows from left table and matching row from right table.
select s.geography,s.sales_pm
from suzuki s 
left outer join royal_enfield r on s.geography=r.geography; 

#right outer join:-vise verca of left outer join
select s.geography,s.sales_pm
from suzuki s 
right outer join royal_enfield r on s.geography=r.geography; 

#full outer join:-Returns all rows from both tables
select s.geography,s.sales_pm
from suzuki s 
full outer join royal_enfield r on s.geography=r.geography; 

#Union:-combining 2 or more tables to form a new table.
select *
from suzuki 
union
select *
from royal_enfield ;

#distinct:-returns the distinct value.
select distinct(geography)
from royal_enfield;
