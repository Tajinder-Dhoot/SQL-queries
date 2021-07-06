create database jointables;
use jointables;
create table citizens (name varchar(20), age int, exp int);
insert into citizens values ('Tajinder', 26, 2);
insert into citizens values ('Prabhsimran', 25, 1); 
insert into citizens values ('Surajpal', 24, 3);
insert into citizens values ('Manpreet', 24, 3);
insert into citizens values ('Manjot', 24, 3);
update citizens set name='Tajinder' where name='Tajinder Singh';
select * from citizens;

create table citizensloc (name varchar(20), location varchar(20));
insert into citizensloc values ('Prabhsimran', 'hoshiarpur');
insert into citizensloc values ('Manjot', 'jalandhar');
insert into citizensloc values ('Tajinder', 'dhoot kalan');
insert into citizensloc values ('Surajpal', 'saidpur');
insert into citizensloc values ('Manpreet', 'noorpur');

select * from citizensloc;

# join both tables 
select * from citizens as c join citizensloc as cl on c.name = cl.name;
select c.name, c.age, c.exp, cl.location from citizens as c join citizensloc as cl on c.name = cl.name;
select c.name, c.age, c.exp, cl.location from citizens as c join citizensloc as cl on c.name = cl.name where location='noorpur';
select c.name, c.age, c.exp, cl.location from citizens as c join citizensloc as cl on c.name = cl.name where name='Surajpal';
select c.name, c.age, c.exp, cl.location from citizens as c join citizensloc as cl on c.name = cl.name having location='noorpur';

select citizens.name, age, exp, location from citizens join citizensloc on citizens.name = citizensloc.name;