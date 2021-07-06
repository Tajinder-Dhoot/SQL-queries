create database subqueriesAndJoin;
use subqueriesandjoin;
create table company (name varchar(20), branch varchar(20), employees int);

insert into company values ('QAClickAcademy', 'US', 20);
insert into company values ('Yahoo', 'IND', 30);
insert into company values ('Google', 'US', 200);
insert into company values ('Google', 'IND', 400);
insert into company values ('Yahoo', 'US', 250);
insert into company values ('QAClickAcademy', 'US', 30);
insert into company values ('Facebook', 'US', 230);
insert into company values ('Google', 'CAD', 210);
insert into company values ('QAClickAcademy', 'IND', 50);
insert into company values ('Google', 'US', 60);
select * from company;

create table established (name varchar(20), year int);
insert into established values ('Google', 1990);
insert into established values ('QAClickAcademy', 2010);
insert into established values ('Yahoo', 1992);
insert into established values ('Facebook', 1992);

select * from established;

# get total employees count of a company which is established in the year 1990
# 1st method
select name, sum(employees) from company group by name;
select name from established where year = 1990;
select name, sum(employees) from company where name in (select name from established where year = 1990)  group by name;

# 2nd Method
#select established.name, employees, year from company join established on company.name = established.name;
select established.name, sum(employees), year from company join established on company.name = established.name where year = 1990 group by name;
select company.name, sum(employees), year from company join established on company.name = established.name group by name having year = 1990;

# get min employees present in abranch for all companies established after 1990
select company.name, min(employees), established.year from company join established on company.name = established.name where year>=1990 group by name;
select company.name, company.employees, branch, year from company join established on company.name = established.name;

