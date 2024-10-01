#select group_col_name,sum(col_name) from tb_name group by group_col_name;

use db_demo2;
#sum
select year,sum(temp) from temperature_windows group by year;

#average
select year,avg(temp) from temperature_windows group by year;

