use groupbyandaggregate;
create table transactions (Month varchar(20), Day int, Amount int, Branch varchar(20));
insert into transactions values ('feb', 13, 124, 'bangalore');
insert into transactions values ('feb', 17, 20400, 'chicago');
insert into transactions values ('feb', 12, 320, 'sydney');
insert into transactions values ('mar', 22, 9600, 'bangalore');
insert into transactions values ('mar', 16, 5200, 'chicago');
insert into transactions values ('april', 12, 23, 'sydney');
insert into transactions values ('jan', 13, 666, 'bangalore');
insert into transactions values ('may', 2, 3111, 'sydney');
insert into transactions values ('may', 1, 99999, 'paris');
insert into transactions values ('jan', 12, 2000, 'paris');
select * from transactions;
describe transactions;

select * from transactions group by Month;
select Month, sum(Amount) from transactions group by Month;
#select Month, sum(Amount) from transactions group by Month where Branch=('bangalore' or 'chicago');
select Month, Amount, Branch from transactions where Branch = 'bangalore' or Branch ='chicago';

select Month, sum(Amount) from transactions where Branch='bangalore' or Branch= 'chicago' group by Month;

#get the month where sum of amount is less than 1000 in bangalore and chicago branches
select Month, sum(Amount) from transactions where Branch='bangalore' or Branch= 'chicago' group by Month having sum(Amount) < 10000;

# which branch/branches has/have more than 4000 bucks in feb
select Branch, Amount from transactions where Month = 'feb' having Amount > 4000;