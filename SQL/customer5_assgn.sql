use db_demo2;

select prof,count(*) as prof_count from customer5 group by prof order by prof_count desc;
select prof,sum(salary) as salary_sum from customer5 group by prof order by salary_sum desc;
select prof,max(salary) as salary_max from customer5 group by prof order by salary_max desc;
select loc,min(salary) from customer5 group by loc;
select prof,avg(age) as age_avg from customer5 group by prof order by age_avg desc;