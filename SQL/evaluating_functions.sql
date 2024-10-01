# drop duplicate rows: use distinct
# select distinct * from tb_name

# diff b/n drop and truncate:
# drop- structure and values get dropped
# truncate- only values get truncated but not structure-- view_table do not get truncated
# truncate table tb_name;

use db_demo2;
#evaluating Functions:
#	1. Count:
	#	a. total row count - 
			select count(*) from sample41;
	#	b. each column count
			#select col_name,count(*) from tb_name group by col_name;
            
select loc,count(*) from sample41 group by loc;
select prof,count(*) from customer1 group by prof;
select prof,count(*) as prof_count from customer1 group by prof order by prof_count desc;
select loc,count(*) as loc_count from customer1 group by loc order by loc_count desc;

create view india_prof_data as select prof,count(*) as india_prof_count from customer1 where loc='india' group by prof order by india_prof_count desc; 
select * from india_prof_data;

select prof,count(*) as age_prof_count from customer1 where age>50 group by prof order by age_prof_count desc;