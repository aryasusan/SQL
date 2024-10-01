use db_demo2;

# 1. Find Row count
select count(*) from customer1;

# 2. Remove duplicates rows and find total row count
create view unique_data as select distinct * from customer1;
select count(*) from unique_data; 

# 3. Age maximum 10 fname,lname,prof,loc 
select fname,lname,prof,loc from customer1 order by age desc limit 10;

# 4. Age minimum 5 employees fname,lname,prof,loc
select fname,lname,prof,loc from customer1 order by age limit 5;

# 5. Each location count [count desc order]
select loc,count(*) as loc_count from customer1 group by loc order by loc_count desc;

# 6. Full data
select * from customer1;

# 7. Each age group count [age desc order]
select age,count(*) as age_count from customer1 group by age order by age_count desc;

# 8. Each profession count [count desc order]
select prof,count(*) as prof_count from customer1 group by prof order by prof_count desc;

# 9. India work 
#		A. Row count
		select count(*) from customer1 where loc='india';
        
#		B. Each profession count [count desc order] 
		select prof,count(*) as prof_India_count from customer1 where loc='india' group by prof order by prof_india_count desc;
        
#		C. Age mxm 3 employees fname,lname,age,prof
		select fname,lname,age,prof from customer1 where loc='india' order by age desc limit 3;
        
#		D. Age minimum 3 employees fname,lname,age,prof 
		select fname,lname,age,prof from customer1 where loc='india' order by age limit 3;
        
#		E. age above 40 full data
		select * from customer1 where loc='india' and age>40;
        
#		F. age range 30 to 40 [profession count] 
		select prof,count(*) from customer1 where loc='india' and 30<age<40 group by prof;
        
#10. us work 
#		A. Row count 
		select count(*) from customer1 where loc='us';
        
#		B. Each age group count 
		select age,count(*) from customer1 where loc='us' group by age;
        
#		C. Each profession count [count desc]
		select prof,count(*) as prof_us_count from customer1 where loc='us' group by prof order by prof_us_count desc;
        
#		D. Civil engineer dept and age above 30
		select * from customer1 where loc='us' and age>30 and prof='Civil engineer';
