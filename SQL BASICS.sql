use sakila;

select * from actor;

create table yash1 ( id int , name varchar(20));
insert into yash1 (id ,name) values (6,"shanu");
select * from yash1;



create database regex12;
create table yash3 (name varchar(20), check (id>10));
insert into yash3 (id ,name) values (12,"shanu");
select * from yash3;


create table yash (name varchar(20),check (name=reverse(name)));
insert into yash (name) values ("naman");
select * from yash;
desc actor;

select * from actor;
select * from film_actor;

desc film_actor;


select * from actor;
select * from film_actor;

select actor.actor_id, actor.first_name, film_actor.film_id
 from actor join film_actor 
 where (actor.actor_id = film_actor.actor_id) ;


select *from film_actor;

select  film.title,film_actor.film_id from film join film_actor ;

select a.actor_id , fa.film_id , film.title 
from actor  as a join film_actor as fa 
join film
where (a.actor_id= fa.actor_id) and (fa.film_id = film.film_id);
select * from film;


select * from actor;
select * from film_actor;
select  ac.actor_id , ac.first_name , film_id from
 actor as ac join film_actor as fa
 where (ac.actor_id=fa.actor_id);

use sakila;
select * from actor;

## dcl --> data cantrtol language



create user bob1 identified by 'bob1';
#bob
create user bob identified by 'bob';
select current_user();
select * from mysql.user;
select * from mysql.user where user='bob1';

create user 'sammy' identified by 'password';
create user 'sammy' @192.168.10.1 identified by 'password';
drop user sammy@ '192.168.10.1';

use sakila;

create table sakila.test (id int, name varchar(20));
insert into sakila.test values(10,"sam");
select * from sakila.test;

grant all privileges on sakila.test  to bob;

select * from mysql.user;

flush privileges;
show grants for 'bob';
alter user 'bob'@'localhost' identified with mysql_native_password;

revoke all privileges on sakila.test from bob;
SHOW GRANTS FOR BOB;

select * from sakila.test;
alter table sakila.test add column name1 varchar(20);
grant select(id) on sakila.test to bob;
show grants for 'bob1';

select * from sakila.staff;



-- changing user password-- 
-- 
flush privileges;

-- looking user

alter user 'bob' account lock;

-- to unlock -- 

alter user 'bob' account unlock;

-- --password  expired

-- creating role
create role sales1;
grant select on sakila.* to sales1;

create user "aman" identified  by "aman9";
show grants for "aman9";

-- grants role to user; 
grants sales1 to bob; 
flush privileges;
show grants for bob;

set default role all to bob;


 -- what is windows function why we use it
--  group by and windows function difference
--  subquery
--  correleted subquery 
--  rdbms
--  dbms 
--  type of dbms
--  mysql and sql
--  
--  data type in sql
--  normalization


use sakila;
create table student2 (roolno int unsigned);
insert into student2 values(123);
select * from student2;

create table student4 (id int ,name vARchar(5));
insert into student4 values (10,"sohanlal");
select * from student4; 

select * from payment;
select avg(amount) from payment;

select * from payment where amount> (select avg(amount) from payment);

select * from customer;

-- find the second maximum salary from table

use sakila;
select * from employee;
show tables;
select * from actor;
-- find the second maximum actor id from actor;
select actor_id from actor order by actor_id;
select max(actor_id)  as secondmaxactorid from actor  where actor_id < (select max(actor_id) from actor);
#-- wondow function-- 

use sakila;
select * from actor;
select actor_id, first_name , last_name from actor where actor_id=5;
select * from employees;
drop table employees;
create table employees (id int primary key auto_increment,
dept varchar(20), salary int);
insert into employees(dept , salary) values ("hr",200),
("hr",300),("hr",100),
("marketing",70),("marketing",50),
("marketing",200),("marketing",400), ("marketing",200),
("marketing",600),("dsa",120),
("dsa",40),("dsa",90),("dsa",500);
select * from employees;

use sakila;
select * from payment;
select avg(amount) from payment;
select * from payment where amount > (select avg(amount) from payment);
select * from customer;

select  customer_id from customer;

select first_name , last_name , address_id,customer_id
 from customer where customer_id 
 IN (select  customer_id from customer);
 
 
 use sakila;
create table deprt (dept_no varchar(5),name varchar(30), emp_id int);
insert into deprt values ('d1','hr',1),('d2','mrkt',1) ,('d3','hr',3);
select * from deprt;


create table emplo(emp_id int, name varchar(30));
insert into emplo values (1,'a'),(2,'b'),(3,'c'),(4,"d"),(5,'e');
select * from emplo;


-- by nested query
select * from emplo where emp_id in
 (select emp_id from deprt);
 
 -- by corelated sunquery
 select * from emplo where 
 exists (select emp_id from deprt where emplo.emp_id=deprt.emp_id);
 
 
 -- by the help of joins 
 
 select  * from  emplo, deprt where emplo.emp_id=deprt.emp_id; 
 
 
 
 
   



