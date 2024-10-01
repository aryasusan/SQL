use db_demo2;
show tables;

# for sorting use order by
# select * from tb_name order by col_name asc; --default, need not pass asc
# select * from tb_name order by col_name desc;

select * from sample41 order by age desc;
select * from sample41 order by age;

use db_demo2;
select fname,lname,phno from sample41 order by age desc limit 2;
select fname,lname,phno from sample41 order by age limit 2;
select fname,lname,phno from sample41 where loc='Chennai' order by age desc limit 1;

