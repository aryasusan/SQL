use db_demo2;

# 1. Find Row count
select count(*) from txn;

#2. jan month oid,cusno,category,product,state 
 # A. Row count 
	select oid,cid,category,product,state from txn where dat>="01-01-2011" and dat<="01-31-2011";
     select count(*) from txn where dat>="01-01-2011" and dat<="01-31-2011";

#3. July Month oid,cusno,category,product,state 
 #B. Row count
	select oid,cid,category,product,state from txn where dat>="07-01-2011" and dat<="07-31-2011";
     select count(*) from txn where dat>="07-01-2011" and dat<="07-31-2011";
     
#4. Each category [count desc sort]
	select category,count(*) as category_count from txn group by category order by category_count desc;
    
#5. Category full deatils of the max of previous ques
	select * from txn where category="Outdoor Recreation";

#6. Each paymethod count
	select method,count(*) from txn group by method;

#7. jan-july month purchase count [include]
	create view pur_count as select dat, count(*) from txn where dat between "01-31-2011" and "08-01-2011" group by dat;
    select count(*) from pur_count;
    
#8. Each category total amount 
	select category,sum(amount) from txn group by category;
    
#9. Each category maximum amount 
	select category,max(amount) from txn group by category;
    
#10. Each category avg amount 
	select category,avg(amount) from txn group by category;
    
#11.total amount by cash and credit card 
	select method,sum(amount) from txn group by method;
    
#12. Indoor games ,total amount 
	select category,sum(amount) from txn where category="Indoor games" group by category;
    
#13. Each state count
	select state,count(*) from txn group by state;