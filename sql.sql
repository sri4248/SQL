# 7/7/2026
use d20;

desc app;
select * from app;
insert into app(name,age)values('instagram',5),('whatsapp',10),('facebook',0);
drop table app;
create table app(
sno int unique auto_increment,
name varchar(50),
age int
);
insert into app(name,age)values('instagram',5),('whatsapp',10),('facebook',0);
select * from app;
# if we perform delete operation auto_increment does'nt perform well
create table instagram(
id int unique auto_increment,
user_name varchar(50),
bio varchar(100)
)auto_increment=1000;
select * from instagram;
insert into instagram(user_name,bio)values('mom_princes','my life my rules'),('model_chintu','sukhibhava');

# clauses;

