# max value of a column based on another; max salary of each prof
# select group_col_name,max(col_name) from tb_name group by group_col_name

use db_demo2;
select prof,max(age) from customer1 group by prof;
select prof,max(age) as age_max from customer1 group by prof order by age_max desc;

show tables;
select year,max(temp) from temperature_windows group by year;

select year,min(temp) from temperature_windows group by year;