use world;
select * from city;
select Name from city where CountryCode='IND';
select Name, Population from city where CountryCode='IND' and Population < 200000 ;
select Name from city where CountryCode like 'A%';
select * from city;
select Name from city where Population like '19%';
select * from city order by Population;
select * from city order by Population desc ;