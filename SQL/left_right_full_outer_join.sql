# left_outer_joining:
	#returns all the data from left table and matched value from right table or null in case of no matching values
    use db_demo2;
    select a.name,a.age,a.loc,b.dat,b.amount from custom_csv a left outer join order_csv b on(a.id=b.id);
    
# right_outer_joining:
	#returns all the data from right table and matched value from left table or null in case of no matching values
    select a.name,a.age,a.loc,b.dat,b.amount from custom_csv a right outer join order_csv b on(a.id=b.id);
    
# full_outer_joining:
	# combines left and right outer joining ie,union of both
    select a.name,a.age,a.loc,b.dat,b.amount from custom_csv a left outer join order_csv b on(a.id=b.id) union 
    select a.name,a.age,a.loc,b.dat,b.amount from custom_csv a right outer join order_csv b on(a.id=b.id);   
    