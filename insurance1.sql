create database insurance1;
use insurance1; 
create table person (driver_id char(10), name varchar(20), address varchar(30), primary key(driver_id) );
desc person;
create table car(reg_num varchar(10),model varchar(10),year int,primary key(reg_num));
desc car;
create table accident(report_num int,accident_date date,location varchar(20),primary key(report_num));
desc accident;
create table owns(driver_id char(10),reg_num varchar(10),primary key(driver_id,reg_num),
foreign key(driver_id) references person(driver_id), foreign key(reg_num) references car(reg_num));
desc owns;
create table participated(driver_id char(10),reg_num varchar(10),report_num int,damage_amount int,
primary key(driver_id,reg_num,report_num),
foreign key(driver_id) references person(driver_id), foreign key(reg_num) references car(reg_num),
foreign key(report_num) references accident(report_num));
desc participated;
insert into person values('A01','Richard','Srinivas nagar'),('A02','Pradeep','Rajaji nagar'),('A03','Smith','Ashok nagar'),
('A04','Venu','N R Colony'),('A05','Jhon','Hanumanth nagar');
select * from person;
insert into car values('KA052250','Indica',1990),('KA031181','Lancer',1957),('KA095477','Toyota',1998),
('KA053408','Audi',2008),('KA041702','Honda',2005);
select * from car;
insert into accident values (11,'2003-01-01','Mysore Road'),(12,'2004-02-02','South end Circle'),(13,'2003-01-21','Bull temple Road'),
(14,'2008-02-17','Mysore Road'),(15,'2004-03-05','Kanakpura Road');
select * from accident;
insert into owns values('A01','KA052250'),('A02','KA053408'),('A03','KA031181'),('A04','KA095477'),('A05','KA041702');
select * from owns;
insert into participated values('A01','KA052250',11,10000),('A02','KA053408',12,50000),('A03','KA095477',13,25000),('A04','KA031181',14,3000),
('A05','KA041702',15,5000);
select * from participated;



select accident_date , location from accident;
update participated set damage_amount=25000 where reg_num='KA053408' and report_num=12;



insert into accident values(16,'2008-03-08','Domlur');

select * from accident;
select * from participated where damage_amount between 5000 and 25000;
select * from car where model='Honda' or year between 1990 and 1998;
select * from person where name like '%d%';

select * from owns where reg_num not in('KA053408','KA095477');
select * from participated where damage_amount>=10000;




