# the result of a query can be stored in a table called view table
# create view view_tb_name as query;
show databases;
use db_demo2;
create view chennai_data as select * from sample41 where loc='Chennai';
show tables;
select * from chennai_data;
drop view chennai_data;

create view uk_above_50_age_data as select fname,lname,age.prof from customer1 where loc='uk' and age>50;
select * from uk_above_50_age_data;
create view india_age_min_3_data as select fname,lname,age,prof from customer1 where loc='india' order by age limit 3;