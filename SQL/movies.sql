use db_demo2;
select * from movies;


#1. Find row count 
	select count(*) from movies;
    
#2. Remove duplicates and find row count 
	create view movies_distinct as select distinct * from movies;
    select count(*) from movies_distinct;
#3. Sort data set by release year in des order 
	select * from movies order by year desc;
    
#4. Find rating mxm 5 movies name,year,rating 
	select name,year,rating from movies order by rating desc limit 5;
    
#5. Find rating minimum 3 movies name,year,rtaing
	select name,year,rating from movies order by rating limit 3;

#6. Find Each year release movie count [count desc order] 
	select year,count(*) from movies group by year;

#7. Each rating count [count desc order]
	select rating,count(*) from movies group by rating;

#8. 2008 and rating above 3 [collect] 
	select * from movies where year=2008 and rating>3;
	#A. row count 
		select count(*) from movies where year=2008 and rating>3;

#9. Find duration mxm 1 movies name,year,rating,duration 
	select name,year,rating,duration from movies order by duration desc limit 1;

#10. Find rating mnm 1 movies name,year,rating,duration
	select name,year,rating,duration from movies order by rating limit 1;

#11. Rating above 4 and relase year above 2005 
		select * from movies where year=2005 and rating>4;
	#A. Rating mxm movies full data
		select * from movies where year=2005 and rating>4 order by rating desc limit 1;
	
    #B. Rating mnm movies full data 
		select * from movies where year=2005 and rating>4 order by rating limit 1;

#12. 2008 movies count 
		select count(*) from movies where year=2008;

#13. 1975-2000 movies collect 
		select * from movies where year between 1974 and 2001;
	#A. Row count 
		select count(*) from movies where year between 1974 and 2001;

#14. 1975-2000 and rating above 3.5 total row count
		select count(*) from movies where year between 1974 and 2001 and rating>3.5;