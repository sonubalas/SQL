# window function

use sakila;
create table employees (id int primary key auto_increment,
dept varchar(20), salary int);
insert into employees(dept , salary) values ("hr",200),
("hr",300),("hr",100),
("marketing",70),("marketing",50),
("marketing",200),("marketing",400), ("marketing",200),
("marketing",600),("dsa",120),
("dsa",40),("dsa",90),("dsa",500);
select * from employees;


select sum(salary) from employees;

select * ,(select sum(salary) from employees) 
from employees;

select *, sum(salary) over() from employees;
 
 select *, sum(salary) over(partition by dept) from employees;
 
 select sum(salary) from employees where dept="hr";
 
 select * , sum(salary)  over(order by salary) from employees;
 
 
 select * , sum(salary)  over(partition by dept order by salary) from employees;
 
 select *, 
 rank() over (order by salary desc) from employees;
 
select *, 
rank() over(order by salary desc) , 
dense_rank() over(order by salary desc), 
from employees;

select *, lead(salary,2) over(partition by dept) from employees;

select dept , salary, sum(salary) over(order by salary) from employees;

 select * from employees;
 
 select *,  rank() over(order by salary desc)  ,
 dense_rank ()  over (order by salary desc)  as col from employees;
 
 select *, rank() over( order by salary desc),
 dense_rank() over (order by salary desc) ,
 row_number() over(order by salary desc)  from employees;
 
 use sakila;
 select * from actor;
 
 
 select * from film_actor;
 
 
 select * from film_actor;
 
 select actor.actor_id first_name, film_id
 from actor join film_actor
 where actor.actor_id=film_actor.actor_id;
 
 create view actor_view as 
 select actor.actor_id, first_name , film_id
 from actor join  film_actor 
 where actor.actor_id=film_actor.actor_id;
 
 select * from actor_view;
 
select * from actor;
select * from film_actor;
select * from film;

create table test2(eid int, name varchar(20));
insert into test2 values (10,"xyz"),(20,"aman");
select * from test2;

create table test2(eid int, name varchar(20));
insert into test2 values (10,"xyz"),(20,"aman");
create view test2v ;
select * from test2;

use sakila;
create or replace view aview as 
select a.actor_id , f.film_id , fm.title 
from actor as a join film_actor as f 
join film fm 
where a.actor_id=f.actor_id and f.film_id=fm.film_id;
select  * from;

 create table student9 (sid int, sname varchar(20));
 insert into student9 values(10,"harsh");
  CREATE VIEW view_student9 AS
SELECT * FROM student9;

SELECT * FROM view_student9;

create table test5 (id int ,name  varchar(25));
insert into test5 values(10,"shruti");
create view view_test as 
select * from test5;

-- Create the table
CREATE TABLE test5 (
    id INT,
    name VARCHAR(25)
);

-- Insert data into the table
INSERT INTO test5 VALUES
(10, 'shruti'),
(11, 'shruti'),
(12, 'ananya'),
(13, 'ananya'),
(14, 'shruti');

-- Create a GROUP BY view to count the occurrences of each name
CREATE VIEW view_test_grouped AS
SELECT 
    name,
    COUNT(*) AS name_count
FROM test5
GROUP BY name;

-- Query the view
SELECT * FROM view_test_grouped;

create table test2 (id int ,name  varchar(25));
insert into test2 values(10,"shruti");
select * from test2; 
create database regex123;
use regex123;
create table employee1(id int,name varchar(30));
insert into employee1 values (10,'sam');
select * from employee;



use sakila;
select * from employees;
#find the second highest salary-- 
#find the third highest salary from employyes tables;

select max(salary) from employees
where salary < (select max(salary) from employees);


 
 
 
