create database db_demo1;
show databases;
use db_demo1;
create table employee(id int, fname varchar(30),lname varchar(30), age int,prof varchar(30),salary int);
insert into employee values(1,'arya','susan',31,'ds',50000),(2,'aryan','susa',34,'ps',30000),(3,'arbab','jacob',23,'test',25000),(4,'basil','peter',23,'java',35000);
select * from employee;

create database db_demo2;
use db_demo2;
show tables;
select * from sample41;

# collect only required column
select fname,age,loc from sample41;

# collect only required rows - limit operator
select * from sample41 limit 3; #outputs first 3 rows

# collect first 3 rows- fname ,age,phno  
select fname,age,phno from sample41 limit 3;

show tables;
select * from customer1;
select fname,lname,age,prof from customer1 limit 25;

#collect data that satisfies a condition - use where >,<,<=,>=,=,!=
select * from customer1 where age>55;

select fname,lname,age,phno from sample41 where age=21;
select fname,lname,age from sample41 where loc='Chennai';
select fname,lname,age,phno from sample41 where age>23 and loc='Chennai';

