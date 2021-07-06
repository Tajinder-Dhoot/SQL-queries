# create a view of companies with more than avg number of employees

use subqueriesandjoin;

create view google_info as 
select * from company where name='Google';

select * from google_info;

create view company_info as
select name, sum(employees) from company group by name having sum(employees) > (select avg(employees) from company); 

select * from company_info;